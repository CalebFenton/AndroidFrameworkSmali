.class public final Landroid/icu/impl/UCaseProps;
.super Ljava/lang/Object;
.source "UCaseProps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UCaseProps$IsAcceptable;,
        Landroid/icu/impl/UCaseProps$ContextIterator;
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
    .line 127
    const/16 v1, 0x100

    #@3
    new-array v1, v1, [B

    #@5
    fill-array-data v1, :array_0

    #@8
    sput-object v1, Landroid/icu/impl/UCaseProps;->flagsOffset:[B

    #@a
    .line 1247
    new-array v1, v3, [I

    #@c
    const/4 v2, 0x0

    #@d
    aput v3, v1, v2

    #@f
    sput-object v1, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    #@11
    .line 1257
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    sput-object v1, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@18
    .line 1429
    :try_start_0
    new-instance v1, Landroid/icu/impl/UCaseProps;

    #@1a
    invoke-direct {v1}, Landroid/icu/impl/UCaseProps;-><init>()V

    #@1d
    sput-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 33
    return-void

    #@20
    .line 1430
    :catch_0
    move-exception v0

    #@21
    .line 1431
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    #@23
    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@26
    throw v1

    #@27
    .line 127
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
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    const-string/jumbo v1, "ucase.icu"

    #@6
    invoke-static {v1}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@9
    move-result-object v0

    #@a
    .line 40
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Landroid/icu/impl/UCaseProps;->readData(Ljava/nio/ByteBuffer;)V

    #@d
    .line 38
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
    .line 625
    if-eqz p1, :cond_0

    #@3
    aget v1, p1, v3

    #@5
    .local v1, "result":I
    if-eqz v1, :cond_0

    #@7
    .line 626
    return v1

    #@8
    .line 629
    .end local v1    # "result":I
    :cond_0
    const/4 v1, 0x1

    #@9
    .line 631
    .restart local v1    # "result":I
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 632
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
    .line 633
    :cond_1
    const/4 v1, 0x2

    #@32
    .line 638
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    #@34
    .line 639
    aput v1, p1, v3

    #@36
    .line 641
    :cond_3
    return v1

    #@37
    .line 634
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
    .line 635
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
    .line 1365
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
    .line 119
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
    .line 178
    and-int/lit16 v2, p1, 0x100

    #@2
    if-nez v2, :cond_0

    #@4
    .line 179
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    #@7
    move-result v2

    #@8
    add-int/2addr p3, v2

    #@9
    .line 180
    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@b
    aget-char v1, v2, p3

    #@d
    .line 186
    .local v1, "value":I
    :goto_0
    return v1

    #@e
    .line 182
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
    .line 183
    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@17
    add-int/lit8 v0, p3, 0x1

    #@19
    .end local p3    # "excOffset":I
    .local v0, "excOffset":I
    aget-char v1, v2, p3

    #@1b
    .line 184
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
    .line 164
    and-int/lit16 v1, p1, 0x100

    #@2
    if-nez v1, :cond_0

    #@4
    .line 165
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    #@7
    move-result v1

    #@8
    add-int/2addr p3, v1

    #@9
    .line 166
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@b
    aget-char v1, v1, p3

    #@d
    int-to-long v2, v1

    #@e
    .line 172
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
    .line 168
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
    .line 169
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
    .line 170
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
    .line 1345
    and-int/lit8 v0, p0, 0x7

    #@2
    return v0
.end method

.method private static final getTypeFromProps(I)I
    .locals 1
    .param p0, "props"    # I

    #@0
    .prologue
    .line 1341
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
    .line 147
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
    .line 648
    if-nez p1, :cond_0

    #@3
    .line 649
    return v3

    #@4
    .line 652
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
    .line 653
    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    #@10
    move-result v1

    #@11
    .line 654
    .local v1, "type":I
    and-int/lit8 v2, v1, 0x4

    #@13
    if-nez v2, :cond_1

    #@15
    .line 656
    if-eqz v1, :cond_2

    #@17
    .line 657
    const/4 v2, 0x1

    #@18
    return v2

    #@19
    .line 659
    :cond_2
    return v3

    #@1a
    .line 663
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
    .line 769
    if-nez p1, :cond_0

    #@4
    .line 770
    return v3

    #@5
    .line 773
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
    .line 774
    const/16 v2, 0x307

    #@10
    if-ne v0, v2, :cond_2

    #@12
    .line 775
    return v4

    #@13
    .line 777
    :cond_2
    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    #@16
    move-result v1

    #@17
    .line 778
    .local v1, "dotType":I
    const/16 v2, 0x60

    #@19
    if-eq v1, v2, :cond_1

    #@1b
    .line 779
    return v3

    #@1c
    .line 783
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
    .line 748
    if-nez p1, :cond_0

    #@4
    .line 749
    return v3

    #@5
    .line 752
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
    .line 753
    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    #@11
    move-result v1

    #@12
    .line 754
    .local v1, "dotType":I
    const/16 v2, 0x40

    #@14
    if-ne v1, v2, :cond_2

    #@16
    .line 755
    return v4

    #@17
    .line 756
    :cond_2
    const/16 v2, 0x60

    #@19
    if-eq v1, v2, :cond_1

    #@1b
    .line 757
    return v3

    #@1c
    .line 761
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
    .line 671
    if-nez p1, :cond_0

    #@3
    .line 672
    return v3

    #@4
    .line 675
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
    .line 676
    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    #@11
    move-result v1

    #@12
    .line 677
    .local v1, "dotType":I
    const/16 v2, 0x20

    #@14
    if-ne v1, v2, :cond_2

    #@16
    .line 678
    const/4 v2, 0x1

    #@17
    return v2

    #@18
    .line 679
    :cond_2
    const/16 v2, 0x60

    #@1a
    if-eq v1, v2, :cond_1

    #@1c
    .line 680
    return v3

    #@1d
    .line 684
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
    .line 726
    if-nez p1, :cond_0

    #@3
    .line 727
    return v3

    #@4
    .line 730
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
    .line 731
    const/16 v2, 0x49

    #@10
    if-ne v0, v2, :cond_2

    #@12
    .line 732
    const/4 v2, 0x1

    #@13
    return v2

    #@14
    .line 734
    :cond_2
    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    #@17
    move-result v1

    #@18
    .line 735
    .local v1, "dotType":I
    const/16 v2, 0x60

    #@1a
    if-eq v1, v2, :cond_1

    #@1c
    .line 736
    return v3

    #@1d
    .line 740
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
    .line 123
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
    .line 45
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
    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@10
    move-result v0

    #@11
    .line 50
    .local v0, "count":I
    const/16 v4, 0x10

    #@13
    if-ge v0, v4, :cond_0

    #@15
    .line 51
    new-instance v4, Ljava/io/IOException;

    #@17
    const-string/jumbo v5, "indexes[0] too small in ucase.icu"

    #@1a
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v4

    #@1e
    .line 53
    :cond_0
    new-array v4, v0, [I

    #@20
    iput-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    #@22
    .line 55
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    #@24
    aput v0, v4, v6

    #@26
    .line 56
    const/4 v2, 0x1

    #@27
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@29
    .line 57
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    #@2b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@2e
    move-result v5

    #@2f
    aput v5, v4, v2

    #@31
    .line 56
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 61
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    #@37
    move-result-object v4

    #@38
    iput-object v4, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@3a
    .line 62
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    #@3c
    const/4 v5, 0x2

    #@3d
    aget v1, v4, v5

    #@3f
    .line 63
    .local v1, "expectedTrieLength":I
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@41
    invoke-virtual {v4}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    #@44
    move-result v3

    #@45
    .line 64
    .local v3, "trieLength":I
    if-le v3, v1, :cond_2

    #@47
    .line 65
    new-instance v4, Ljava/io/IOException;

    #@49
    const-string/jumbo v5, "ucase.icu: not enough bytes for the trie"

    #@4c
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v4

    #@50
    .line 68
    :cond_2
    sub-int v4, v1, v3

    #@52
    invoke-static {p1, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    #@55
    .line 71
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    #@57
    const/4 v5, 0x3

    #@58
    aget v0, v4, v5

    #@5a
    .line 72
    if-lez v0, :cond_3

    #@5c
    .line 73
    new-array v4, v0, [C

    #@5e
    iput-object v4, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@60
    .line 74
    const/4 v2, 0x0

    #@61
    :goto_1
    if-ge v2, v0, :cond_3

    #@63
    .line 75
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@68
    move-result v5

    #@69
    aput-char v5, v4, v2

    #@6b
    .line 74
    add-int/lit8 v2, v2, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 80
    :cond_3
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    #@70
    const/4 v5, 0x4

    #@71
    aget v0, v4, v5

    #@73
    .line 81
    if-lez v0, :cond_4

    #@75
    .line 82
    new-array v4, v0, [C

    #@77
    iput-object v4, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@79
    .line 83
    const/4 v2, 0x0

    #@7a
    :goto_2
    if-ge v2, v0, :cond_4

    #@7c
    .line 84
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@7e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    #@81
    move-result v5

    #@82
    aput-char v5, v4, v2

    #@84
    .line 83
    add-int/lit8 v2, v2, 0x1

    #@86
    goto :goto_2

    #@87
    .line 43
    :cond_4
    return-void
.end method

.method private static final slotOffset(II)B
    .locals 2
    .param p0, "flags"    # I
    .param p1, "index"    # I

    #@0
    .prologue
    .line 150
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
    .line 370
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v4

    #@5
    .line 371
    .local v4, "length":I
    sub-int/2addr p3, v4

    #@6
    .line 372
    const/4 v2, 0x0

    #@7
    .line 374
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
    .line 375
    .local v0, "c1":I
    iget-object v6, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@f
    add-int/lit8 v5, p2, 0x1

    #@11
    .end local p2    # "unfoldOffset":I
    .local v5, "unfoldOffset":I
    aget-char v1, v6, p2

    #@13
    .line 376
    .local v1, "c2":I
    if-nez v1, :cond_0

    #@15
    .line 377
    const/4 v6, 0x1

    #@16
    return v6

    #@17
    .line 379
    :cond_0
    sub-int/2addr v0, v1

    #@18
    .line 380
    if-eqz v0, :cond_1

    #@1a
    .line 381
    return v0

    #@1b
    .line 383
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
    .line 386
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
    .line 387
    :cond_3
    return v7

    #@2b
    .line 389
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
    .line 965
    move/from16 v10, p1

    #@2
    .line 966
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
    .line 967
    .local v9, "props":I
    invoke-static {v9}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@f
    move-result v11

    #@10
    if-nez v11, :cond_2

    #@12
    .line 968
    invoke-static {v9}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@15
    move-result v11

    #@16
    const/4 v14, 0x1

    #@17
    if-ne v11, v14, :cond_0

    #@19
    .line 969
    invoke-static {v9}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@1c
    move-result v11

    #@1d
    add-int v10, p1, v11

    #@1f
    .line 1050
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
    .line 972
    .restart local v10    # "result":I
    :cond_2
    invoke-static {v9}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@28
    move-result v2

    #@29
    .line 973
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
    .line 976
    .local v5, "excWord":I
    move v4, v3

    #@32
    .line 978
    .local v4, "excOffset2":I
    and-int/lit16 v11, v5, 0x4000

    #@34
    if-eqz v11, :cond_6

    #@36
    .line 980
    invoke-static/range {p4 .. p5}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Landroid/icu/util/ULocale;[I)I

    #@39
    move-result v8

    #@3a
    .line 982
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
    .line 994
    const/16 v11, 0x130

    #@45
    return v11

    #@46
    .line 995
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
    .line 1005
    const/4 v11, 0x0

    #@5a
    return v11

    #@5b
    :cond_4
    move v2, v3

    #@5c
    .line 1039
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
    .line 1040
    const/4 v7, 0x3

    #@66
    .line 1047
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
    .line 1009
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
    .line 1010
    const/4 v11, 0x7

    #@75
    move-object/from16 v0, p0

    #@77
    invoke-direct {v0, v5, v11, v3}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    #@7a
    move-result-wide v12

    #@7b
    .line 1011
    .local v12, "value":J
    long-to-int v11, v12

    #@7c
    const v14, 0xffff

    #@7f
    and-int v6, v11, v14

    #@81
    .line 1014
    .local v6, "full":I
    const/16 v11, 0x20

    #@83
    shr-long v14, v12, v11

    #@85
    long-to-int v11, v14

    #@86
    add-int/lit8 v2, v11, 0x1

    #@88
    .line 1017
    .end local v3    # "excOffset":I
    .restart local v2    # "excOffset":I
    and-int/lit8 v11, v6, 0xf

    #@8a
    add-int/2addr v2, v11

    #@8b
    .line 1018
    shr-int/lit8 v6, v6, 0x4

    #@8d
    .line 1019
    and-int/lit8 v11, v6, 0xf

    #@8f
    add-int/2addr v2, v11

    #@90
    .line 1020
    shr-int/lit8 v6, v6, 0x4

    #@92
    .line 1022
    if-eqz p6, :cond_7

    #@94
    .line 1023
    and-int/lit8 v6, v6, 0xf

    #@96
    .line 1030
    :goto_3
    if-eqz v6, :cond_5

    #@98
    .line 1032
    move-object/from16 v0, p0

    #@9a
    iget-object v11, v0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@9c
    move-object/from16 v0, p3

    #@9e
    invoke-virtual {v0, v11, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@a1
    .line 1035
    return v6

    #@a2
    .line 1026
    :cond_7
    and-int/lit8 v11, v6, 0xf

    #@a4
    add-int/2addr v2, v11

    #@a5
    .line 1027
    shr-int/lit8 v11, v6, 0x4

    #@a7
    and-int/lit8 v6, v11, 0xf

    #@a9
    goto :goto_3

    #@aa
    .line 1041
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
    .line 1043
    const/4 v7, 0x2

    #@b2
    .restart local v7    # "index":I
    goto :goto_2

    #@b3
    .line 1045
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
    .line 263
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 283
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
    .line 284
    .local v12, "props":I
    invoke-static {v12}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@10
    move-result v13

    #@11
    if-nez v13, :cond_1

    #@13
    .line 285
    invoke-static {v12}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@16
    move-result v13

    #@17
    if-eqz v13, :cond_0

    #@19
    .line 287
    invoke-static {v12}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@1c
    move-result v4

    #@1d
    .line 288
    .local v4, "delta":I
    if-eqz v4, :cond_0

    #@1f
    .line 289
    add-int v13, p1, v4

    #@21
    move-object/from16 v0, p2

    #@23
    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@26
    .line 254
    .end local v4    # "delta":I
    :cond_0
    return-void

    #@27
    .line 266
    .end local v12    # "props":I
    :sswitch_0
    const/16 v13, 0x69

    #@29
    move-object/from16 v0, p2

    #@2b
    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@2e
    .line 267
    return-void

    #@2f
    .line 269
    :sswitch_1
    const/16 v13, 0x49

    #@31
    move-object/from16 v0, p2

    #@33
    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@36
    .line 270
    return-void

    #@37
    .line 273
    :sswitch_2
    const-string/jumbo v13, "i\u0307"

    #@3a
    move-object/from16 v0, p2

    #@3c
    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@3f
    .line 274
    return-void

    #@40
    .line 277
    :sswitch_3
    return-void

    #@41
    .line 297
    .restart local v12    # "props":I
    :cond_1
    invoke-static {v12}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@44
    move-result v5

    #@45
    .line 299
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
    .line 302
    .local v8, "excWord":I
    move v7, v6

    #@4e
    .line 305
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
    .line 306
    invoke-static {v8, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@56
    move-result v13

    #@57
    if-eqz v13, :cond_2

    #@59
    .line 307
    move v5, v7

    #@5a
    .line 308
    move-object/from16 v0, p0

    #@5c
    invoke-direct {v0, v8, v10, v5}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@5f
    move-result p1

    #@60
    .line 309
    move-object/from16 v0, p2

    #@62
    move/from16 v1, p1

    #@64
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@67
    .line 305
    :cond_2
    add-int/lit8 v10, v10, 0x1

    #@69
    goto :goto_0

    #@6a
    .line 314
    :cond_3
    const/4 v13, 0x6

    #@6b
    invoke-static {v8, v13}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@6e
    move-result v13

    #@6f
    if-eqz v13, :cond_6

    #@71
    .line 315
    move v5, v7

    #@72
    .line 316
    const/4 v13, 0x6

    #@73
    move-object/from16 v0, p0

    #@75
    invoke-direct {v0, v8, v13, v5}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    #@78
    move-result-wide v14

    #@79
    .line 317
    .local v14, "value":J
    long-to-int v13, v14

    #@7a
    and-int/lit8 v2, v13, 0xf

    #@7c
    .line 318
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
    .line 325
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
    .line 326
    move v5, v7

    #@8d
    .line 327
    const/4 v13, 0x7

    #@8e
    move-object/from16 v0, p0

    #@90
    invoke-direct {v0, v8, v13, v5}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    #@93
    move-result-wide v14

    #@94
    .line 328
    .restart local v14    # "value":J
    long-to-int v9, v14

    #@95
    .line 331
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
    .line 333
    const v13, 0xffff

    #@a1
    and-int/2addr v9, v13

    #@a2
    .line 336
    and-int/lit8 v13, v9, 0xf

    #@a4
    add-int/2addr v5, v13

    #@a5
    .line 337
    shr-int/lit8 v9, v9, 0x4

    #@a7
    .line 340
    and-int/lit8 v11, v9, 0xf

    #@a9
    .line 341
    .local v11, "length":I
    if-eqz v11, :cond_4

    #@ab
    .line 342
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
    .line 343
    add-int/2addr v5, v11

    #@be
    .line 347
    :cond_4
    shr-int/lit8 v9, v9, 0x4

    #@c0
    .line 348
    and-int/lit8 v13, v9, 0xf

    #@c2
    add-int/2addr v5, v13

    #@c3
    .line 349
    shr-int/lit8 v9, v9, 0x4

    #@c5
    .line 350
    add-int/2addr v5, v9

    #@c6
    .line 352
    move v3, v5

    #@c7
    .line 356
    .end local v9    # "fullLength":I
    .end local v11    # "length":I
    .end local v14    # "value":J
    :cond_5
    const/4 v10, 0x0

    #@c8
    :goto_2
    if-ge v10, v2, :cond_0

    #@ca
    .line 357
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
    .line 358
    move-object/from16 v0, p2

    #@e1
    move/from16 v1, p1

    #@e3
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@e6
    .line 356
    invoke-static/range {p1 .. p1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@e9
    move-result v13

    #@ea
    add-int/2addr v10, v13

    #@eb
    goto :goto_2

    #@ec
    .line 320
    .end local v2    # "closureLength":I
    .end local v3    # "closureOffset":I
    :cond_6
    const/4 v2, 0x0

    #@ed
    .line 321
    .restart local v2    # "closureLength":I
    const/4 v3, 0x0

    #@ee
    .restart local v3    # "closureOffset":I
    goto :goto_1

    #@ef
    .line 263
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
    .line 101
    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 103
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
    .line 99
    .end local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_0
    return-void

    #@17
    .line 104
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
    .line 407
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@2
    if-eqz v10, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    .line 408
    :cond_0
    const/4 v10, 0x0

    #@7
    return v10

    #@8
    .line 410
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    .line 411
    .local v2, "length":I
    const/4 v10, 0x1

    #@d
    if-gt v2, v10, :cond_2

    #@f
    .line 419
    const/4 v10, 0x0

    #@10
    return v10

    #@11
    .line 422
    :cond_2
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@13
    const/4 v11, 0x0

    #@14
    aget-char v8, v10, v11

    #@16
    .line 423
    .local v8, "unfoldRows":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@18
    const/4 v11, 0x1

    #@19
    aget-char v7, v10, v11

    #@1b
    .line 424
    .local v7, "unfoldRowWidth":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    #@1d
    const/4 v11, 0x2

    #@1e
    aget-char v9, v10, v11

    #@20
    .line 427
    .local v9, "unfoldStringWidth":I
    if-le v2, v9, :cond_3

    #@22
    .line 429
    const/4 v10, 0x0

    #@23
    return v10

    #@24
    .line 433
    :cond_3
    const/4 v5, 0x0

    #@25
    .line 434
    .local v5, "start":I
    move v3, v8

    #@26
    .line 435
    .local v3, "limit":I
    :goto_0
    if-ge v5, v3, :cond_7

    #@28
    .line 436
    add-int v10, v5, v3

    #@2a
    div-int/lit8 v1, v10, 0x2

    #@2c
    .line 437
    .local v1, "i":I
    add-int/lit8 v10, v1, 0x1

    #@2e
    mul-int v6, v10, v7

    #@30
    .line 438
    .local v6, "unfoldOffset":I
    invoke-direct {p0, p1, v6, v9}, Landroid/icu/impl/UCaseProps;->strcmpMax(Ljava/lang/String;II)I

    #@33
    move-result v4

    #@34
    .line 440
    .local v4, "result":I
    if-nez v4, :cond_5

    #@36
    .line 444
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
    .line 445
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
    .line 446
    .local v0, "c":I
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@4d
    .line 447
    invoke-virtual {p0, v0, p2}, Landroid/icu/impl/UCaseProps;->addCaseClosure(ILandroid/icu/text/UnicodeSet;)V

    #@50
    .line 444
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@53
    move-result v10

    #@54
    add-int/2addr v1, v10

    #@55
    goto :goto_1

    #@56
    .line 449
    .end local v0    # "c":I
    :cond_4
    const/4 v10, 0x1

    #@57
    return v10

    #@58
    .line 450
    :cond_5
    if-gez v4, :cond_6

    #@5a
    .line 451
    move v3, v1

    #@5b
    goto :goto_0

    #@5c
    .line 453
    :cond_6
    add-int/lit8 v5, v1, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 457
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
    .line 1115
    iget-object v5, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@9
    invoke-virtual {v5, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@c
    move-result v4

    #@d
    .line 1116
    .local v4, "props":I
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@10
    move-result v5

    #@11
    if-nez v5, :cond_1

    #@13
    .line 1117
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@16
    move-result v5

    #@17
    const/4 v6, 0x2

    #@18
    if-lt v5, v6, :cond_0

    #@1a
    .line 1118
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@1d
    move-result v5

    #@1e
    add-int/2addr p1, v5

    #@1f
    .line 1155
    :cond_0
    :goto_0
    return p1

    #@20
    .line 1121
    :cond_1
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@23
    move-result v0

    #@24
    .line 1122
    .local v0, "excOffset":I
    iget-object v5, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@26
    add-int/lit8 v1, v0, 0x1

    #@28
    .end local v0    # "excOffset":I
    .local v1, "excOffset":I
    aget-char v2, v5, v0

    #@2a
    .line 1124
    .local v2, "excWord":I
    const v5, 0x8000

    #@2d
    and-int/2addr v5, v2

    #@2e
    if-eqz v5, :cond_5

    #@30
    .line 1126
    and-int/lit16 v5, p2, 0xff

    #@32
    if-nez v5, :cond_3

    #@34
    .line 1128
    if-ne p1, v7, :cond_2

    #@36
    .line 1130
    return v8

    #@37
    .line 1131
    :cond_2
    if-ne p1, v9, :cond_5

    #@39
    .line 1133
    return p1

    #@3a
    .line 1137
    :cond_3
    if-ne p1, v7, :cond_4

    #@3c
    .line 1139
    const/16 v5, 0x131

    #@3e
    return v5

    #@3f
    .line 1140
    :cond_4
    if-ne p1, v9, :cond_5

    #@41
    .line 1142
    return v8

    #@42
    .line 1146
    :cond_5
    const/4 v5, 0x1

    #@43
    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@46
    move-result v5

    #@47
    if-eqz v5, :cond_6

    #@49
    .line 1147
    const/4 v3, 0x1

    #@4a
    .line 1153
    .local v3, "index":I
    :goto_1
    invoke-direct {p0, v2, v3, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@4d
    move-result p1

    #@4e
    goto :goto_0

    #@4f
    .line 1148
    .end local v3    # "index":I
    :cond_6
    invoke-static {v2, v6}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@52
    move-result v5

    #@53
    if-eqz v5, :cond_7

    #@55
    .line 1149
    const/4 v3, 0x0

    #@56
    .restart local v3    # "index":I
    goto :goto_1

    #@57
    .line 1151
    .end local v3    # "index":I
    :cond_7
    return p1
.end method

.method public final getDotType(I)I
    .locals 3
    .param p1, "c"    # I

    #@0
    .prologue
    .line 472
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v0

    #@6
    .line 473
    .local v0, "props":I
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 474
    and-int/lit8 v1, v0, 0x60

    #@e
    return v1

    #@f
    .line 476
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
    .line 462
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
    .line 467
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
    .line 1260
    sparse-switch p2, :sswitch_data_0

    #@6
    .line 1302
    return v7

    #@7
    .line 1262
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
    .line 1264
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
    .line 1266
    :sswitch_2
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->isSoftDotted(I)Z

    #@1e
    move-result v0

    #@1f
    return v0

    #@20
    .line 1268
    :sswitch_3
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->isCaseSensitive(I)Z

    #@23
    move-result v0

    #@24
    return v0

    #@25
    .line 1270
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
    .line 1272
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
    .line 1286
    :sswitch_6
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@3b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@3e
    .line 1287
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
    .line 1289
    :sswitch_7
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@51
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@54
    .line 1290
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
    .line 1292
    :sswitch_8
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@67
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6a
    .line 1293
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
    .line 1296
    :sswitch_9
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    #@7d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@80
    .line 1298
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
    .line 1299
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
    .line 1297
    :cond_7
    :goto_7
    return v6

    #@9d
    .line 1300
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
    .line 1260
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
    .line 485
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
    .line 481
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
    .line 1177
    move v7, p1

    #@1
    .line 1178
    .local v7, "result":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@3
    invoke-virtual {v10, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@6
    move-result v6

    #@7
    .line 1179
    .local v6, "props":I
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@a
    move-result v10

    #@b
    if-nez v10, :cond_2

    #@d
    .line 1180
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@10
    move-result v10

    #@11
    const/4 v11, 0x2

    #@12
    if-lt v10, v11, :cond_0

    #@14
    .line 1181
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@17
    move-result v10

    #@18
    add-int v7, p1, v10

    #@1a
    .line 1242
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
    .line 1184
    .restart local v7    # "result":I
    :cond_2
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@21
    move-result v0

    #@22
    .line 1185
    .local v0, "excOffset":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@24
    add-int/lit8 v1, v0, 0x1

    #@26
    .end local v0    # "excOffset":I
    .local v1, "excOffset":I
    aget-char v3, v10, v0

    #@28
    .line 1188
    .local v3, "excWord":I
    move v2, v1

    #@29
    .line 1190
    .local v2, "excOffset2":I
    const v10, 0x8000

    #@2c
    and-int/2addr v10, v3

    #@2d
    if-eqz v10, :cond_6

    #@2f
    .line 1192
    and-int/lit16 v10, p3, 0xff

    #@31
    if-nez v10, :cond_4

    #@33
    .line 1194
    const/16 v10, 0x49

    #@35
    if-ne p1, v10, :cond_3

    #@37
    .line 1196
    const/16 v10, 0x69

    #@39
    return v10

    #@3a
    .line 1197
    :cond_3
    const/16 v10, 0x130

    #@3c
    if-ne p1, v10, :cond_7

    #@3e
    .line 1199
    const-string/jumbo v10, "i\u0307"

    #@41
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 1200
    const/4 v10, 0x2

    #@45
    return v10

    #@46
    .line 1204
    :cond_4
    const/16 v10, 0x49

    #@48
    if-ne p1, v10, :cond_5

    #@4a
    .line 1206
    const/16 v10, 0x131

    #@4c
    return v10

    #@4d
    .line 1207
    :cond_5
    const/16 v10, 0x130

    #@4f
    if-ne p1, v10, :cond_7

    #@51
    .line 1209
    const/16 v10, 0x69

    #@53
    return v10

    #@54
    .line 1212
    :cond_6
    const/4 v10, 0x7

    #@55
    invoke-static {v3, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@58
    move-result v10

    #@59
    if-eqz v10, :cond_7

    #@5b
    .line 1213
    const/4 v10, 0x7

    #@5c
    invoke-direct {p0, v3, v10, v1}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    #@5f
    move-result-wide v8

    #@60
    .line 1214
    .local v8, "value":J
    long-to-int v10, v8

    #@61
    const v11, 0xffff

    #@64
    and-int v4, v10, v11

    #@66
    .line 1217
    .local v4, "full":I
    const/16 v10, 0x20

    #@68
    shr-long v10, v8, v10

    #@6a
    long-to-int v10, v10

    #@6b
    add-int/lit8 v0, v10, 0x1

    #@6d
    .line 1220
    .end local v1    # "excOffset":I
    .restart local v0    # "excOffset":I
    and-int/lit8 v10, v4, 0xf

    #@6f
    add-int/2addr v0, v10

    #@70
    .line 1221
    shr-int/lit8 v10, v4, 0x4

    #@72
    and-int/lit8 v4, v10, 0xf

    #@74
    .line 1223
    if-eqz v4, :cond_8

    #@76
    .line 1225
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@78
    invoke-virtual {p2, v10, v0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@7b
    .line 1228
    return v4

    #@7c
    .end local v0    # "excOffset":I
    .end local v4    # "full":I
    .end local v8    # "value":J
    .restart local v1    # "excOffset":I
    :cond_7
    move v0, v1

    #@7d
    .line 1232
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
    .line 1233
    const/4 v5, 0x1

    #@85
    .line 1239
    .local v5, "index":I
    :goto_1
    invoke-direct {p0, v3, v5, v2}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@88
    move-result v7

    #@89
    goto :goto_0

    #@8a
    .line 1234
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
    .line 1235
    const/4 v5, 0x0

    #@92
    .restart local v5    # "index":I
    goto :goto_1

    #@93
    .line 1237
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
    .line 817
    move v7, p1

    #@1
    .line 818
    .local v7, "result":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@3
    invoke-virtual {v10, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@6
    move-result v6

    #@7
    .line 819
    .local v6, "props":I
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@a
    move-result v10

    #@b
    if-nez v10, :cond_2

    #@d
    .line 820
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@10
    move-result v10

    #@11
    const/4 v11, 0x2

    #@12
    if-lt v10, v11, :cond_0

    #@14
    .line 821
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@17
    move-result v10

    #@18
    add-int v7, p1, v10

    #@1a
    .line 954
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
    .line 824
    .restart local v7    # "result":I
    :cond_2
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@21
    move-result v0

    #@22
    .line 825
    .local v0, "excOffset":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@24
    add-int/lit8 v1, v0, 0x1

    #@26
    .end local v0    # "excOffset":I
    .local v1, "excOffset":I
    aget-char v3, v10, v0

    #@28
    .line 828
    .local v3, "excWord":I
    move v2, v1

    #@29
    .line 830
    .local v2, "excOffset2":I
    and-int/lit16 v10, v3, 0x4000

    #@2b
    if-eqz v10, :cond_10

    #@2d
    .line 832
    invoke-static/range {p4 .. p5}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Landroid/icu/util/ULocale;[I)I

    #@30
    move-result v5

    #@31
    .line 840
    .local v5, "loc":I
    const/4 v10, 0x3

    #@32
    if-ne v5, v10, :cond_8

    #@34
    .line 842
    const/16 v10, 0x49

    #@36
    if-eq p1, v10, :cond_3

    #@38
    const/16 v10, 0x4a

    #@3a
    if-ne p1, v10, :cond_6

    #@3c
    .line 843
    :cond_3
    :goto_1
    invoke-direct {p0, p2}, Landroid/icu/impl/UCaseProps;->isFollowedByMoreAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    #@3f
    move-result v10

    #@40
    .line 842
    if-nez v10, :cond_5

    #@42
    .line 845
    :cond_4
    const/16 v10, 0xcc

    #@44
    if-eq p1, v10, :cond_5

    #@46
    const/16 v10, 0xcd

    #@48
    if-ne p1, v10, :cond_7

    #@4a
    .line 863
    :cond_5
    sparse-switch p1, :sswitch_data_0

    #@4d
    .line 883
    const/4 v10, 0x0

    #@4e
    return v10

    #@4f
    .line 842
    :cond_6
    const/16 v10, 0x12e

    #@51
    if-ne p1, v10, :cond_4

    #@53
    goto :goto_1

    #@54
    .line 845
    :cond_7
    const/16 v10, 0x128

    #@56
    if-eq p1, v10, :cond_5

    #@58
    .line 886
    :cond_8
    const/4 v10, 0x2

    #@59
    if-ne v5, v10, :cond_9

    #@5b
    const/16 v10, 0x130

    #@5d
    if-ne p1, v10, :cond_9

    #@5f
    .line 894
    const/16 v10, 0x69

    #@61
    return v10

    #@62
    .line 865
    :sswitch_0
    const-string/jumbo v10, "i\u0307"

    #@65
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 866
    const/4 v10, 0x2

    #@69
    return v10

    #@6a
    .line 868
    :sswitch_1
    const-string/jumbo v10, "j\u0307"

    #@6d
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 869
    const/4 v10, 0x2

    #@71
    return v10

    #@72
    .line 871
    :sswitch_2
    const-string/jumbo v10, "\u012f\u0307"

    #@75
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 872
    const/4 v10, 0x2

    #@79
    return v10

    #@7a
    .line 874
    :sswitch_3
    const-string/jumbo v10, "i\u0307\u0300"

    #@7d
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    .line 875
    const/4 v10, 0x3

    #@81
    return v10

    #@82
    .line 877
    :sswitch_4
    const-string/jumbo v10, "i\u0307\u0301"

    #@85
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 878
    const/4 v10, 0x3

    #@89
    return v10

    #@8a
    .line 880
    :sswitch_5
    const-string/jumbo v10, "i\u0307\u0303"

    #@8d
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    .line 881
    const/4 v10, 0x3

    #@91
    return v10

    #@92
    .line 895
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
    .line 903
    const/4 v10, 0x0

    #@a0
    return v10

    #@a1
    .line 904
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
    .line 912
    :cond_b
    const/16 v10, 0x130

    #@b0
    if-ne p1, v10, :cond_d

    #@b2
    .line 918
    const-string/jumbo v10, "i\u0307"

    #@b5
    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    .line 919
    const/4 v10, 0x2

    #@b9
    return v10

    #@ba
    .line 911
    :cond_c
    const/16 v10, 0x131

    #@bc
    return v10

    #@bd
    .line 920
    :cond_d
    const/16 v10, 0x3a3

    #@bf
    if-ne p1, v10, :cond_e

    #@c1
    .line 921
    const/4 v10, 0x1

    #@c2
    invoke-direct {p0, p2, v10}, Landroid/icu/impl/UCaseProps;->isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z

    #@c5
    move-result v10

    #@c6
    if-eqz v10, :cond_f

    #@c8
    .line 949
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
    .line 950
    const/4 v10, 0x0

    #@d0
    invoke-direct {p0, v3, v10, v2}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@d3
    move-result v7

    #@d4
    goto/16 :goto_0

    #@d6
    .line 922
    .restart local v5    # "loc":I
    :cond_f
    const/4 v10, -0x1

    #@d7
    invoke-direct {p0, p2, v10}, Landroid/icu/impl/UCaseProps;->isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z

    #@da
    move-result v10

    #@db
    .line 920
    if-eqz v10, :cond_e

    #@dd
    .line 930
    const/16 v10, 0x3c2

    #@df
    return v10

    #@e0
    .line 934
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
    .line 935
    const/4 v10, 0x7

    #@e8
    invoke-direct {p0, v3, v10, v1}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    #@eb
    move-result-wide v8

    #@ec
    .line 936
    .local v8, "value":J
    long-to-int v10, v8

    #@ed
    and-int/lit8 v4, v10, 0xf

    #@ef
    .line 937
    .local v4, "full":I
    if-eqz v4, :cond_e

    #@f1
    .line 939
    const/16 v10, 0x20

    #@f3
    shr-long v10, v8, v10

    #@f5
    long-to-int v10, v10

    #@f6
    add-int/lit8 v0, v10, 0x1

    #@f8
    .line 942
    .end local v1    # "excOffset":I
    .restart local v0    # "excOffset":I
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@fa
    invoke-virtual {p3, v10, v0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@fd
    .line 945
    return v4

    #@fe
    .line 863
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
    .line 1062
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
    .line 1056
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
    .line 192
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@3
    invoke-virtual {v4, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@6
    move-result v3

    #@7
    .line 193
    .local v3, "props":I
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_1

    #@d
    .line 194
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@10
    move-result v4

    #@11
    const/4 v5, 0x2

    #@12
    if-lt v4, v5, :cond_0

    #@14
    .line 195
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@17
    move-result v4

    #@18
    add-int/2addr p1, v4

    #@19
    .line 204
    :cond_0
    :goto_0
    return p1

    #@1a
    .line 198
    :cond_1
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@1d
    move-result v0

    #@1e
    .line 199
    .local v0, "excOffset":I
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@20
    add-int/lit8 v1, v0, 0x1

    #@22
    .end local v0    # "excOffset":I
    .local v1, "excOffset":I
    aget-char v2, v4, v0

    #@24
    .line 200
    .local v2, "excWord":I
    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_0

    #@2a
    .line 201
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
    .line 224
    iget-object v5, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@2
    invoke-virtual {v5, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@5
    move-result v4

    #@6
    .line 225
    .local v4, "props":I
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@9
    move-result v5

    #@a
    if-nez v5, :cond_1

    #@c
    .line 226
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@f
    move-result v5

    #@10
    const/4 v6, 0x1

    #@11
    if-ne v5, v6, :cond_0

    #@13
    .line 227
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@16
    move-result v5

    #@17
    add-int/2addr p1, v5

    #@18
    .line 242
    :cond_0
    :goto_0
    return p1

    #@19
    .line 230
    :cond_1
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@1c
    move-result v0

    #@1d
    .line 231
    .local v0, "excOffset":I
    iget-object v5, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@1f
    add-int/lit8 v1, v0, 0x1

    #@21
    .end local v0    # "excOffset":I
    .local v1, "excOffset":I
    aget-char v2, v5, v0

    #@23
    .line 233
    .local v2, "excWord":I
    const/4 v5, 0x3

    #@24
    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_2

    #@2a
    .line 234
    const/4 v3, 0x3

    #@2b
    .line 240
    .local v3, "index":I
    :goto_1
    invoke-direct {p0, v2, v3, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@2e
    move-result p1

    #@2f
    goto :goto_0

    #@30
    .line 235
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
    .line 236
    const/4 v3, 0x2

    #@38
    .restart local v3    # "index":I
    goto :goto_1

    #@39
    .line 238
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
    .line 208
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    #@3
    invoke-virtual {v4, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    #@6
    move-result v3

    #@7
    .line 209
    .local v3, "props":I
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_1

    #@d
    .line 210
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    #@10
    move-result v4

    #@11
    const/4 v5, 0x1

    #@12
    if-ne v4, v5, :cond_0

    #@14
    .line 211
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    #@17
    move-result v4

    #@18
    add-int/2addr p1, v4

    #@19
    .line 220
    :cond_0
    :goto_0
    return p1

    #@1a
    .line 214
    :cond_1
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    #@1d
    move-result v0

    #@1e
    .line 215
    .local v0, "excOffset":I
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    #@20
    add-int/lit8 v1, v0, 0x1

    #@22
    .end local v0    # "excOffset":I
    .local v1, "excOffset":I
    aget-char v2, v4, v0

    #@24
    .line 216
    .local v2, "excWord":I
    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_0

    #@2a
    .line 217
    invoke-direct {p0, v2, v5, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    #@2d
    move-result p1

    #@2e
    goto :goto_0
.end method
