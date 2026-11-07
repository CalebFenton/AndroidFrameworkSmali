.class public Landroid/icu/text/UnicodeSet;
.super Landroid/icu/text/UnicodeFilter;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Comparable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/UnicodeSet$SpanCondition;,
        Landroid/icu/text/UnicodeSet$Filter;,
        Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;,
        Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;,
        Landroid/icu/text/UnicodeSet$IdentifierTypeFilter;,
        Landroid/icu/text/UnicodeSet$IntPropertyFilter;,
        Landroid/icu/text/UnicodeSet$XSymbolTable;,
        Landroid/icu/text/UnicodeSet$NumericValueFilter;,
        Landroid/icu/text/UnicodeSet$VersionFilter;,
        Landroid/icu/text/UnicodeSet$EntryRangeIterable;,
        Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;,
        Landroid/icu/text/UnicodeSet$ComparisonStyle;,
        Landroid/icu/text/UnicodeSet$CodePointSpliterator;,
        Landroid/icu/text/UnicodeSet$CodePointIterable;,
        Landroid/icu/text/UnicodeSet$CodePointIteratorInt;,
        Landroid/icu/text/UnicodeSet$CodePointIterator;,
        Landroid/icu/text/UnicodeSet$EntryRangeIterator;,
        Landroid/icu/text/UnicodeSet$EntryRange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/text/UnicodeFilter;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/text/UnicodeSet;",
        ">;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/text/UnicodeSet;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api ADD_CASE_MAPPINGS:I = 0x4

.field public static final whitelist test-api ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

.field private static final greylist-max-o ANY_ID:Ljava/lang/String; = "ANY"

.field private static final greylist-max-o ASCII_ID:Ljava/lang/String; = "ASCII"

.field private static final greylist-max-o ASSIGNED:Ljava/lang/String; = "Assigned"

.field public static final whitelist test-api CASE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api CASE_INSENSITIVE:I = 0x2

.field private static final blacklist CASE_MASK:I = 0x6

.field public static final whitelist test-api EMPTY:Landroid/icu/text/UnicodeSet;

.field private static final blacklist EMPTY_STRINGS:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o HIGH:I = 0x110000

.field public static final whitelist test-api IGNORE_SPACE:I = 0x1

.field private static final blacklist INITIAL_CAPACITY:I = 0x19

.field private static final greylist-max-o LAST0_START:I = 0x0

.field private static final greylist-max-o LAST1_RANGE:I = 0x1

.field private static final greylist-max-o LAST2_SET:I = 0x2

.field private static final greylist-max-o LOW:I = 0x0

.field private static final blacklist MAX_DEPTH:I = 0x64

.field private static final blacklist MAX_LENGTH:I = 0x110001

.field public static final whitelist test-api MAX_VALUE:I = 0x10ffff

.field public static final whitelist test-api MIN_VALUE:I = 0x0

.field private static final greylist-max-o MODE0_NONE:I = 0x0

.field private static final greylist-max-o MODE1_INBRACKET:I = 0x1

.field private static final greylist-max-o MODE2_OUTBRACKET:I = 0x2

.field private static final greylist-max-o NO_VERSION:Landroid/icu/util/VersionInfo;

.field private static final greylist-max-o SETMODE0_NONE:I = 0x0

.field private static final greylist-max-o SETMODE1_UNICODESET:I = 0x1

.field private static final greylist-max-o SETMODE2_PROPERTYPAT:I = 0x2

.field private static final greylist-max-o SETMODE3_PREPARSED:I = 0x3

.field public static final whitelist test-api SIMPLE_CASE_INSENSITIVE:I = 0x6

.field private static greylist-max-o XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;


# instance fields
.field private volatile greylist-max-o bmpSet:Landroid/icu/impl/BMPSet;

.field private greylist-max-o buffer:[I

.field private greylist-max-o len:I

.field private greylist-max-o list:[I

.field private greylist-max-o pat:Ljava/lang/String;

.field private greylist-max-o rangeList:[I

.field private volatile greylist-max-o stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

.field blacklist strings:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlen(Landroid/icu/text/UnicodeSet;)I
    .registers 1

    iget p0, p0, Landroid/icu/text/UnicodeSet;->len:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlist(Landroid/icu/text/UnicodeSet;)[I
    .registers 1

    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetNO_VERSION()Landroid/icu/util/VersionInfo;
    .registers 1

    sget-object v0, Landroid/icu/text/UnicodeSet;->NO_VERSION:Landroid/icu/util/VersionInfo;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sm_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 309
    nop

    .line 310
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 311
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    .line 316
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    .line 320
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const v1, 0x10ffff

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSet;->ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

    .line 322
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    .line 3328
    invoke-static {v2, v2, v2, v2}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSet;->NO_VERSION:Landroid/icu/util/VersionInfo;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 4

    .line 380
    invoke-direct {p0}, Landroid/icu/text/UnicodeFilter;-><init>()V

    .line 353
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 381
    const/16 v0, 0x19

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 382
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v1, 0x0

    const/high16 v2, 0x110000

    aput v2, v0, v1

    .line 383
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 384
    return-void
.end method

.method public constructor whitelist test-api <init>(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 401
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 402
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 403
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "other"    # Landroid/icu/text/UnicodeSet;

    .line 389
    invoke-direct {p0}, Landroid/icu/text/UnicodeFilter;-><init>()V

    .line 353
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 390
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 391
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 444
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 445
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    .line 446
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "options"    # I

    .line 473
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    .line 475
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "symbols"    # Landroid/icu/text/SymbolTable;

    .line 489
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 490
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    .line 491
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "symbols"    # Landroid/icu/text/SymbolTable;
    .param p4, "options"    # I

    .line 509
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 510
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    .line 511
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ignoreWhitespace"    # Z

    .line 457
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    .line 459
    return-void
.end method

.method public varargs constructor whitelist test-api <init>([I)V
    .registers 8
    .param p1, "pairs"    # [I

    .line 413
    invoke-direct {p0}, Landroid/icu/text/UnicodeFilter;-><init>()V

    .line 353
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 414
    array-length v0, p1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4e

    .line 417
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 418
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v0, v0

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 419
    const/4 v0, -0x1

    .line 420
    .local v0, "last":I
    const/4 v1, 0x0

    .line 421
    .local v1, "i":I
    :goto_1d
    array-length v2, p1

    if-ge v1, v2, :cond_47

    .line 422
    aget v2, p1, v1

    .line 423
    .local v2, "start":I
    const-string v3, "Must be monotonically increasing."

    if-ge v0, v2, :cond_41

    .line 426
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    aput v2, v4, v1

    .line 427
    aget v1, p1, v5

    add-int/lit8 v1, v1, 0x1

    .line 428
    .local v1, "limit":I
    if-ge v2, v1, :cond_3b

    .line 431
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .local v4, "i":I
    move v0, v1

    aput v1, v3, v5

    .line 432
    .end local v1    # "limit":I
    .end local v2    # "start":I
    move v1, v4

    goto :goto_1d

    .line 429
    .end local v4    # "i":I
    .restart local v1    # "limit":I
    .restart local v2    # "start":I
    .restart local v5    # "i":I
    :cond_3b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 424
    .end local v5    # "i":I
    .local v1, "i":I
    :cond_41
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 433
    .end local v2    # "start":I
    :cond_47
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/high16 v3, 0x110000

    aput v3, v2, v1

    .line 434
    return-void

    .line 415
    .end local v0    # "last":I
    .end local v1    # "i":I
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have even number of integers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist _appendToPat(Ljava/lang/Appendable;IIZ)Ljava/lang/Appendable;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "escapeUnprintable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;IIZ)TT;"
        }
    .end annotation

    .line 696
    .local p0, "result":Ljava/lang/Appendable;, "TT;"
    invoke-static {p0, p1, p3}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 697
    if-eq p1, p2, :cond_1f

    .line 698
    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_e

    const v0, 0xdbff

    if-ne p1, v0, :cond_14

    .line 702
    :cond_e
    const/16 v0, 0x2d

    :try_start_10
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_18

    .line 705
    nop

    .line 707
    :cond_14
    invoke-static {p0, p2, p3}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    goto :goto_1f

    .line 703
    :catch_18
    move-exception v0

    .line 704
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 709
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1f
    :goto_1f
    return-object p0
.end method

.method private static greylist-max-o _appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;
    .registers 5
    .param p1, "c"    # I
    .param p2, "escapeUnprintable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;IZ)TT;"
        }
    .end annotation

    .line 661
    .local p0, "buf":Ljava/lang/Appendable;, "TT;"
    if-eqz p2, :cond_9

    :try_start_2
    invoke-static {p1}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_f

    :cond_9
    invoke-static {p1}, Landroid/icu/impl/Utility;->shouldAlwaysBeEscaped(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 664
    :goto_f
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->escape(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 667
    :cond_14
    const/16 v0, 0x5c

    sparse-switch p1, :sswitch_data_32

    .line 682
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    goto :goto_22

    .line 678
    :sswitch_1e
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 679
    goto :goto_27

    .line 682
    :goto_22
    if-eqz v1, :cond_27

    .line 683
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 687
    :cond_27
    :goto_27
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2a} :catch_2b

    .line 688
    return-object p0

    .line 689
    :catch_2b
    move-exception v0

    .line 690
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_32
    .sparse-switch
        0x24 -> :sswitch_1e
        0x26 -> :sswitch_1e
        0x2d -> :sswitch_1e
        0x3a -> :sswitch_1e
        0x5b -> :sswitch_1e
        0x5c -> :sswitch_1e
        0x5d -> :sswitch_1e
        0x5e -> :sswitch_1e
        0x7b -> :sswitch_1e
        0x7d -> :sswitch_1e
    .end sparse-switch
.end method

.method private static greylist-max-o _appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "escapeUnprintable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .line 648
    .local p0, "buf":Ljava/lang/Appendable;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 649
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 650
    .local v1, "cp":I
    invoke-static {p0, v1, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 648
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 652
    .end local v0    # "i":I
    .end local v1    # "cp":I
    :cond_14
    return-object p0
.end method

.method private greylist-max-o _toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;
    .registers 8
    .param p2, "escapeUnprintable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;Z)TT;"
        }
    .end annotation

    .line 733
    .local p1, "result":Ljava/lang/Appendable;, "TT;"
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 734
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 737
    :cond_a
    if-nez p2, :cond_14

    .line 742
    :try_start_c
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 743
    return-object p1

    .line 770
    :catch_12
    move-exception v0

    goto :goto_4c

    .line 745
    :cond_14
    const/4 v0, 0x0

    .line 746
    .local v0, "oddNumberOfBackslashes":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x5c

    if-ge v1, v2, :cond_46

    .line 747
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 748
    .local v2, "c":I
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 749
    invoke-static {v2}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 753
    invoke-static {p1, v2}, Landroid/icu/impl/Utility;->escape(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    .line 754
    const/4 v0, 0x0

    goto :goto_45

    .line 755
    :cond_36
    if-nez v0, :cond_3c

    if-ne v2, v3, :cond_3c

    .line 757
    const/4 v0, 0x1

    goto :goto_45

    .line 759
    :cond_3c
    if-eqz v0, :cond_41

    .line 760
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 762
    :cond_41
    invoke-static {p1, v2}, Landroid/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    .line 763
    const/4 v0, 0x0

    .line 765
    .end local v2    # "c":I
    :goto_45
    goto :goto_16

    .line 766
    .end local v1    # "i":I
    :cond_46
    if-eqz v0, :cond_4b

    .line 767
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_4b} :catch_12

    .line 769
    :cond_4b
    return-object p1

    .line 771
    .local v0, "e":Ljava/io/IOException;
    :goto_4c
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o add([III)Landroid/icu/text/UnicodeSet;
    .registers 12
    .param p1, "other"    # [I
    .param p2, "otherLen"    # I
    .param p3, "polarity"    # I

    .line 3103
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    .line 3104
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    const/4 v2, 0x0

    .line 3105
    .local v2, "k":I
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    aget v0, v3, v0

    .line 3106
    .local v0, "a":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .local v3, "j":I
    aget v1, p1, v1

    .line 3111
    .local v1, "b":I
    :goto_13
    const/high16 v5, 0x110000

    packed-switch p3, :pswitch_data_148

    goto/16 :goto_146

    .line 3151
    :pswitch_1a
    if-gt v1, v0, :cond_27

    .line 3152
    if-ne v0, v5, :cond_20

    goto/16 :goto_103

    .line 3153
    :cond_20
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .local v6, "k":I
    aput v0, v5, v2

    goto :goto_31

    .line 3155
    .end local v6    # "k":I
    .restart local v2    # "k":I
    :cond_27
    if-ne v1, v5, :cond_2b

    goto/16 :goto_103

    .line 3156
    :cond_2b
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .restart local v6    # "k":I
    aput v1, v5, v2

    .line 3158
    :goto_31
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget v0, v2, v4

    xor-int/lit8 p3, p3, 0x1

    .line 3159
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .local v2, "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    .line 3160
    move v3, v2

    move v4, v5

    move v2, v6

    goto/16 :goto_146

    .line 3173
    .end local v5    # "i":I
    .end local v6    # "k":I
    .local v2, "k":I
    .restart local v3    # "j":I
    .restart local v4    # "i":I
    :pswitch_44
    if-ge v1, v0, :cond_56

    .line 3174
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .restart local v6    # "k":I
    aput v1, v5, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .local v2, "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    move v3, v2

    move v2, v6

    goto/16 :goto_146

    .line 3175
    .end local v6    # "k":I
    .local v2, "k":I
    .restart local v3    # "j":I
    :cond_56
    if-ge v0, v1, :cond_63

    .line 3176
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .local v6, "i":I
    aget v0, v5, v4

    xor-int/lit8 p3, p3, 0x1

    move v4, v6

    goto/16 :goto_146

    .line 3178
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :cond_63
    if-ne v0, v5, :cond_67

    goto/16 :goto_103

    .line 3179
    :cond_67
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .restart local v6    # "i":I
    aget v0, v5, v4

    xor-int/lit8 p3, p3, 0x1

    .line 3180
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    move v3, v4

    move v4, v6

    goto/16 :goto_146

    .line 3162
    .end local v6    # "i":I
    .restart local v3    # "j":I
    .local v4, "i":I
    :pswitch_79
    if-ge v0, v1, :cond_8d

    .line 3163
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .local v6, "k":I
    aput v0, v5, v2

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v0, v2, v4

    xor-int/lit8 p3, p3, 0x1

    move v4, v5

    move v2, v6

    goto/16 :goto_146

    .line 3164
    .end local v5    # "i":I
    .end local v6    # "k":I
    .restart local v2    # "k":I
    .restart local v4    # "i":I
    :cond_8d
    if-ge v1, v0, :cond_98

    .line 3165
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    move v3, v5

    goto/16 :goto_146

    .line 3167
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :cond_98
    if-ne v0, v5, :cond_9c

    goto/16 :goto_103

    .line 3168
    :cond_9c
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .local v6, "i":I
    aget v0, v5, v4

    xor-int/lit8 p3, p3, 0x1

    .line 3169
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    .line 3171
    move v3, v4

    move v4, v6

    goto/16 :goto_146

    .line 3113
    .end local v6    # "i":I
    .restart local v3    # "j":I
    .local v4, "i":I
    :pswitch_ae
    if-ge v0, v1, :cond_da

    .line 3115
    if-lez v2, :cond_c9

    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    if-gt v0, v5, :cond_c9

    .line 3117
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v5, v5, v4

    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v2, v2, -0x1

    aget v6, v6, v2

    invoke-static {v5, v6}, Landroid/icu/text/UnicodeSet;->max(II)I

    move-result v0

    goto :goto_d4

    .line 3120
    :cond_c9
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .local v6, "k":I
    aput v0, v5, v2

    .line 3121
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v0, v2, v4

    move v2, v6

    .line 3123
    .end local v6    # "k":I
    .restart local v2    # "k":I
    :goto_d4
    add-int/lit8 v4, v4, 0x1

    .line 3124
    xor-int/lit8 p3, p3, 0x1

    goto/16 :goto_146

    .line 3125
    :cond_da
    if-ge v1, v0, :cond_101

    .line 3126
    if-lez v2, :cond_f3

    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    if-gt v1, v5, :cond_f3

    .line 3127
    aget v5, p1, v3

    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v2, v2, -0x1

    aget v6, v6, v2

    invoke-static {v5, v6}, Landroid/icu/text/UnicodeSet;->max(II)I

    move-result v1

    goto :goto_fc

    .line 3129
    :cond_f3
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .restart local v6    # "k":I
    aput v1, v5, v2

    .line 3130
    aget v1, p1, v3

    move v2, v6

    .line 3132
    .end local v6    # "k":I
    .restart local v2    # "k":I
    :goto_fc
    add-int/lit8 v3, v3, 0x1

    .line 3133
    xor-int/lit8 p3, p3, 0x2

    goto :goto_146

    .line 3135
    :cond_101
    if-ne v0, v5, :cond_117

    .line 3185
    :goto_103
    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "k":I
    .local v7, "k":I
    aput v5, v6, v2

    .line 3186
    iput v7, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 3188
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 3189
    .local v2, "temp":[I
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 3190
    iput-object v2, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    .line 3191
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 3192
    return-object p0

    .line 3138
    .end local v7    # "k":I
    .local v2, "k":I
    :cond_117
    if-lez v2, :cond_130

    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    if-gt v0, v5, :cond_130

    .line 3139
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v5, v5, v4

    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v2, v2, -0x1

    aget v6, v6, v2

    invoke-static {v5, v6}, Landroid/icu/text/UnicodeSet;->max(II)I

    move-result v0

    goto :goto_13b

    .line 3142
    :cond_130
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .restart local v6    # "k":I
    aput v0, v5, v2

    .line 3143
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v0, v2, v4

    move v2, v6

    .line 3145
    .end local v6    # "k":I
    .restart local v2    # "k":I
    :goto_13b
    add-int/lit8 v4, v4, 0x1

    .line 3146
    xor-int/lit8 p3, p3, 0x1

    .line 3147
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    .line 3149
    move v3, v5

    .line 3182
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :goto_146
    goto/16 :goto_13

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_79
        :pswitch_44
        :pswitch_1a
    .end packed-switch
.end method

.method public static greylist-max-o addAllTo(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Ljava/lang/Iterable<",
            "TT;>;TU;)TU;"
        }
    .end annotation

    .line 4772
    .local p0, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "target":Ljava/util/Collection;, "TU;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4773
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4774
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_4

    .line 4775
    :cond_12
    return-object p1
.end method

.method public static greylist-max-o addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;[TT;)[TT;"
        }
    .end annotation

    .line 4783
    .local p0, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "target":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .line 4784
    .local v0, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4785
    .local v2, "item":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aput-object v2, p1, v0

    .line 4786
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    move v0, v3

    goto :goto_5

    .line 4787
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_15
    return-object p1
.end method

.method private static final greylist-max-o addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V
    .registers 4
    .param p0, "set"    # Landroid/icu/text/UnicodeSet;
    .param p1, "result"    # I
    .param p2, "full"    # Ljava/lang/StringBuilder;

    .line 3895
    if-ltz p1, :cond_15

    .line 3896
    const/16 v0, 0x1f

    if-le p1, v0, :cond_a

    .line 3898
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_15

    .line 3901
    :cond_a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 3902
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3907
    :cond_15
    :goto_15
    return-void
.end method

.method private blacklist addString(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 1411
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    sget-object v1, Landroid/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    if-ne v0, v1, :cond_d

    .line 1412
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    .line 1414
    :cond_d
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1415
    return-void
.end method

.method private final greylist-max-o add_unchecked(I)Landroid/icu/text/UnicodeSet;
    .registers 8
    .param p1, "c"    # I

    .line 1300
    if-ltz p1, :cond_b1

    const v0, 0x10ffff

    if-gt p1, v0, :cond_b1

    .line 1307
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result v1

    .line 1310
    .local v1, "i":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_10

    return-object p0

    .line 1327
    :cond_10
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v2, v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_52

    .line 1329
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aput p1, v2, v1

    .line 1331
    if-ne p1, v0, :cond_31

    .line 1332
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->ensureCapacity(I)V

    .line 1333
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/high16 v3, 0x110000

    aput v3, v0, v2

    .line 1335
    :cond_31
    if-lez v1, :cond_ad

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    if-ne p1, v0, :cond_ad

    .line 1341
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1342
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    goto :goto_ad

    .line 1346
    :cond_52
    if-lez v1, :cond_67

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    if-ne p1, v0, :cond_67

    .line 1348
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    goto :goto_ad

    .line 1368
    :cond_67
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v2, v2

    if-le v0, v2, :cond_8f

    .line 1369
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->nextCapacity(I)I

    move-result v0

    new-array v0, v0, [I

    .line 1370
    .local v0, "temp":[I
    if-eqz v1, :cond_82

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1371
    :cond_82
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v1, 0x2

    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1372
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 1373
    .end local v0    # "temp":[I
    goto :goto_9b

    .line 1374
    :cond_8f
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v1, 0x2

    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v4, v1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1377
    :goto_9b
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aput p1, v0, v1

    .line 1378
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, p1, 0x1

    aput v3, v0, v2

    .line 1379
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 1382
    :cond_ad
    :goto_ad
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 1383
    return-object p0

    .line 1301
    .end local v1    # "i":I
    :cond_b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o add_unchecked(II)Landroid/icu/text/UnicodeSet;
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1224
    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_a3

    const v2, 0x10ffff

    if-gt p1, v2, :cond_a3

    .line 1227
    if-ltz p2, :cond_87

    if-gt p2, v2, :cond_87

    .line 1230
    if-ge p1, p2, :cond_7f

    .line 1231
    add-int/lit8 v0, p2, 0x1

    .line 1234
    .local v0, "limit":I
    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x2

    if-eqz v1, :cond_76

    .line 1236
    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    if-ne v1, v2, :cond_1f

    const/4 v1, -0x2

    goto :goto_26

    :cond_1f
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v4, v3

    aget v1, v1, v4

    .line 1237
    .local v1, "lastLimit":I
    :goto_26
    if-gt v1, p1, :cond_76

    .line 1238
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1239
    const/high16 v4, 0x110000

    if-ne v1, p1, :cond_3e

    .line 1241
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v6, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v6, v3

    aput v0, v5, v6

    .line 1242
    if-ne v0, v4, :cond_72

    .line 1243
    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    goto :goto_72

    .line 1246
    :cond_3e
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v6, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v6, v2

    aput p1, v5, v6

    .line 1247
    if-ge v0, v4, :cond_62

    .line 1248
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Landroid/icu/text/UnicodeSet;->ensureCapacity(I)V

    .line 1249
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroid/icu/text/UnicodeSet;->len:I

    aput v0, v2, v3

    .line 1250
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroid/icu/text/UnicodeSet;->len:I

    aput v4, v2, v3

    goto :goto_72

    .line 1252
    :cond_62
    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Landroid/icu/text/UnicodeSet;->ensureCapacity(I)V

    .line 1253
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroid/icu/text/UnicodeSet;->len:I

    aput v4, v2, v3

    .line 1256
    :cond_72
    :goto_72
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 1257
    return-object p0

    .line 1262
    .end local v1    # "lastLimit":I
    :cond_76
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v3, v2}, Landroid/icu/text/UnicodeSet;->add([III)Landroid/icu/text/UnicodeSet;

    .end local v0    # "limit":I
    goto :goto_85

    .line 1263
    :cond_7f
    if-ne p1, p2, :cond_85

    .line 1264
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_86

    .line 1263
    :cond_85
    :goto_85
    nop

    .line 1266
    :goto_86
    return-object p0

    .line 1228
    :cond_87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v3, p2

    invoke-static {v3, v4, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1225
    :cond_a3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v3, p1

    invoke-static {v3, v4, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist-max-o append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V
    .registers 4
    .param p0, "app"    # Ljava/lang/Appendable;
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 636
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 639
    nop

    .line 640
    return-void

    .line 637
    :catch_5
    move-exception v0

    .line 638
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o appendCodePoint(Ljava/lang/Appendable;I)V
    .registers 4
    .param p0, "app"    # Ljava/lang/Appendable;
    .param p1, "c"    # I

    .line 618
    nop

    .line 620
    const v0, 0xffff

    if-gt p1, v0, :cond_b

    .line 621
    int-to-char v0, p1

    :try_start_7
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1a

    .line 623
    :cond_b
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1a} :catch_1c

    .line 627
    :goto_1a
    nop

    .line 628
    return-void

    .line 625
    :catch_1c
    move-exception v0

    .line 626
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;
    .registers 14
    .param p2, "escapeUnprintable"    # Z
    .param p3, "includeStrings"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;ZZ)TT;"
        }
    .end annotation

    .line 806
    .local p1, "result":Ljava/lang/Appendable;, "TT;"
    const/16 v0, 0x5b

    :try_start_2
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 808
    const/4 v0, 0x0

    .line 809
    .local v0, "i":I
    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    and-int/lit8 v1, v1, -0x2

    .line 822
    .local v1, "limit":I
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_28

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_28

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    if-ne v1, v2, :cond_28

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v2

    if-nez v2, :cond_28

    .line 824
    const/16 v2, 0x5e

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 827
    const/4 v0, 0x1

    .line 828
    add-int/lit8 v1, v1, -0x1

    .line 832
    :cond_28
    :goto_28
    if-ge v0, v1, :cond_83

    .line 833
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v2, v2, v0

    .line 834
    .local v2, "start":I
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    .line 835
    .local v3, "end":I
    const v4, 0xd800

    if-gt v4, v3, :cond_7d

    const v4, 0xdbff

    if-le v3, v4, :cond_41

    goto :goto_7d

    .line 842
    :cond_41
    move v5, v0

    .line 843
    .local v5, "firstLead":I
    :goto_42
    add-int/lit8 v0, v0, 0x2

    if-ge v0, v1, :cond_4d

    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v6, v6, v0

    if-gt v6, v4, :cond_4d

    goto :goto_42

    .line 844
    :cond_4d
    move v4, v0

    .line 846
    .local v4, "firstAfterLead":I
    :goto_4e
    if-ge v0, v1, :cond_68

    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v6, v6, v0

    move v2, v6

    const v7, 0xdfff

    if-gt v6, v7, :cond_68

    .line 847
    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {p1, v2, v6, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IIZ)Ljava/lang/Appendable;

    .line 848
    add-int/lit8 v0, v0, 0x2

    goto :goto_4e

    .line 851
    :cond_68
    move v6, v5

    .local v6, "j":I
    :goto_69
    if-ge v6, v4, :cond_82

    .line 852
    iget-object v7, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v7, v7, v6

    iget-object v8, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {p1, v7, v8, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IIZ)Ljava/lang/Appendable;

    .line 851
    add-int/lit8 v6, v6, 0x2

    goto :goto_69

    .line 836
    .end local v4    # "firstAfterLead":I
    .end local v5    # "firstLead":I
    .end local v6    # "j":I
    :cond_7d
    :goto_7d
    invoke-static {p1, v2, v3, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IIZ)Ljava/lang/Appendable;

    .line 837
    add-int/lit8 v0, v0, 0x2

    .line 855
    .end local v2    # "start":I
    .end local v3    # "end":I
    :cond_82
    goto :goto_28

    .line 857
    :cond_83
    if-eqz p3, :cond_ac

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 858
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_91
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 859
    .local v3, "s":Ljava/lang/String;
    const/16 v4, 0x7b

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 860
    invoke-static {p1, v3, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    .line 861
    const/16 v4, 0x7d

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 862
    nop

    .end local v3    # "s":Ljava/lang/String;
    goto :goto_91

    .line 864
    :cond_ac
    const/16 v2, 0x5d

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b1} :catch_b2

    .line 865
    return-object p1

    .line 866
    .end local v0    # "i":I
    .end local v1    # "limit":I
    :catch_b2
    move-exception v0

    .line 867
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist applyFilter(Landroid/icu/text/UnicodeSet$Filter;Landroid/icu/text/UnicodeSet;)V
    .registers 10
    .param p1, "filter"    # Landroid/icu/text/UnicodeSet$Filter;
    .param p2, "inclusions"    # Landroid/icu/text/UnicodeSet;

    .line 3357
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 3359
    const/4 v0, -0x1

    .line 3360
    .local v0, "startHasProperty":I
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v1

    .line 3362
    .local v1, "limitRange":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_9
    if-ge v2, v1, :cond_2e

    .line 3364
    invoke-virtual {p2, v2}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v3

    .line 3365
    .local v3, "start":I
    invoke-virtual {p2, v2}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v4

    .line 3368
    .local v4, "end":I
    move v5, v3

    .local v5, "ch":I
    :goto_14
    if-gt v5, v4, :cond_2b

    .line 3371
    invoke-interface {p1, v5}, Landroid/icu/text/UnicodeSet$Filter;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 3372
    if-gez v0, :cond_28

    .line 3373
    move v0, v5

    goto :goto_28

    .line 3375
    :cond_20
    if-ltz v0, :cond_28

    .line 3376
    add-int/lit8 v6, v5, -0x1

    invoke-direct {p0, v0, v6}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 3377
    const/4 v0, -0x1

    .line 3368
    :cond_28
    :goto_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 3362
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "ch":I
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3381
    .end local v2    # "j":I
    :cond_2e
    if-ltz v0, :cond_36

    .line 3382
    const v2, 0x10ffff

    invoke-direct {p0, v0, v2}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 3384
    :cond_36
    return-void
.end method

.method private blacklist applyPattern(Landroid/icu/impl/RuleCharacterIterator;Landroid/icu/text/SymbolTable;Ljava/lang/Appendable;II)V
    .registers 35
    .param p1, "chars"    # Landroid/icu/impl/RuleCharacterIterator;
    .param p2, "symbols"    # Landroid/icu/text/SymbolTable;
    .param p3, "rebuiltPat"    # Ljava/lang/Appendable;
    .param p4, "options"    # I
    .param p5, "depth"    # I

    .line 2542
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v9, p5

    const/16 v0, 0x64

    if-le v9, v0, :cond_11

    .line 2543
    const-string v0, "Pattern nested too deeply"

    invoke-static {v3, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2550
    :cond_11
    const/4 v0, 0x3

    .line 2552
    .local v0, "opts":I
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1a

    .line 2553
    or-int/lit8 v0, v0, 0x4

    move v10, v0

    goto :goto_1b

    .line 2552
    :cond_1a
    move v10, v0

    .line 2556
    .end local v0    # "opts":I
    .local v10, "opts":I
    :goto_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "patBuf":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2557
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 2558
    .local v2, "usePat":Z
    const/4 v6, 0x0

    .line 2559
    .local v6, "scratch":Landroid/icu/text/UnicodeSet;
    const/4 v7, 0x0

    .line 2563
    .local v7, "backup":Landroid/icu/impl/RuleCharacterIterator$Position;
    const/4 v11, 0x0

    .local v11, "lastItem":I
    const/4 v12, 0x0

    .local v12, "lastChar":I
    const/4 v13, 0x0

    .line 2564
    .local v13, "mode":I
    const/4 v14, 0x0

    .line 2566
    .local v14, "op":C
    const/4 v15, 0x0

    .line 2568
    .local v15, "invert":Z
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 2569
    const/16 v16, 0x0

    move-object/from16 v9, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v2

    move v2, v11

    move-object v11, v0

    .line 2571
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .local v2, "lastItem":I
    .local v9, "lastString":Ljava/lang/String;
    .local v11, "buf":Ljava/lang/StringBuilder;
    .local v12, "usePat":Z
    .local v13, "lastChar":I
    .local v14, "mode":I
    .local v15, "op":C
    .local v16, "invert":Z
    :goto_38
    move/from16 v17, v12

    .end local v12    # "usePat":Z
    .local v17, "usePat":Z
    const/4 v12, 0x2

    if-eq v14, v12, :cond_349

    invoke-virtual {v3}, Landroid/icu/impl/RuleCharacterIterator;->atEnd()Z

    move-result v0

    if-nez v0, :cond_349

    .line 2583
    const/4 v0, 0x0

    .line 2584
    .local v0, "c":I
    const/16 v19, 0x0

    .line 2585
    .local v19, "literal":Z
    const/16 v20, 0x0

    .line 2590
    .local v20, "nested":Landroid/icu/text/UnicodeSet;
    const/16 v21, 0x0

    .line 2591
    .local v21, "setMode":I
    invoke-static {v3, v10}, Landroid/icu/text/UnicodeSet;->resemblesPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;I)Z

    move-result v22

    if-eqz v22, :cond_55

    .line 2592
    const/16 v21, 0x2

    move-object v8, v7

    goto/16 :goto_cf

    .line 2605
    :cond_55
    invoke-virtual {v3, v7}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Landroid/icu/impl/RuleCharacterIterator$Position;)Landroid/icu/impl/RuleCharacterIterator$Position;

    move-result-object v7

    .line 2606
    invoke-virtual {v3, v10}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v8

    .line 2607
    .end local v0    # "c":I
    .local v8, "c":I
    invoke-virtual {v3}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v19

    .line 2609
    const/16 v0, 0x5b

    if-ne v8, v0, :cond_b3

    if-nez v19, :cond_b3

    .line 2610
    const/4 v12, 0x1

    if-ne v14, v12, :cond_73

    .line 2611
    invoke-virtual {v3, v7}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Landroid/icu/impl/RuleCharacterIterator$Position;)V

    .line 2612
    const/16 v21, 0x1

    move v0, v8

    move-object v8, v7

    goto/16 :goto_cf

    .line 2615
    :cond_73
    const/4 v14, 0x1

    .line 2616
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2617
    invoke-virtual {v3, v7}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Landroid/icu/impl/RuleCharacterIterator$Position;)Landroid/icu/impl/RuleCharacterIterator$Position;

    move-result-object v0

    .line 2618
    .end local v7    # "backup":Landroid/icu/impl/RuleCharacterIterator$Position;
    .local v0, "backup":Landroid/icu/impl/RuleCharacterIterator$Position;
    invoke-virtual {v3, v10}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v7

    .line 2619
    .end local v8    # "c":I
    .local v7, "c":I
    invoke-virtual {v3}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v8

    .line 2620
    .end local v19    # "literal":Z
    .local v8, "literal":Z
    const/16 v12, 0x5e

    if-ne v7, v12, :cond_a0

    if-nez v8, :cond_a0

    .line 2621
    const/16 v16, 0x1

    .line 2622
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2623
    invoke-virtual {v3, v0}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Landroid/icu/impl/RuleCharacterIterator$Position;)Landroid/icu/impl/RuleCharacterIterator$Position;

    move-result-object v0

    .line 2624
    invoke-virtual {v3, v10}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v7

    .line 2625
    invoke-virtual {v3}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v8

    move/from16 v28, v7

    move-object v7, v0

    move/from16 v0, v28

    goto :goto_a5

    .line 2629
    :cond_a0
    move/from16 v28, v7

    move-object v7, v0

    move/from16 v0, v28

    .local v0, "c":I
    .local v7, "backup":Landroid/icu/impl/RuleCharacterIterator$Position;
    :goto_a5
    const/16 v12, 0x2d

    if-ne v0, v12, :cond_ad

    .line 2630
    const/16 v19, 0x1

    move-object v8, v7

    .end local v8    # "literal":Z
    .restart local v19    # "literal":Z
    goto :goto_cf

    .line 2633
    .end local v19    # "literal":Z
    .restart local v8    # "literal":Z
    :cond_ad
    invoke-virtual {v3, v7}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Landroid/icu/impl/RuleCharacterIterator$Position;)V

    .line 2634
    move/from16 v12, v17

    goto :goto_38

    .line 2637
    .end local v0    # "c":I
    .local v8, "c":I
    .restart local v19    # "literal":Z
    :cond_b3
    if-eqz v4, :cond_cd

    .line 2638
    invoke-interface {v4, v8}, Landroid/icu/text/SymbolTable;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v12

    .line 2639
    .local v12, "m":Landroid/icu/text/UnicodeMatcher;
    if-eqz v12, :cond_cd

    .line 2641
    :try_start_bb
    move-object v0, v12

    check-cast v0, Landroid/icu/text/UnicodeSet;
    :try_end_be
    .catch Ljava/lang/ClassCastException; {:try_start_bb .. :try_end_be} :catch_c5

    move-object/from16 v20, v0

    .line 2642
    const/16 v21, 0x3

    .line 2645
    move v0, v8

    move-object v8, v7

    goto :goto_cf

    .line 2643
    :catch_c5
    move-exception v0

    .line 2644
    .local v0, "e":Ljava/lang/ClassCastException;
    move-object/from16 v25, v0

    .end local v0    # "e":Ljava/lang/ClassCastException;
    .local v25, "e":Ljava/lang/ClassCastException;
    const-string v0, "Syntax error"

    invoke-static {v3, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2655
    .end local v12    # "m":Landroid/icu/text/UnicodeMatcher;
    .end local v25    # "e":Ljava/lang/ClassCastException;
    :cond_cd
    move v0, v8

    move-object v8, v7

    .end local v7    # "backup":Landroid/icu/impl/RuleCharacterIterator$Position;
    .local v0, "c":I
    .local v8, "backup":Landroid/icu/impl/RuleCharacterIterator$Position;
    :goto_cf
    const/16 v7, 0x26

    if-eqz v21, :cond_14b

    .line 2656
    const/4 v12, 0x1

    if-ne v2, v12, :cond_e8

    .line 2657
    if-eqz v15, :cond_dd

    .line 2658
    const-string v12, "Char expected after operator"

    invoke-static {v3, v12}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2660
    :cond_dd
    invoke-direct {v1, v13, v13}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 2661
    const/4 v12, 0x0

    invoke-static {v5, v13, v12}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2662
    const/4 v2, 0x0

    .line 2663
    const/4 v15, 0x0

    move v12, v2

    goto :goto_e9

    .line 2656
    :cond_e8
    move v12, v2

    .line 2666
    .end local v2    # "lastItem":I
    .local v12, "lastItem":I
    :goto_e9
    const/16 v2, 0x2d

    if-eq v15, v2, :cond_ef

    if-ne v15, v7, :cond_f2

    .line 2667
    :cond_ef
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2670
    :cond_f2
    if-nez v20, :cond_101

    .line 2671
    if-nez v6, :cond_fc

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    move-object v6, v2

    .line 2672
    :cond_fc
    move-object/from16 v20, v6

    move-object/from16 v2, v20

    goto :goto_105

    .line 2670
    :cond_101
    move-object/from16 v2, v20

    move-object/from16 v20, v6

    .line 2674
    .end local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    .local v2, "nested":Landroid/icu/text/UnicodeSet;
    .local v20, "scratch":Landroid/icu/text/UnicodeSet;
    :goto_105
    packed-switch v21, :pswitch_data_382

    move/from16 v4, p4

    goto :goto_123

    .line 2683
    :pswitch_10b
    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Landroid/icu/text/UnicodeSet;->_toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;

    move/from16 v4, p4

    goto :goto_123

    .line 2679
    :pswitch_112
    invoke-virtual {v3, v10}, Landroid/icu/impl/RuleCharacterIterator;->skipIgnored(I)V

    .line 2680
    invoke-direct {v2, v3, v5, v4}, Landroid/icu/text/UnicodeSet;->applyPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/Appendable;Landroid/icu/text/SymbolTable;)V

    .line 2681
    move/from16 v4, p4

    goto :goto_123

    .line 2676
    :pswitch_11b
    add-int/lit8 v7, p5, 0x1

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/icu/text/UnicodeSet;->applyPattern(Landroid/icu/impl/RuleCharacterIterator;Landroid/icu/text/SymbolTable;Ljava/lang/Appendable;II)V

    .line 2677
    move v4, v6

    .line 2687
    :goto_123
    const/4 v6, 0x1

    .line 2689
    .end local v17    # "usePat":Z
    .local v6, "usePat":Z
    if-nez v14, :cond_131

    .line 2691
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 2692
    const/4 v14, 0x2

    .line 2693
    move-object v7, v8

    move v2, v12

    move v12, v6

    move-object/from16 v6, v20

    goto/16 :goto_351

    .line 2696
    :cond_131
    sparse-switch v15, :sswitch_data_38c

    goto :goto_140

    .line 2698
    :sswitch_135
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 2699
    goto :goto_140

    .line 2701
    :sswitch_139
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 2702
    goto :goto_140

    .line 2704
    :sswitch_13d
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 2708
    :goto_140
    const/4 v15, 0x0

    .line 2709
    const/4 v7, 0x2

    .line 2711
    .end local v12    # "lastItem":I
    .local v7, "lastItem":I
    move-object/from16 v4, p2

    move v12, v6

    move v2, v7

    move-object v7, v8

    move-object/from16 v6, v20

    goto/16 :goto_38

    .line 2714
    .end local v7    # "lastItem":I
    .local v2, "lastItem":I
    .local v6, "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v17    # "usePat":Z
    .local v20, "nested":Landroid/icu/text/UnicodeSet;
    :cond_14b
    move/from16 v4, p4

    if-nez v14, :cond_154

    .line 2715
    const-string v12, "Missing \'[\'"

    invoke-static {v3, v12}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2722
    :cond_154
    if-nez v19, :cond_2f6

    .line 2723
    const/16 v12, 0x5d

    sparse-switch v0, :sswitch_data_39a

    move-object/from16 v26, v6

    .end local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    .local v26, "scratch":Landroid/icu/text/UnicodeSet;
    goto/16 :goto_2f8

    .line 2772
    .end local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    :sswitch_15f
    if-eqz v15, :cond_16a

    const/16 v12, 0x2d

    if-eq v15, v12, :cond_16a

    .line 2773
    const-string v7, "Missing operand after operator"

    invoke-static {v3, v7}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2775
    :cond_16a
    const/4 v12, 0x1

    if-ne v2, v12, :cond_174

    .line 2776
    invoke-direct {v1, v13, v13}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 2777
    const/4 v12, 0x0

    invoke-static {v5, v13, v12}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2779
    :cond_174
    const/4 v2, 0x0

    .line 2780
    if-nez v11, :cond_17e

    .line 2781
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v7

    .end local v11    # "buf":Ljava/lang/StringBuilder;
    .local v7, "buf":Ljava/lang/StringBuilder;
    goto :goto_182

    .line 2783
    .end local v7    # "buf":Ljava/lang/StringBuilder;
    .restart local v11    # "buf":Ljava/lang/StringBuilder;
    :cond_17e
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2785
    :goto_182
    const/4 v7, 0x0

    .line 2786
    .local v7, "ok":Z
    :goto_183
    invoke-virtual {v3}, Landroid/icu/impl/RuleCharacterIterator;->atEnd()Z

    move-result v12

    move/from16 v23, v2

    .end local v2    # "lastItem":I
    .local v23, "lastItem":I
    const/16 v2, 0x7d

    if-nez v12, :cond_1a3

    .line 2787
    invoke-virtual {v3, v10}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v0

    .line 2788
    invoke-virtual {v3}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v19

    .line 2789
    if-ne v0, v2, :cond_19d

    if-nez v19, :cond_19d

    .line 2790
    const/4 v7, 0x1

    .line 2791
    move v12, v7

    move v7, v0

    goto :goto_1a5

    .line 2793
    :cond_19d
    invoke-static {v11, v0}, Landroid/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    move/from16 v2, v23

    goto :goto_183

    .line 2786
    :cond_1a3
    move v12, v7

    move v7, v0

    .line 2795
    .end local v0    # "c":I
    .local v7, "c":I
    .local v12, "ok":Z
    :goto_1a5
    if-nez v12, :cond_1ac

    .line 2796
    const-string v0, "Invalid multicharacter string"

    invoke-static {v3, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2801
    :cond_1ac
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2802
    .local v2, "curString":Ljava/lang/String;
    move-object/from16 v26, v6

    const/16 v6, 0x2d

    .end local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    if-ne v15, v6, :cond_1f6

    .line 2803
    if-nez v9, :cond_1bb

    const-string v0, ""

    goto :goto_1bc

    :cond_1bb
    move-object v0, v9

    :goto_1bc
    invoke-static {v0}, Landroid/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result v6

    .line 2804
    .local v6, "lastSingle":I
    move/from16 v24, v7

    .end local v7    # "c":I
    .local v24, "c":I
    invoke-static {v2}, Landroid/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result v7

    .line 2805
    .local v7, "curSingle":I
    const v0, 0x7fffffff

    if-eq v6, v0, :cond_1d3

    if-eq v7, v0, :cond_1d3

    .line 2806
    invoke-virtual {v1, v6, v7}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    move/from16 v27, v6

    goto :goto_1f1

    .line 2808
    :cond_1d3
    iget-object v0, v1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    move/from16 v27, v6

    .end local v6    # "lastSingle":I
    .local v27, "lastSingle":I
    sget-object v6, Landroid/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    if-ne v0, v6, :cond_1e2

    .line 2809
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, v1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    .line 2812
    :cond_1e2
    :try_start_1e2
    iget-object v0, v1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    const/4 v6, 0x1

    invoke-static {v9, v2, v6, v0}, Landroid/icu/impl/StringRange;->expand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_1e8} :catch_1e9

    .line 2815
    goto :goto_1f1

    .line 2813
    :catch_1e9
    move-exception v0

    .line 2814
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2817
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f1
    const/4 v0, 0x0

    .line 2818
    .end local v9    # "lastString":Ljava/lang/String;
    .local v0, "lastString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2819
    .end local v7    # "curSingle":I
    .end local v15    # "op":C
    .end local v27    # "lastSingle":I
    .local v6, "op":C
    move v15, v6

    move-object v9, v0

    goto :goto_1fd

    .line 2820
    .end local v0    # "lastString":Ljava/lang/String;
    .end local v6    # "op":C
    .end local v24    # "c":I
    .local v7, "c":I
    .restart local v9    # "lastString":Ljava/lang/String;
    .restart local v15    # "op":C
    :cond_1f6
    move/from16 v24, v7

    .end local v7    # "c":I
    .restart local v24    # "c":I
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 2821
    move-object v0, v2

    move-object v9, v0

    .line 2823
    :goto_1fd
    const/16 v0, 0x7b

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2824
    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    .line 2825
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2826
    move-object/from16 v4, p2

    move-object v7, v8

    move/from16 v12, v17

    move/from16 v2, v23

    move-object/from16 v6, v26

    goto/16 :goto_38

    .line 2769
    .end local v12    # "ok":Z
    .end local v23    # "lastItem":I
    .end local v24    # "c":I
    .end local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    .local v0, "c":I
    .local v2, "lastItem":I
    .local v6, "scratch":Landroid/icu/text/UnicodeSet;
    :sswitch_216
    move-object/from16 v26, v6

    .end local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    const-string v6, "\'^\' not after \'[\'"

    invoke-static {v3, v6}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2770
    goto/16 :goto_2f8

    .line 2725
    .end local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    :sswitch_21f
    move-object/from16 v26, v6

    .end local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    const/4 v6, 0x1

    if-ne v2, v6, :cond_22b

    .line 2726
    invoke-direct {v1, v13, v13}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 2727
    const/4 v6, 0x0

    invoke-static {v5, v13, v6}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2730
    :cond_22b
    const/16 v6, 0x2d

    if-ne v15, v6, :cond_236

    .line 2731
    invoke-direct {v1, v15, v15}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 2732
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23d

    .line 2733
    :cond_236
    if-ne v15, v7, :cond_23d

    .line 2734
    const-string v6, "Trailing \'&\'"

    invoke-static {v3, v6}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2736
    :cond_23d
    :goto_23d
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2737
    const/4 v14, 0x2

    .line 2738
    move-object/from16 v4, p2

    move-object v7, v8

    move/from16 v12, v17

    move-object/from16 v6, v26

    goto/16 :goto_38

    .line 2740
    .end local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    :sswitch_24a
    move-object/from16 v26, v6

    .end local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    if-nez v15, :cond_286

    .line 2741
    if-eqz v2, :cond_25a

    .line 2742
    int-to-char v15, v0

    .line 2743
    move-object/from16 v4, p2

    move-object v7, v8

    move/from16 v12, v17

    move-object/from16 v6, v26

    goto/16 :goto_38

    .line 2744
    :cond_25a
    if-eqz v9, :cond_266

    .line 2745
    int-to-char v15, v0

    .line 2746
    move-object/from16 v4, p2

    move-object v7, v8

    move/from16 v12, v17

    move-object/from16 v6, v26

    goto/16 :goto_38

    .line 2749
    :cond_266
    invoke-direct {v1, v0, v0}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 2750
    invoke-virtual {v3, v10}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v0

    .line 2751
    invoke-virtual {v3}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v6

    .line 2752
    .end local v19    # "literal":Z
    .local v6, "literal":Z
    if-ne v0, v12, :cond_284

    if-nez v6, :cond_284

    .line 2753
    const-string v7, "-]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2754
    const/4 v14, 0x2

    .line 2755
    move-object/from16 v4, p2

    move-object v7, v8

    move/from16 v12, v17

    move-object/from16 v6, v26

    goto/16 :goto_38

    .line 2759
    :cond_284
    move/from16 v19, v6

    .end local v6    # "literal":Z
    .restart local v19    # "literal":Z
    :cond_286
    const-string v6, "\'-\' not after char, string, or set"

    invoke-static {v3, v6}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2760
    move-object v7, v8

    goto/16 :goto_2f9

    .line 2762
    .end local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    .local v6, "scratch":Landroid/icu/text/UnicodeSet;
    :sswitch_28e
    move-object/from16 v26, v6

    .end local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    const/4 v6, 0x2

    if-ne v2, v6, :cond_29f

    if-nez v15, :cond_29f

    .line 2763
    int-to-char v15, v0

    .line 2764
    move-object/from16 v4, p2

    move-object v7, v8

    move/from16 v12, v17

    move-object/from16 v6, v26

    goto/16 :goto_38

    .line 2766
    :cond_29f
    const-string v6, "\'&\' not after set"

    invoke-static {v3, v6}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2767
    goto :goto_2f8

    .line 2834
    .end local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    :sswitch_2a5
    move-object/from16 v26, v6

    .end local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v3, v8}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Landroid/icu/impl/RuleCharacterIterator$Position;)Landroid/icu/impl/RuleCharacterIterator$Position;

    move-result-object v7

    .line 2835
    .end local v8    # "backup":Landroid/icu/impl/RuleCharacterIterator$Position;
    .local v7, "backup":Landroid/icu/impl/RuleCharacterIterator$Position;
    invoke-virtual {v3, v10}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v0

    .line 2836
    invoke-virtual {v3}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v19

    .line 2837
    if-ne v0, v12, :cond_2b9

    if-nez v19, :cond_2b9

    const/4 v6, 0x1

    goto :goto_2ba

    :cond_2b9
    const/4 v6, 0x0

    .line 2838
    .local v6, "anchor":Z
    :goto_2ba
    if-nez p2, :cond_2c4

    if-nez v6, :cond_2c4

    .line 2839
    const/16 v0, 0x24

    .line 2840
    invoke-virtual {v3, v7}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Landroid/icu/impl/RuleCharacterIterator$Position;)V

    .line 2841
    goto :goto_2f9

    .line 2843
    :cond_2c4
    if-eqz v6, :cond_2ec

    if-nez v15, :cond_2ec

    .line 2844
    const/4 v8, 0x1

    if-ne v2, v8, :cond_2d2

    .line 2845
    invoke-direct {v1, v13, v13}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 2846
    const/4 v8, 0x0

    invoke-static {v5, v13, v8}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2848
    :cond_2d2
    const v8, 0xffff

    invoke-direct {v1, v8}, Landroid/icu/text/UnicodeSet;->add_unchecked(I)Landroid/icu/text/UnicodeSet;

    .line 2849
    const/4 v8, 0x1

    .line 2850
    .end local v17    # "usePat":Z
    .local v8, "usePat":Z
    move/from16 v18, v0

    .end local v0    # "c":I
    .local v18, "c":I
    const/16 v0, 0x24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2851
    const/4 v14, 0x2

    .line 2852
    move-object/from16 v4, p2

    move v12, v8

    move-object/from16 v6, v26

    goto/16 :goto_38

    .line 2843
    .end local v8    # "usePat":Z
    .end local v18    # "c":I
    .restart local v0    # "c":I
    .restart local v17    # "usePat":Z
    :cond_2ec
    move/from16 v18, v0

    .line 2854
    .end local v0    # "c":I
    .restart local v18    # "c":I
    const-string v0, "Unquoted \'$\'"

    invoke-static {v3, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2855
    move/from16 v0, v18

    goto :goto_2f9

    .line 2722
    .end local v7    # "backup":Landroid/icu/impl/RuleCharacterIterator$Position;
    .end local v18    # "c":I
    .end local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v0    # "c":I
    .local v6, "scratch":Landroid/icu/text/UnicodeSet;
    .local v8, "backup":Landroid/icu/impl/RuleCharacterIterator$Position;
    :cond_2f6
    move-object/from16 v26, v6

    .line 2865
    .end local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    :goto_2f8
    move-object v7, v8

    .end local v8    # "backup":Landroid/icu/impl/RuleCharacterIterator$Position;
    .restart local v7    # "backup":Landroid/icu/impl/RuleCharacterIterator$Position;
    :goto_2f9
    const-string v6, "Invalid range"

    packed-switch v2, :pswitch_data_3b4

    goto :goto_341

    .line 2897
    :pswitch_2ff
    if-eqz v15, :cond_306

    .line 2898
    const-string v6, "Set expected after operator"

    invoke-static {v3, v6}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2900
    :cond_306
    move v6, v0

    .line 2901
    .end local v13    # "lastChar":I
    .local v6, "lastChar":I
    const/4 v2, 0x1

    move v13, v6

    goto :goto_341

    .line 2875
    .end local v6    # "lastChar":I
    .restart local v13    # "lastChar":I
    :pswitch_30a
    const/16 v12, 0x2d

    if-ne v15, v12, :cond_329

    .line 2876
    if-eqz v9, :cond_313

    .line 2877
    invoke-static {v3, v6}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2879
    :cond_313
    if-lt v13, v0, :cond_318

    .line 2882
    invoke-static {v3, v6}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2884
    :cond_318
    invoke-direct {v1, v13, v0}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 2885
    const/4 v12, 0x0

    invoke-static {v5, v13, v12}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2886
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2887
    invoke-static {v5, v0, v12}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2888
    const/4 v2, 0x0

    .line 2889
    const/4 v6, 0x0

    move v15, v6

    .end local v15    # "op":C
    .local v6, "op":C
    goto :goto_341

    .line 2891
    .end local v6    # "op":C
    .restart local v15    # "op":C
    :cond_329
    const/4 v12, 0x0

    invoke-direct {v1, v13, v13}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 2892
    invoke-static {v5, v13, v12}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2893
    move v6, v0

    .line 2895
    .end local v13    # "lastChar":I
    .local v6, "lastChar":I
    move v13, v6

    goto :goto_341

    .line 2867
    .end local v6    # "lastChar":I
    .restart local v13    # "lastChar":I
    :pswitch_333
    const/16 v12, 0x2d

    if-ne v15, v12, :cond_33c

    if-eqz v9, :cond_33c

    .line 2868
    invoke-static {v3, v6}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2870
    :cond_33c
    const/4 v2, 0x1

    .line 2871
    move v6, v0

    .line 2872
    .end local v13    # "lastChar":I
    .restart local v6    # "lastChar":I
    const/4 v8, 0x0

    .line 2873
    .end local v9    # "lastString":Ljava/lang/String;
    .local v8, "lastString":Ljava/lang/String;
    move v13, v6

    move-object v9, v8

    .line 2904
    .end local v0    # "c":I
    .end local v6    # "lastChar":I
    .end local v8    # "lastString":Ljava/lang/String;
    .end local v19    # "literal":Z
    .end local v20    # "nested":Landroid/icu/text/UnicodeSet;
    .end local v21    # "setMode":I
    .restart local v9    # "lastString":Ljava/lang/String;
    .restart local v13    # "lastChar":I
    :goto_341
    move-object/from16 v4, p2

    move/from16 v12, v17

    move-object/from16 v6, v26

    goto/16 :goto_38

    .line 2571
    .end local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    .local v6, "scratch":Landroid/icu/text/UnicodeSet;
    :cond_349
    move/from16 v4, p4

    move-object/from16 v26, v6

    .line 2906
    .end local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    move/from16 v12, v17

    move-object/from16 v6, v26

    .end local v17    # "usePat":Z
    .end local v26    # "scratch":Landroid/icu/text/UnicodeSet;
    .restart local v6    # "scratch":Landroid/icu/text/UnicodeSet;
    .local v12, "usePat":Z
    :goto_351
    const/4 v8, 0x2

    if-eq v14, v8, :cond_359

    .line 2907
    const-string v0, "Missing \']\'"

    invoke-static {v3, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2910
    :cond_359
    invoke-virtual {v3, v10}, Landroid/icu/impl/RuleCharacterIterator;->skipIgnored(I)V

    .line 2918
    and-int/lit8 v0, v4, 0x6

    if-eqz v0, :cond_363

    .line 2919
    invoke-virtual {v1, v4}, Landroid/icu/text/UnicodeSet;->closeOver(I)Landroid/icu/text/UnicodeSet;

    .line 2921
    :cond_363
    if-eqz v16, :cond_36c

    .line 2922
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->removeAllStrings()Landroid/icu/text/UnicodeSet;

    .line 2927
    :cond_36c
    if-eqz v12, :cond_379

    .line 2928
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, p3

    invoke-static {v8, v0}, Landroid/icu/text/UnicodeSet;->append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    move v0, v2

    goto :goto_381

    .line 2930
    :cond_379
    move-object/from16 v8, p3

    move v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .end local v2    # "lastItem":I
    .local v0, "lastItem":I
    invoke-direct {v1, v8, v3, v2}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    .line 2932
    :goto_381
    return-void

    :pswitch_data_382
    .packed-switch 0x1
        :pswitch_11b
        :pswitch_112
        :pswitch_10b
    .end packed-switch

    :sswitch_data_38c
    .sparse-switch
        0x0 -> :sswitch_13d
        0x26 -> :sswitch_139
        0x2d -> :sswitch_135
    .end sparse-switch

    :sswitch_data_39a
    .sparse-switch
        0x24 -> :sswitch_2a5
        0x26 -> :sswitch_28e
        0x2d -> :sswitch_24a
        0x5d -> :sswitch_21f
        0x5e -> :sswitch_216
        0x7b -> :sswitch_15f
    .end sparse-switch

    :pswitch_data_3b4
    .packed-switch 0x0
        :pswitch_333
        :pswitch_30a
        :pswitch_2ff
    .end packed-switch
.end method

.method private greylist-max-o applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;
    .registers 17
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ppos"    # Ljava/text/ParsePosition;
    .param p3, "symbols"    # Landroid/icu/text/SymbolTable;

    .line 3701
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 3706
    .local v2, "pos":I
    add-int/lit8 v0, v2, 0x5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v6, 0x0

    if-le v0, v1, :cond_e

    .line 3707
    return-object v6

    .line 3710
    :cond_e
    const/4 v7, 0x0

    .line 3711
    .local v7, "posix":Z
    const/4 v8, 0x0

    .line 3712
    .local v8, "isName":Z
    const/4 v9, 0x0

    .line 3715
    .local v9, "invert":Z
    const-string v0, "[:"

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {p1, v2, v0, v10, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_38

    .line 3716
    const/4 v7, 0x1

    .line 3717
    add-int/lit8 v0, v2, 0x2

    invoke-static {p1, v0}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3718
    .end local v2    # "pos":I
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_36

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_36

    .line 3719
    add-int/lit8 v0, v0, 0x1

    .line 3720
    const/4 v9, 0x1

    move v3, v0

    goto :goto_7d

    .line 3738
    :cond_36
    move v3, v0

    goto :goto_7d

    .line 3722
    .end local v0    # "pos":I
    .restart local v2    # "pos":I
    :cond_38
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    const-string v3, "\\p"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 3723
    const-string v1, "\\N"

    invoke-virtual {p1, v2, v1, v10, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_4e

    .line 3734
    :cond_4d
    return-object v6

    .line 3724
    :cond_4e
    :goto_4e
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3725
    .local v1, "c":C
    const/16 v3, 0x50

    if-ne v1, v3, :cond_5a

    move v3, v12

    goto :goto_5b

    :cond_5a
    move v3, v10

    :goto_5b
    move v9, v3

    .line 3726
    const/16 v3, 0x4e

    if-ne v1, v3, :cond_61

    move v10, v12

    :cond_61
    move v8, v10

    .line 3727
    add-int/lit8 v3, v2, 0x2

    invoke-static {p1, v3}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 3728
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_c4

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x7b

    if-eq v2, v4, :cond_7c

    move-object/from16 v10, p3

    move v2, v3

    goto :goto_c6

    .line 3732
    .end local v1    # "c":C
    :cond_7c
    nop

    .line 3738
    :goto_7d
    if-eqz v7, :cond_82

    const-string v1, ":]"

    goto :goto_84

    :cond_82
    const-string v1, "}"

    :goto_84
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3739
    .local v1, "close":I
    if-gez v1, :cond_8b

    .line 3741
    return-object v6

    .line 3747
    :cond_8b
    const/16 v2, 0x3d

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 3749
    .local v2, "equals":I
    if-ltz v2, :cond_a2

    if-ge v2, v1, :cond_a2

    if-nez v8, :cond_a2

    .line 3751
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3752
    .local v4, "propName":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, "valueName":Ljava/lang/String;
    goto :goto_ad

    .line 3757
    .end local v4    # "propName":Ljava/lang/String;
    .end local v5    # "valueName":Ljava/lang/String;
    :cond_a2
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3758
    .restart local v4    # "propName":Ljava/lang/String;
    const-string v5, ""

    .line 3761
    .restart local v5    # "valueName":Ljava/lang/String;
    if-eqz v8, :cond_ad

    .line 3767
    move-object v5, v4

    .line 3768
    const-string v4, "na"

    .line 3772
    :cond_ad
    :goto_ad
    move-object/from16 v10, p3

    invoke-virtual {p0, v4, v5, v10}, Landroid/icu/text/UnicodeSet;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;

    .line 3774
    if-eqz v9, :cond_bb

    .line 3775
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/UnicodeSet;->removeAllStrings()Landroid/icu/text/UnicodeSet;

    .line 3779
    :cond_bb
    if-eqz v7, :cond_be

    goto :goto_bf

    :cond_be
    move v11, v12

    :goto_bf
    add-int/2addr v11, v1

    invoke-virtual {p2, v11}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 3781
    return-object p0

    .line 3728
    .end local v3    # "pos":I
    .end local v4    # "propName":Ljava/lang/String;
    .end local v5    # "valueName":Ljava/lang/String;
    .local v1, "c":C
    .local v2, "pos":I
    :cond_c4
    move-object/from16 v10, p3

    .line 3730
    :goto_c6
    return-object v6
.end method

.method private greylist-max-o applyPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/Appendable;Landroid/icu/text/SymbolTable;)V
    .registers 9
    .param p1, "chars"    # Landroid/icu/impl/RuleCharacterIterator;
    .param p2, "rebuiltPat"    # Ljava/lang/Appendable;
    .param p3, "symbols"    # Landroid/icu/text/SymbolTable;

    .line 3796
    invoke-virtual {p1}, Landroid/icu/impl/RuleCharacterIterator;->getCurrentBuffer()Ljava/lang/String;

    move-result-object v0

    .line 3797
    .local v0, "patStr":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/impl/RuleCharacterIterator;->getCurrentBufferPos()I

    move-result v1

    .line 3798
    .local v1, "start":I
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3799
    .local v2, "pos":Ljava/text/ParsePosition;
    invoke-direct {p0, v0, v2, p3}, Landroid/icu/text/UnicodeSet;->applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;

    .line 3800
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int/2addr v3, v1

    .line 3801
    .local v3, "length":I
    if-nez v3, :cond_1c

    .line 3802
    const-string v4, "Invalid property pattern"

    invoke-static {p1, v4}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 3804
    :cond_1c
    invoke-virtual {p1, v3}, Landroid/icu/impl/RuleCharacterIterator;->jumpahead(I)V

    .line 3805
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/icu/text/UnicodeSet;->append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 3806
    return-void
.end method

.method private greylist-max-o checkFrozen()V
    .registers 3

    .line 4369
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4372
    return-void

    .line 4370
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist closeOverAddCaseMappings()V
    .registers 14

    .line 4050
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    .line 4052
    .local v0, "csp":Landroid/icu/impl/UCaseProps;
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 4054
    .local v1, "foldSet":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p0, p0}, Landroid/icu/text/UnicodeSet;->maybeOnlyCaseSensitive(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    .line 4057
    .local v2, "codePoints":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v3

    .line 4059
    .local v3, "n":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4061
    .local v4, "full":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    const/4 v6, 0x0

    if-ge v5, v3, :cond_47

    .line 4062
    invoke-virtual {v2, v5}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v7

    .line 4063
    .local v7, "start":I
    invoke-virtual {v2, v5}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v8

    .line 4067
    .local v8, "end":I
    move v9, v7

    .local v9, "cp":I
    :goto_21
    if-gt v9, v8, :cond_44

    .line 4068
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v0, v9, v10, v4, v11}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v12

    .line 4069
    .local v12, "result":I
    invoke-static {v1, v12, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 4071
    invoke-virtual {v0, v9, v10, v4, v11}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v12

    .line 4072
    invoke-static {v1, v12, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 4074
    invoke-virtual {v0, v9, v10, v4, v11}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v10

    .line 4075
    .end local v12    # "result":I
    .local v10, "result":I
    invoke-static {v1, v10, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 4077
    invoke-virtual {v0, v9, v4, v6}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v10

    .line 4078
    invoke-static {v1, v10, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 4067
    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    .line 4061
    .end local v7    # "start":I
    .end local v8    # "end":I
    .end local v9    # "cp":I
    .end local v10    # "result":I
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 4081
    .end local v5    # "i":I
    :cond_47
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 4082
    sget-object v5, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 4083
    .local v5, "root":Landroid/icu/util/ULocale;
    invoke-static {v5}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v7

    .line 4084
    .local v7, "bi":Landroid/icu/text/BreakIterator;
    iget-object v8, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v8}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_59
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_82

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4086
    .local v9, "str":Ljava/lang/String;
    invoke-static {v5, v9}, Landroid/icu/lang/UCharacter;->toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 4087
    invoke-static {v5, v9, v7}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 4088
    invoke-static {v5, v9}, Landroid/icu/lang/UCharacter;->toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 4089
    invoke-static {v9, v6}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 4090
    .end local v9    # "str":Ljava/lang/String;
    goto :goto_59

    .line 4092
    .end local v5    # "root":Landroid/icu/util/ULocale;
    .end local v7    # "bi":Landroid/icu/text/BreakIterator;
    :cond_82
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 4093
    return-void
.end method

.method private blacklist closeOverCaseInsensitive(Z)V
    .registers 11
    .param p1, "simple"    # Z

    .line 4001
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    .line 4003
    .local v0, "csp":Landroid/icu/impl/UCaseProps;
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 4009
    .local v1, "foldSet":Landroid/icu/text/UnicodeSet;
    if-nez p1, :cond_14

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4010
    iget-object v2, v1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->clear()V

    .line 4013
    :cond_14
    invoke-virtual {p0, p0}, Landroid/icu/text/UnicodeSet;->maybeOnlyCaseSensitive(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    .line 4016
    .local v2, "codePoints":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v3

    .line 4017
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v3, :cond_3f

    .line 4018
    invoke-virtual {v2, v4}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v5

    .line 4019
    .local v5, "start":I
    invoke-virtual {v2, v4}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v6

    .line 4021
    .local v6, "end":I
    if-eqz p1, :cond_33

    .line 4022
    move v7, v5

    .local v7, "cp":I
    :goto_2a
    if-gt v7, v6, :cond_32

    .line 4023
    invoke-virtual {v0, v7, v1}, Landroid/icu/impl/UCaseProps;->addSimpleCaseClosure(ILandroid/icu/text/UnicodeSet;)V

    .line 4022
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .end local v7    # "cp":I
    :cond_32
    goto :goto_3c

    .line 4026
    :cond_33
    move v7, v5

    .restart local v7    # "cp":I
    :goto_34
    if-gt v7, v6, :cond_3c

    .line 4027
    invoke-virtual {v0, v7, v1}, Landroid/icu/impl/UCaseProps;->addCaseClosure(ILandroid/icu/text/UnicodeSet;)V

    .line 4026
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 4017
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "cp":I
    :cond_3c
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 4031
    .end local v4    # "i":I
    :cond_3f
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 4032
    if-eqz p1, :cond_4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4e

    :cond_4d
    const/4 v4, 0x0

    .line 4033
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_4e
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_54
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4034
    .local v6, "s":Ljava/lang/String;
    if-eqz p1, :cond_70

    .line 4035
    invoke-static {v6, v4}, Landroid/icu/text/UnicodeSet;->scfString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 4036
    invoke-virtual {v1, v6}, Landroid/icu/text/UnicodeSet;->remove(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_7e

    .line 4039
    :cond_70
    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 4040
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v0, v7, v1}, Landroid/icu/impl/UCaseProps;->addStringCaseClosure(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z

    move-result v8

    if-nez v8, :cond_7e

    .line 4041
    invoke-virtual {v1, v7}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 4044
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    :cond_7e
    :goto_7e
    goto :goto_54

    .line 4046
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_7f
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 4047
    return-void
.end method

.method public static greylist-max-o compare(ILjava/lang/CharSequence;)I
    .registers 3
    .param p0, "codePoint"    # I
    .param p1, "string"    # Ljava/lang/CharSequence;

    .line 4709
    invoke-static {p1, p0}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public static greylist-max-o compare(Ljava/lang/CharSequence;I)I
    .registers 3
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "codePoint"    # I

    .line 4698
    invoke-static {p0, p1}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    .line 4722
    .local p0, "collection1":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "collection2":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/util/Iterator;Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o compare(Ljava/util/Collection;Ljava/util/Collection;Landroid/icu/text/UnicodeSet$ComparisonStyle;)I
    .registers 8
    .param p2, "style"    # Landroid/icu/text/UnicodeSet$ComparisonStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;",
            "Landroid/icu/text/UnicodeSet$ComparisonStyle;",
            ")I"
        }
    .end annotation

    .line 4758
    .local p0, "collection1":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "collection2":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    sget-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    if-eq p2, v0, :cond_1f

    .line 4759
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4760
    .local v0, "diff":I
    if-eqz v0, :cond_1f

    .line 4761
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_15

    move v3, v2

    goto :goto_16

    :cond_15
    move v3, v1

    :goto_16
    sget-object v4, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    if-ne p2, v4, :cond_1b

    move v1, v2

    :cond_1b
    if-ne v3, v1, :cond_1e

    const/4 v2, -0x1

    :cond_1e
    return v2

    .line 4764
    .end local v0    # "diff":I
    :cond_1f
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o compare(Ljava/util/Iterator;Ljava/util/Iterator;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4738
    .local p0, "first":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "other":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4739
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, -0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 4740
    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 4741
    const/4 v0, 0x1

    return v0

    .line 4743
    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 4744
    .local v0, "item1":Ljava/lang/Comparable;, "TT;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 4745
    .local v1, "item2":Ljava/lang/Comparable;, "TT;"
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 4746
    .local v2, "result":I
    if-eqz v2, :cond_2c

    .line 4747
    return v2

    .line 4749
    .end local v0    # "item1":Ljava/lang/Comparable;, "TT;"
    .end local v1    # "item2":Ljava/lang/Comparable;, "TT;"
    .end local v2    # "result":I
    :cond_2c
    goto :goto_1
.end method

.method private greylist-max-o containsAll(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .line 2055
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt p2, v0, :cond_8

    .line 2056
    return v1

    .line 2058
    :cond_8
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 2059
    .local v0, "cp":I
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {p0, p1, v2}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2060
    return v1

    .line 2062
    :cond_1e
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2063
    .local v3, "setStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_48

    .line 2064
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p2

    invoke-direct {p0, p1, v4}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 2065
    return v1

    .line 2067
    .end local v3    # "setStr":Ljava/lang/String;
    :cond_48
    goto :goto_24

    .line 2068
    :cond_49
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o ensureBufferCapacity(I)V
    .registers 4
    .param p1, "newLen"    # I

    .line 3022
    const v0, 0x110001

    if-le p1, v0, :cond_8

    .line 3023
    const p1, 0x110001

    .line 3025
    :cond_8
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    array-length v0, v0

    if-gt p1, v0, :cond_12

    return-void

    .line 3026
    :cond_12
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->nextCapacity(I)I

    move-result v0

    .line 3027
    .local v0, "newCapacity":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    .line 3030
    return-void
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 7
    .param p1, "newLen"    # I

    .line 3010
    const v0, 0x110001

    if-le p1, v0, :cond_8

    .line 3011
    const p1, 0x110001

    .line 3013
    :cond_8
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v0, v0

    if-gt p1, v0, :cond_e

    return-void

    .line 3014
    :cond_e
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->nextCapacity(I)I

    move-result v0

    .line 3015
    .local v0, "newCapacity":I
    new-array v1, v0, [I

    .line 3017
    .local v1, "temp":[I
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3018
    iput-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 3019
    return-void
.end method

.method private final greylist-max-o findCodePoint(I)I
    .registers 6
    .param p1, "c"    # I

    .line 1773
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ge p1, v0, :cond_8

    return v1

    .line 1776
    :cond_8
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1b

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v2, v1

    aget v0, v0, v2

    if-lt p1, v0, :cond_1b

    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1777
    :cond_1b
    const/4 v0, 0x0

    .line 1778
    .local v0, "lo":I
    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v1, v1, -0x1

    .line 1782
    .local v1, "hi":I
    :goto_20
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1783
    .local v2, "i":I
    if-ne v2, v0, :cond_27

    return v1

    .line 1784
    :cond_27
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v3, v3, v2

    if-ge p1, v3, :cond_2f

    .line 1785
    move v1, v2

    goto :goto_30

    .line 1787
    :cond_2f
    move v0, v2

    .line 1789
    .end local v2    # "i":I
    :goto_30
    goto :goto_20
.end method

.method public static whitelist test-api from(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .registers 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 1502
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .registers 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 1512
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDefaultXSymbolTable()Landroid/icu/text/UnicodeSet$XSymbolTable;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5000
    sget-object v0, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    return-object v0
.end method

.method private static greylist-max-o getSingleCP(Ljava/lang/CharSequence;)I
    .registers 4
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 1426
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    .line 1427
    :cond_d
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 1428
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1429
    .local v0, "cp":I
    const v1, 0xffff

    if-le v0, v1, :cond_1e

    .line 1430
    return v0

    .line 1433
    .end local v0    # "cp":I
    :cond_1e
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist-max-o getSingleCodePoint(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4814
    invoke-static {p0}, Landroid/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o matchRest(Landroid/icu/text/Replaceable;IILjava/lang/String;)I
    .registers 10
    .param p0, "text"    # Landroid/icu/text/Replaceable;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "s"    # Ljava/lang/String;

    .line 1051
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1052
    .local v0, "slen":I
    const/4 v1, 0x0

    if-ge p1, p2, :cond_20

    .line 1053
    sub-int v2, p2, p1

    .line 1054
    .local v2, "maxLen":I
    if-le v2, v0, :cond_c

    move v2, v0

    .line 1055
    :cond_c
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_1f

    .line 1056
    add-int v4, p1, v3

    invoke-interface {p0, v4}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v4

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1c

    return v1

    .line 1055
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .end local v3    # "i":I
    :cond_1f
    goto :goto_3c

    .line 1059
    .end local v2    # "maxLen":I
    :cond_20
    sub-int v2, p1, p2

    .line 1060
    .restart local v2    # "maxLen":I
    if-le v2, v0, :cond_25

    move v2, v0

    .line 1061
    :cond_25
    add-int/lit8 v0, v0, -0x1

    .line 1062
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_28
    if-ge v3, v2, :cond_3c

    .line 1063
    sub-int v4, p1, v3

    invoke-interface {p0, v4}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v4

    sub-int v5, v0, v3

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_39

    return v1

    .line 1062
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 1066
    .end local v3    # "i":I
    :cond_3c
    :goto_3c
    return v2
.end method

.method private static greylist-max-o matchesAt(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)I
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offsetInText"    # I
    .param p2, "substring"    # Ljava/lang/CharSequence;

    .line 1118
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1119
    .local v0, "len":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1120
    .local v1, "textLength":I
    add-int v2, v1, p1

    const/4 v3, -0x1

    if-le v2, v0, :cond_e

    .line 1121
    return v3

    .line 1123
    :cond_e
    const/4 v2, 0x0

    .line 1124
    .local v2, "i":I
    move v4, p1

    .local v4, "j":I
    :goto_10
    if-ge v2, v0, :cond_22

    .line 1125
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1126
    .local v5, "pc":C
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1127
    .local v6, "tc":C
    if-eq v5, v6, :cond_1d

    return v3

    .line 1124
    .end local v5    # "pc":C
    .end local v6    # "tc":C
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1129
    .end local v4    # "j":I
    :cond_22
    return v2
.end method

.method private static final greylist-max-o max(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 3267
    if-le p0, p1, :cond_4

    move v0, p0

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    return v0
.end method

.method private static greylist-max-o mungeCharName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "source"    # Ljava/lang/String;

    .line 3391
    invoke-static {p0}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3392
    const/4 v0, 0x0

    .line 3393
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 3394
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3395
    .local v2, "ch":C
    invoke-static {v2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 3396
    if-nez v0, :cond_23

    .line 3397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_32

    .line 3398
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_32

    .line 3399
    goto :goto_39

    .line 3401
    :cond_32
    :goto_32
    const/16 v2, 0x20

    .line 3403
    :cond_34
    if-eqz v0, :cond_39

    .line 3404
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3393
    .end local v2    # "ch":C
    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3407
    .end local v1    # "i":I
    :cond_3c
    if-nez v0, :cond_40

    move-object v1, p0

    goto :goto_44

    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_44
    return-object v1
.end method

.method private blacklist nextCapacity(I)I
    .registers 4
    .param p1, "minCapacity"    # I

    .line 2996
    const/16 v0, 0x19

    if-ge p1, v0, :cond_7

    .line 2997
    add-int/lit8 v0, p1, 0x19

    return v0

    .line 2998
    :cond_7
    const/16 v0, 0x9c4

    if-gt p1, v0, :cond_e

    .line 2999
    mul-int/lit8 v0, p1, 0x5

    return v0

    .line 3001
    :cond_e
    mul-int/lit8 v0, p1, 0x2

    .line 3002
    .local v0, "newCapacity":I
    const v1, 0x110001

    if-le v0, v1, :cond_18

    .line 3003
    const v0, 0x110001

    .line 3005
    :cond_18
    return v0
.end method

.method private greylist-max-o range(II)[I
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 3036
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    if-nez v0, :cond_f

    .line 3037
    add-int/lit8 v0, p2, 0x1

    const/high16 v1, 0x110000

    filled-new-array {p1, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    goto :goto_1b

    .line 3039
    :cond_f
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 3040
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 3042
    :goto_1b
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    return-object v0
.end method

.method public static greylist-max-o resemblesPattern(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 607
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 608
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_16

    .line 609
    :cond_10
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->resemblesPropertyPattern(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 607
    :goto_19
    return v0
.end method

.method private static greylist-max-o resemblesPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;I)Z
    .registers 9
    .param p0, "chars"    # Landroid/icu/impl/RuleCharacterIterator;
    .param p1, "iterOpts"    # I

    .line 3683
    const/4 v0, 0x0

    .line 3684
    .local v0, "result":Z
    and-int/lit8 p1, p1, -0x3

    .line 3685
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Landroid/icu/impl/RuleCharacterIterator$Position;)Landroid/icu/impl/RuleCharacterIterator$Position;

    move-result-object v1

    .line 3686
    .local v1, "pos":Landroid/icu/impl/RuleCharacterIterator$Position;
    invoke-virtual {p0, p1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v2

    .line 3687
    .local v2, "c":I
    const/16 v3, 0x5b

    if-eq v2, v3, :cond_14

    const/16 v4, 0x5c

    if-ne v2, v4, :cond_32

    .line 3688
    :cond_14
    and-int/lit8 v4, p1, -0x5

    invoke-virtual {p0, v4}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v4

    .line 3689
    .local v4, "d":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v3, :cond_24

    const/16 v3, 0x3a

    if-ne v4, v3, :cond_31

    move v5, v6

    goto :goto_31

    .line 3690
    :cond_24
    const/16 v3, 0x4e

    if-eq v4, v3, :cond_30

    const/16 v3, 0x70

    if-eq v4, v3, :cond_30

    const/16 v3, 0x50

    if-ne v4, v3, :cond_31

    :cond_30
    move v5, v6

    :cond_31
    :goto_31
    move v0, v5

    .line 3692
    .end local v4    # "d":I
    :cond_32
    invoke-virtual {p0, v1}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Landroid/icu/impl/RuleCharacterIterator$Position;)V

    .line 3693
    return v0
.end method

.method private static greylist-max-o resemblesPropertyPattern(Ljava/lang/String;I)Z
    .registers 11
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 3663
    add-int/lit8 v0, p1, 0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_a

    .line 3664
    return v2

    .line 3668
    :cond_a
    const-string v0, "[:"

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_29

    .line 3669
    const/4 v4, 0x1

    const-string v6, "\\p"

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v3, p0

    move v5, p1

    .end local p0    # "pattern":Ljava/lang/String;
    .end local p1    # "pos":I
    .local v3, "pattern":Ljava/lang/String;
    .local v5, "pos":I
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-nez p0, :cond_2b

    .line 3670
    const-string p0, "\\N"

    invoke-virtual {v3, v5, p0, v2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_2b

    .line 3668
    .end local v3    # "pattern":Ljava/lang/String;
    .end local v5    # "pos":I
    .restart local p0    # "pattern":Ljava/lang/String;
    .restart local p1    # "pos":I
    :cond_29
    move-object v3, p0

    move v5, p1

    .line 3670
    .end local p0    # "pattern":Ljava/lang/String;
    .end local p1    # "pos":I
    .restart local v3    # "pattern":Ljava/lang/String;
    .restart local v5    # "pos":I
    :cond_2b
    :goto_2b
    const/4 v2, 0x1

    .line 3668
    :cond_2c
    return v2
.end method

.method private greylist-max-o retain([III)Landroid/icu/text/UnicodeSet;
    .registers 12
    .param p1, "other"    # [I
    .param p2, "otherLen"    # I
    .param p3, "polarity"    # I

    .line 3201
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    .line 3202
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    const/4 v2, 0x0

    .line 3203
    .local v2, "k":I
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    aget v0, v3, v0

    .line 3204
    .local v0, "a":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .local v3, "j":I
    aget v1, p1, v1

    .line 3209
    .local v1, "b":I
    :goto_13
    const/high16 v5, 0x110000

    packed-switch p3, :pswitch_data_10a

    goto/16 :goto_107

    .line 3222
    :pswitch_1a
    if-ge v0, v1, :cond_2e

    .line 3223
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .local v6, "k":I
    aput v0, v5, v2

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget v0, v2, v4

    xor-int/lit8 p3, p3, 0x1

    move v4, v5

    move v2, v6

    goto/16 :goto_107

    .line 3224
    .end local v5    # "i":I
    .end local v6    # "k":I
    .restart local v2    # "k":I
    .restart local v4    # "i":I
    :cond_2e
    if-ge v1, v0, :cond_40

    .line 3225
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .restart local v6    # "k":I
    aput v1, v5, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .local v2, "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    move v3, v2

    move v2, v6

    goto/16 :goto_107

    .line 3227
    .end local v6    # "k":I
    .local v2, "k":I
    .restart local v3    # "j":I
    :cond_40
    if-ne v0, v5, :cond_44

    goto/16 :goto_dc

    .line 3228
    :cond_44
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .restart local v6    # "k":I
    aput v0, v5, v2

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v0, v2, v4

    xor-int/lit8 p3, p3, 0x1

    .line 3229
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .local v2, "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    .line 3231
    move v3, v2

    move v4, v5

    move v2, v6

    goto/16 :goto_107

    .line 3244
    .end local v5    # "i":I
    .end local v6    # "k":I
    .local v2, "k":I
    .restart local v3    # "j":I
    .restart local v4    # "i":I
    :pswitch_5d
    if-ge v1, v0, :cond_68

    .line 3245
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    move v3, v5

    goto/16 :goto_107

    .line 3246
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :cond_68
    if-ge v0, v1, :cond_7c

    .line 3247
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .restart local v6    # "k":I
    aput v0, v5, v2

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget v0, v2, v4

    xor-int/lit8 p3, p3, 0x1

    move v4, v5

    move v2, v6

    goto/16 :goto_107

    .line 3249
    .end local v5    # "i":I
    .end local v6    # "k":I
    .restart local v2    # "k":I
    .restart local v4    # "i":I
    :cond_7c
    if-ne v0, v5, :cond_80

    goto/16 :goto_dc

    .line 3250
    :cond_80
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .local v6, "i":I
    aget v0, v5, v4

    xor-int/lit8 p3, p3, 0x1

    .line 3251
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    move v3, v4

    move v4, v6

    goto/16 :goto_107

    .line 3233
    .end local v6    # "i":I
    .restart local v3    # "j":I
    .local v4, "i":I
    :pswitch_92
    if-ge v0, v1, :cond_9f

    .line 3234
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .restart local v6    # "i":I
    aget v0, v5, v4

    xor-int/lit8 p3, p3, 0x1

    move v4, v6

    goto/16 :goto_107

    .line 3235
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :cond_9f
    if-ge v1, v0, :cond_b0

    .line 3236
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .local v6, "k":I
    aput v1, v5, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .local v2, "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    move v3, v2

    move v2, v6

    goto :goto_107

    .line 3238
    .end local v6    # "k":I
    .local v2, "k":I
    .restart local v3    # "j":I
    :cond_b0
    if-ne v0, v5, :cond_b3

    goto :goto_dc

    .line 3239
    :cond_b3
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .local v6, "i":I
    aget v0, v5, v4

    xor-int/lit8 p3, p3, 0x1

    .line 3240
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    .line 3242
    move v3, v4

    move v4, v6

    goto :goto_107

    .line 3211
    .end local v6    # "i":I
    .restart local v3    # "j":I
    .local v4, "i":I
    :pswitch_c4
    if-ge v0, v1, :cond_d0

    .line 3212
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .restart local v6    # "i":I
    aget v0, v5, v4

    xor-int/lit8 p3, p3, 0x1

    move v4, v6

    goto :goto_107

    .line 3213
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :cond_d0
    if-ge v1, v0, :cond_da

    .line 3214
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    move v3, v5

    goto :goto_107

    .line 3216
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :cond_da
    if-ne v0, v5, :cond_f0

    .line 3256
    :goto_dc
    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "k":I
    .local v7, "k":I
    aput v5, v6, v2

    .line 3257
    iput v7, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 3259
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 3260
    .local v2, "temp":[I
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 3261
    iput-object v2, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    .line 3262
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 3263
    return-object p0

    .line 3217
    .end local v7    # "k":I
    .local v2, "k":I
    :cond_f0
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .local v6, "k":I
    aput v0, v5, v2

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget v0, v2, v4

    xor-int/lit8 p3, p3, 0x1

    .line 3218
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .local v2, "j":I
    aget v1, p1, v3

    xor-int/lit8 p3, p3, 0x2

    .line 3220
    move v3, v2

    move v4, v5

    move v2, v6

    .line 3253
    .end local v5    # "i":I
    .end local v6    # "k":I
    .local v2, "k":I
    .restart local v3    # "j":I
    .restart local v4    # "i":I
    :goto_107
    goto/16 :goto_13

    nop

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_92
        :pswitch_5d
        :pswitch_1a
    .end packed-switch
.end method

.method private static final blacklist scfString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Z
    .registers 8
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "scf"    # Ljava/lang/StringBuilder;

    .line 3927
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3929
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x0

    if-ge v1, v0, :cond_33

    .line 3930
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 3931
    .local v3, "c":I
    invoke-static {v3, v2}, Landroid/icu/lang/UCharacter;->foldCase(II)I

    move-result v4

    .line 3932
    .local v4, "scfChar":I
    if-eq v4, v3, :cond_2d

    .line 3934
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3935
    invoke-virtual {p1, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 3938
    :goto_18
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 3939
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 3940
    if-ne v1, v0, :cond_24

    .line 3941
    const/4 v2, 0x1

    return v2

    .line 3943
    :cond_24
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 3944
    invoke-static {v3, v2}, Landroid/icu/lang/UCharacter;->foldCase(II)I

    move-result v4

    goto :goto_18

    .line 3947
    :cond_2d
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 3948
    .end local v3    # "c":I
    .end local v4    # "scfChar":I
    goto :goto_5

    .line 3949
    .end local v1    # "i":I
    :cond_33
    return v2
.end method

.method public static greylist-max-o setDefaultXSymbolTable(Landroid/icu/text/UnicodeSet$XSymbolTable;)V
    .registers 1
    .param p0, "xSymbolTable"    # Landroid/icu/text/UnicodeSet$XSymbolTable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5021
    invoke-static {}, Landroid/icu/impl/CharacterPropertiesImpl;->clear()V

    .line 5022
    sput-object p0, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    .line 5023
    return-void
.end method

.method private greylist-max-o spanCodePointsAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .registers 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;
    .param p4, "outCount"    # Landroid/icu/util/OutputInt;

    .line 4279
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-eq p3, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 4282
    .local v0, "spanContained":Z
    :goto_7
    move v1, p2

    .line 4283
    .local v1, "next":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 4284
    .local v2, "length":I
    const/4 v3, 0x0

    .line 4286
    .local v3, "count":I
    :cond_d
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 4287
    .local v4, "c":I
    invoke-virtual {p0, v4}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-eq v0, v5, :cond_18

    .line 4288
    goto :goto_21

    .line 4290
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 4291
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 4292
    if-lt v1, v2, :cond_d

    .line 4293
    :goto_21
    if-eqz p4, :cond_25

    iput v3, p4, Landroid/icu/util/OutputInt;->value:I

    .line 4294
    :cond_25
    return v1
.end method

.method private static greylist-max-o syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
    .registers 5
    .param p0, "chars"    # Landroid/icu/impl/RuleCharacterIterator;
    .param p1, "msg"    # Ljava/lang/String;

    .line 2935
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2936
    invoke-virtual {p0}, Landroid/icu/impl/RuleCharacterIterator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o toArray(Landroid/icu/text/UnicodeSet;)[Ljava/lang/String;
    .registers 2
    .param p0, "set"    # Landroid/icu/text/UnicodeSet;

    .line 2963
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private greylist-max-o xor([III)Landroid/icu/text/UnicodeSet;
    .registers 13
    .param p1, "other"    # [I
    .param p2, "otherLen"    # I
    .param p3, "polarity"    # I

    .line 3053
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    .line 3054
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    const/4 v2, 0x0

    .line 3055
    .local v2, "k":I
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    aget v0, v3, v0

    .line 3060
    .local v0, "a":I
    const/4 v3, 0x1

    if-eq p3, v3, :cond_1b

    const/4 v3, 0x2

    if-ne p3, v3, :cond_16

    goto :goto_1b

    .line 3068
    :cond_16
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .local v3, "j":I
    aget v1, p1, v1

    .local v1, "b":I
    goto :goto_2b

    .line 3061
    .end local v3    # "j":I
    .local v1, "j":I
    :cond_1b
    :goto_1b
    const/4 v3, 0x0

    .line 3062
    .local v3, "b":I
    aget v5, p1, v1

    if-nez v5, :cond_28

    .line 3063
    add-int/lit8 v1, v1, 0x1

    .line 3064
    aget v3, p1, v1

    move v8, v3

    move v3, v1

    move v1, v8

    goto :goto_2b

    .line 3062
    :cond_28
    move v8, v3

    move v3, v1

    move v1, v8

    .line 3073
    .local v1, "b":I
    .local v3, "j":I
    :goto_2b
    if-ge v0, v1, :cond_3c

    .line 3074
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .local v6, "k":I
    aput v0, v5, v2

    .line 3075
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget v0, v2, v4

    move v4, v5

    move v2, v6

    goto :goto_2b

    .line 3076
    .end local v5    # "i":I
    .end local v6    # "k":I
    .restart local v2    # "k":I
    .restart local v4    # "i":I
    :cond_3c
    if-ge v1, v0, :cond_4b

    .line 3077
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "k":I
    .restart local v6    # "k":I
    aput v1, v5, v2

    .line 3078
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .local v2, "j":I
    aget v1, p1, v3

    move v3, v2

    move v2, v6

    goto :goto_2b

    .line 3079
    .end local v6    # "k":I
    .local v2, "k":I
    .restart local v3    # "j":I
    :cond_4b
    const/high16 v5, 0x110000

    if-eq v0, v5, :cond_5c

    .line 3081
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .local v6, "i":I
    aget v0, v5, v4

    .line 3082
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget v1, p1, v3

    move v3, v4

    move v4, v6

    goto :goto_2b

    .line 3084
    .end local v6    # "i":I
    .restart local v3    # "j":I
    .local v4, "i":I
    :cond_5c
    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "k":I
    .local v7, "k":I
    aput v5, v6, v2

    .line 3085
    iput v7, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 3086
    nop

    .line 3090
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 3091
    .local v2, "temp":[I
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 3092
    iput-object v2, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    .line 3093
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 3094
    return-object p0
.end method


# virtual methods
.method public whitelist test-api _generatePattern(Ljava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "escapeUnprintable"    # Z

    .line 784
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSet;->_generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api _generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "escapeUnprintable"    # Z
    .param p3, "includeStrings"    # Z

    .line 798
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public final whitelist test-api add(I)Landroid/icu/text/UnicodeSet;
    .registers 3
    .param p1, "c"    # I

    .line 1294
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1295
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->add_unchecked(I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api add(II)Landroid/icu/text/UnicodeSet;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1207
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1208
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 1396
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1397
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1398
    .local v0, "cp":I
    if-gez v0, :cond_1c

    .line 1399
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1400
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v2, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1401
    invoke-direct {p0, v1}, Landroid/icu/text/UnicodeSet;->addString(Ljava/lang/CharSequence;)V

    .line 1402
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 1404
    .end local v1    # "str":Ljava/lang/String;
    :cond_1b
    goto :goto_1f

    .line 1405
    :cond_1c
    invoke-direct {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 1407
    :goto_1f
    return-object p0
.end method

.method public whitelist test-api add(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 2973
    .local p1, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api addAll(II)Landroid/icu/text/UnicodeSet;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1218
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1219
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 5
    .param p1, "c"    # Landroid/icu/text/UnicodeSet;

    .line 2246
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2247
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->add([III)Landroid/icu/text/UnicodeSet;

    .line 2248
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2249
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    sget-object v1, Landroid/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    if-ne v0, v1, :cond_21

    .line 2250
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    goto :goto_28

    .line 2252
    :cond_21
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 2255
    :cond_28
    :goto_28
    return-object p0
.end method

.method public final whitelist test-api addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 1443
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1446
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1447
    .local v1, "cp":I
    invoke-direct {p0, v1, v1}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 1445
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_4

    .line 1449
    .end local v0    # "i":I
    .end local v1    # "cp":I
    :cond_17
    return-object p0
.end method

.method public whitelist test-api addAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 2983
    .local p1, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2984
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2985
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 2986
    .end local v1    # "o":Ljava/lang/Object;
    goto :goto_7

    .line 2987
    :cond_19
    return-object p0
.end method

.method public varargs whitelist test-api addAll([Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 4591
    .local p1, "collection":[Ljava/lang/CharSequence;, "[TT;"
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 4592
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    aget-object v2, p1, v1

    .line 4593
    .local v2, "str":Ljava/lang/CharSequence;, "TT;"
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 4592
    .end local v2    # "str":Ljava/lang/CharSequence;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4595
    :cond_f
    return-object p0
.end method

.method public whitelist test-api addAllTo(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>(TT;)TT;"
        }
    .end annotation

    .line 2945
    .local p1, "target":Ljava/util/Collection;, "TT;"
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o addAllTo([Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "target"    # [Ljava/lang/String;

    .line 2955
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o addBridges(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 6
    .param p1, "dontCare"    # Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4829
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->removeAllStrings()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 4830
    .local v0, "notInInput":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .local v1, "it":Landroid/icu/text/UnicodeSetIterator;
    :cond_12
    :goto_12
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSetIterator;->nextRange()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 4831
    iget v2, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    if-eqz v2, :cond_12

    iget v2, v1, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    const v3, 0x10ffff

    if-eq v2, v3, :cond_12

    iget v2, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget v3, v1, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    .line 4832
    invoke-virtual {p1, v2, v3}, Landroid/icu/text/UnicodeSet;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4833
    iget v2, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget v3, v1, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    invoke-virtual {p0, v2, v3}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    goto :goto_12

    .line 4836
    .end local v1    # "it":Landroid/icu/text/UnicodeSetIterator;
    :cond_35
    return-object p0
.end method

.method public whitelist test-api addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    .registers 2
    .param p1, "toUnionTo"    # Landroid/icu/text/UnicodeSet;

    .line 1140
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 1141
    return-void
.end method

.method public whitelist test-api applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;
    .registers 6
    .param p1, "prop"    # I
    .param p2, "value"    # I

    .line 3437
    const/16 v0, 0x2000

    if-ne p1, v0, :cond_11

    .line 3438
    invoke-static {p1}, Landroid/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 3439
    .local v0, "inclusions":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;

    invoke-direct {v1, p2}, Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;-><init>(I)V

    invoke-direct {p0, v1, v0}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;Landroid/icu/text/UnicodeSet;)V

    .line 3440
    .end local v0    # "inclusions":Landroid/icu/text/UnicodeSet;
    goto :goto_69

    :cond_11
    const/16 v0, 0x7000

    if-ne p1, v0, :cond_22

    .line 3441
    invoke-static {p1}, Landroid/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 3442
    .restart local v0    # "inclusions":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;

    invoke-direct {v1, p2}, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;-><init>(I)V

    invoke-direct {p0, v1, v0}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;Landroid/icu/text/UnicodeSet;)V

    .line 3443
    .end local v0    # "inclusions":Landroid/icu/text/UnicodeSet;
    goto :goto_69

    :cond_22
    const/16 v0, 0x7001

    if-ne p1, v0, :cond_33

    .line 3444
    invoke-static {p1}, Landroid/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 3445
    .restart local v0    # "inclusions":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSet$IdentifierTypeFilter;

    invoke-direct {v1, p2}, Landroid/icu/text/UnicodeSet$IdentifierTypeFilter;-><init>(I)V

    invoke-direct {p0, v1, v0}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;Landroid/icu/text/UnicodeSet;)V

    .line 3446
    .end local v0    # "inclusions":Landroid/icu/text/UnicodeSet;
    goto :goto_69

    :cond_33
    if-ltz p1, :cond_54

    const/16 v0, 0x4c

    if-ge p1, v0, :cond_54

    .line 3447
    if-eqz p2, :cond_43

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3f

    goto :goto_43

    .line 3453
    :cond_3f
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    goto :goto_69

    .line 3448
    :cond_43
    :goto_43
    invoke-static {p1}, Landroid/icu/lang/CharacterProperties;->getBinaryPropertySet(I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 3449
    if-nez p2, :cond_69

    .line 3450
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->removeAllStrings()Landroid/icu/text/UnicodeSet;

    goto :goto_69

    .line 3455
    :cond_54
    const/16 v0, 0x1000

    if-gt v0, p1, :cond_6a

    const/16 v0, 0x101b

    if-ge p1, v0, :cond_6a

    .line 3456
    invoke-static {p1}, Landroid/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 3457
    .restart local v0    # "inclusions":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSet$IntPropertyFilter;

    invoke-direct {v1, p1, p2}, Landroid/icu/text/UnicodeSet$IntPropertyFilter;-><init>(II)V

    invoke-direct {p0, v1, v0}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;Landroid/icu/text/UnicodeSet;)V

    .line 3458
    .end local v0    # "inclusions":Landroid/icu/text/UnicodeSet;
    nop

    .line 3461
    :cond_69
    :goto_69
    return-object p0

    .line 3459
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 566
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 567
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api applyPattern(Ljava/lang/String;I)Landroid/icu/text/UnicodeSet;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "options"    # I

    .line 597
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 598
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;
    .registers 13
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "symbols"    # Landroid/icu/text/SymbolTable;
    .param p4, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2478
    const/4 v0, 0x0

    if-nez p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 2479
    .local v1, "parsePositionWasNull":Z
    :goto_6
    if-eqz v1, :cond_e

    .line 2480
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v0}, Ljava/text/ParsePosition;-><init>(I)V

    move-object p2, v2

    .line 2483
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    .line 2484
    .local v5, "rebuiltPat":Ljava/lang/StringBuilder;
    new-instance v3, Landroid/icu/impl/RuleCharacterIterator;

    invoke-direct {v3, p1, p3, p2}, Landroid/icu/impl/RuleCharacterIterator;-><init>(Ljava/lang/String;Landroid/icu/text/SymbolTable;Ljava/text/ParsePosition;)V

    .line 2486
    .local v3, "chars":Landroid/icu/impl/RuleCharacterIterator;
    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p3

    move v6, p4

    .end local p3    # "symbols":Landroid/icu/text/SymbolTable;
    .end local p4    # "options":I
    .local v4, "symbols":Landroid/icu/text/SymbolTable;
    .local v6, "options":I
    invoke-direct/range {v2 .. v7}, Landroid/icu/text/UnicodeSet;->applyPattern(Landroid/icu/impl/RuleCharacterIterator;Landroid/icu/text/SymbolTable;Ljava/lang/Appendable;II)V

    .line 2487
    invoke-virtual {v3}, Landroid/icu/impl/RuleCharacterIterator;->inVariable()Z

    move-result p3

    if-eqz p3, :cond_2b

    .line 2488
    const-string p3, "Extra chars in variable value"

    invoke-static {v3, p3}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2490
    :cond_2b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v2, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 2491
    if-eqz v1, :cond_69

    .line 2492
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p3

    .line 2495
    .local p3, "i":I
    and-int/lit8 p4, v6, 0x1

    if-eqz p4, :cond_3f

    .line 2496
    invoke-static {p1, p3}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result p3

    .line 2499
    :cond_3f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-ne p3, p4, :cond_46

    goto :goto_69

    .line 2500
    :cond_46
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parse of \""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\" failed at "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 2504
    .end local p3    # "i":I
    :cond_69
    :goto_69
    return-object v2
.end method

.method public whitelist test-api applyPattern(Ljava/lang/String;Z)Landroid/icu/text/UnicodeSet;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ignoreWhitespace"    # Z

    .line 580
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 581
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/UnicodeSet;
    .registers 4
    .param p1, "propertyAlias"    # Ljava/lang/String;
    .param p2, "valueAlias"    # Ljava/lang/String;

    .line 3492
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSet;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;
    .registers 11
    .param p1, "propertyAlias"    # Ljava/lang/String;
    .param p2, "valueAlias"    # Ljava/lang/String;
    .param p3, "symbols"    # Landroid/icu/text/SymbolTable;

    .line 3507
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 3510
    const/4 v0, 0x0

    .line 3512
    .local v0, "invert":Z
    if-eqz p3, :cond_14

    instance-of v1, p3, Landroid/icu/text/UnicodeSet$XSymbolTable;

    if-eqz v1, :cond_14

    move-object v1, p3

    check-cast v1, Landroid/icu/text/UnicodeSet$XSymbolTable;

    .line 3514
    invoke-virtual {v1, p1, p2, p0}, Landroid/icu/text/UnicodeSet$XSymbolTable;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3515
    return-object p0

    .line 3518
    :cond_14
    sget-object v1, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    if-eqz v1, :cond_21

    .line 3519
    sget-object v1, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    invoke-virtual {v1, p1, p2, p0}, Landroid/icu/text/UnicodeSet$XSymbolTable;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3520
    return-object p0

    .line 3524
    :cond_21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4c

    const/4 v3, -0x1

    if-lez v1, :cond_d3

    .line 3525
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result v1

    .line 3528
    .local v1, "p":I
    const/16 v4, 0x1005

    if-ne v1, v4, :cond_34

    .line 3529
    const/16 v1, 0x2000

    .line 3532
    :cond_34
    if-ltz v1, :cond_38

    if-lt v1, v2, :cond_48

    :cond_38
    const/16 v2, 0x1000

    if-lt v1, v2, :cond_40

    const/16 v2, 0x101b

    if-lt v1, v2, :cond_48

    :cond_40
    const/16 v2, 0x2000

    if-lt v1, v2, :cond_6f

    const/16 v2, 0x2001

    if-ge v1, v2, :cond_6f

    .line 3536
    :cond_48
    :try_start_48
    invoke-static {v1, p2}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v2
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_4c} :catch_4e

    .line 3548
    .local v2, "v":I
    goto/16 :goto_152

    .line 3537
    .end local v2    # "v":I
    :catch_4e
    move-exception v2

    .line 3539
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const/16 v3, 0x1002

    if-eq v1, v3, :cond_5d

    const/16 v3, 0x1010

    if-eq v1, v3, :cond_5d

    const/16 v3, 0x1011

    if-ne v1, v3, :cond_5c

    goto :goto_5d

    .line 3546
    :cond_5c
    throw v2

    .line 3542
    :cond_5d
    :goto_5d
    invoke-static {p2}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3544
    .local v3, "v":I
    if-ltz v3, :cond_6e

    const/16 v4, 0xff

    if-gt v3, v4, :cond_6e

    .line 3548
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    move v2, v3

    goto/16 :goto_152

    .line 3544
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6e
    throw v2

    .line 3552
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "v":I
    :cond_6f
    sparse-switch v1, :sswitch_data_160

    .line 3598
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported property"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3592
    :sswitch_7a
    invoke-static {v1, p2}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v2

    .line 3594
    .local v2, "v":I
    goto/16 :goto_152

    .line 3588
    .end local v2    # "v":I
    :sswitch_80
    const/16 v2, 0x100a

    invoke-static {v2, p2}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v2

    .line 3590
    .restart local v2    # "v":I
    goto/16 :goto_152

    .line 3576
    .end local v2    # "v":I
    :sswitch_88
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unicode_1_Name (na1) not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3565
    :sswitch_90
    invoke-static {p2}, Landroid/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3566
    .local v2, "buf":Ljava/lang/String;
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getCharFromExtendedName(Ljava/lang/String;)I

    move-result v4

    .line 3567
    .local v4, "ch":I
    if-eq v4, v3, :cond_a1

    .line 3570
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 3571
    invoke-direct {p0, v4}, Landroid/icu/text/UnicodeSet;->add_unchecked(I)Landroid/icu/text/UnicodeSet;

    .line 3572
    return-object p0

    .line 3568
    :cond_a1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid character name"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3582
    .end local v2    # "buf":Ljava/lang/String;
    .end local v4    # "ch":I
    :sswitch_a9
    invoke-static {p2}, Landroid/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    move-result-object v2

    .line 3583
    .local v2, "version":Landroid/icu/util/VersionInfo;
    new-instance v3, Landroid/icu/text/UnicodeSet$VersionFilter;

    invoke-direct {v3, v2}, Landroid/icu/text/UnicodeSet$VersionFilter;-><init>(Landroid/icu/util/VersionInfo;)V

    .line 3584
    invoke-static {v1}, Landroid/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    .line 3583
    invoke-direct {p0, v3, v4}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;Landroid/icu/text/UnicodeSet;)V

    .line 3585
    return-object p0

    .line 3555
    .end local v2    # "version":Landroid/icu/util/VersionInfo;
    :sswitch_be
    invoke-static {p2}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 3556
    .local v2, "value":D
    new-instance v4, Landroid/icu/text/UnicodeSet$NumericValueFilter;

    invoke-direct {v4, v2, v3}, Landroid/icu/text/UnicodeSet$NumericValueFilter;-><init>(D)V

    .line 3557
    invoke-static {v1}, Landroid/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    .line 3556
    invoke-direct {p0, v4, v5}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;Landroid/icu/text/UnicodeSet;)V

    .line 3558
    return-object p0

    .line 3607
    .end local v1    # "p":I
    .end local v2    # "value":D
    :cond_d3
    sget-object v1, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    .line 3608
    .local v1, "pnames":Landroid/icu/impl/UPropertyAliases;
    const/16 v4, 0x2000

    .line 3609
    .local v4, "p":I
    invoke-virtual {v1, v4, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v5

    .line 3610
    .local v5, "v":I
    if-ne v5, v3, :cond_150

    .line 3611
    const/16 v4, 0x100a

    .line 3612
    invoke-virtual {v1, v4, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v5

    .line 3613
    if-ne v5, v3, :cond_14d

    .line 3614
    invoke-virtual {v1, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result v4

    .line 3615
    if-ne v4, v3, :cond_ec

    .line 3616
    const/4 v4, -0x1

    .line 3618
    :cond_ec
    if-ltz v4, :cond_f3

    if-ge v4, v2, :cond_f3

    .line 3619
    const/4 v2, 0x1

    move v1, v4

    .end local v5    # "v":I
    .local v2, "v":I
    goto :goto_152

    .line 3620
    .end local v2    # "v":I
    .restart local v5    # "v":I
    :cond_f3
    if-ne v4, v3, :cond_145

    .line 3621
    const-string v2, "ANY"

    invoke-static {v2, p1}, Landroid/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_105

    .line 3622
    const v2, 0x10ffff

    invoke-virtual {p0, v3, v2}, Landroid/icu/text/UnicodeSet;->set(II)Landroid/icu/text/UnicodeSet;

    .line 3623
    return-object p0

    .line 3624
    :cond_105
    const-string v2, "ASCII"

    invoke-static {v2, p1}, Landroid/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_113

    .line 3625
    const/16 v2, 0x7f

    invoke-virtual {p0, v3, v2}, Landroid/icu/text/UnicodeSet;->set(II)Landroid/icu/text/UnicodeSet;

    .line 3626
    return-object p0

    .line 3627
    :cond_113
    const-string v2, "Assigned"

    invoke-static {v2, p1}, Landroid/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_122

    .line 3629
    const/16 v2, 0x2000

    .line 3630
    .end local v4    # "p":I
    .local v2, "p":I
    const/4 v3, 0x1

    .line 3631
    .end local v5    # "v":I
    .restart local v3    # "v":I
    const/4 v0, 0x1

    move v1, v2

    move v2, v3

    goto :goto_152

    .line 3634
    .end local v2    # "p":I
    .end local v3    # "v":I
    .restart local v4    # "p":I
    .restart local v5    # "v":I
    :cond_122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid property alias: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3639
    :cond_145
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing property value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3613
    :cond_14d
    move v1, v4

    move v2, v5

    goto :goto_152

    .line 3610
    :cond_150
    move v1, v4

    move v2, v5

    .line 3645
    .end local v4    # "p":I
    .end local v5    # "v":I
    .local v1, "p":I
    .local v2, "v":I
    :goto_152
    invoke-virtual {p0, v1, v2}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    .line 3646
    if-eqz v0, :cond_15e

    .line 3647
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->removeAllStrings()Landroid/icu/text/UnicodeSet;

    .line 3650
    :cond_15e
    return-object p0

    nop

    :sswitch_data_160
    .sparse-switch
        0x3000 -> :sswitch_be
        0x4000 -> :sswitch_a9
        0x4005 -> :sswitch_90
        0x400b -> :sswitch_88
        0x7000 -> :sswitch_80
        0x7001 -> :sswitch_7a
    .end sparse-switch
.end method

.method public whitelist test-api charAt(I)I
    .registers 7
    .param p1, "index"    # I

    .line 1178
    if-ltz p1, :cond_1e

    .line 1182
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    and-int/lit8 v0, v0, -0x2

    .line 1183
    .local v0, "len2":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 1184
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget v1, v2, v1

    .line 1185
    .local v1, "start":I
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget v2, v2, v3

    sub-int/2addr v2, v1

    .line 1186
    .local v2, "count":I
    if-ge p1, v2, :cond_1b

    .line 1187
    add-int v3, v1, p1

    return v3

    .line 1189
    :cond_1b
    sub-int/2addr p1, v2

    .line 1190
    .end local v1    # "start":I
    .end local v2    # "count":I
    move v1, v4

    goto :goto_7

    .line 1192
    .end local v0    # "len2":I
    .end local v4    # "i":I
    :cond_1e
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api clear()Landroid/icu/text/UnicodeSet;
    .registers 4

    .line 2324
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2325
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v1, 0x0

    const/high16 v2, 0x110000

    aput v2, v0, v1

    .line 2326
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 2327
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 2328
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2329
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 2331
    :cond_1b
    return-object p0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 519
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 520
    return-object p0

    .line 522
    :cond_7
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public whitelist test-api cloneAsThawed()Landroid/icu/text/UnicodeSet;
    .registers 2

    .line 4362
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 4363
    .local v0, "result":Landroid/icu/text/UnicodeSet;
    nop

    .line 4364
    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 309
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api closeOver(I)Landroid/icu/text/UnicodeSet;
    .registers 3
    .param p1, "attribute"    # I

    .line 3980
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 3981
    and-int/lit8 v0, p1, 0x6

    packed-switch v0, :pswitch_data_1a

    :pswitch_8
    goto :goto_18

    .line 3991
    :pswitch_9
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->closeOverCaseInsensitive(Z)V

    .line 3992
    goto :goto_18

    .line 3988
    :pswitch_e
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->closeOverAddCaseMappings()V

    .line 3989
    goto :goto_18

    .line 3985
    :pswitch_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->closeOverCaseInsensitive(Z)V

    .line 3986
    goto :goto_18

    .line 3983
    :pswitch_17
    nop

    .line 3997
    :goto_18
    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_8
        :pswitch_12
        :pswitch_8
        :pswitch_e
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist codePointStream()Ljava/util/stream/IntStream;
    .registers 3

    .line 5078
    new-instance v0, Landroid/icu/text/UnicodeSet$CodePointSpliterator;

    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet$CodePointSpliterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist codePoints()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5117
    new-instance v0, Landroid/icu/text/UnicodeSet$CodePointIterable;

    invoke-direct {v0, p0, p0}, Landroid/icu/text/UnicodeSet$CodePointIterable;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public whitelist test-api compact()Landroid/icu/text/UnicodeSet;
    .registers 3

    .line 2373
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2374
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 2376
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 2378
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    .line 2379
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    .line 2380
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    sget-object v1, Landroid/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    if-eq v0, v1, :cond_2d

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2381
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    .line 2383
    :cond_2d
    return-object p0
.end method

.method public whitelist test-api compareTo(Landroid/icu/text/UnicodeSet;)I
    .registers 3
    .param p1, "o"    # Landroid/icu/text/UnicodeSet;

    .line 4644
    sget-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/UnicodeSet;->compareTo(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$ComparisonStyle;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api compareTo(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$ComparisonStyle;)I
    .registers 10
    .param p1, "o"    # Landroid/icu/text/UnicodeSet;
    .param p2, "style"    # Landroid/icu/text/UnicodeSet$ComparisonStyle;

    .line 4651
    sget-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v0, :cond_21

    .line 4652
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v4

    sub-int/2addr v0, v4

    .line 4653
    .local v0, "diff":I
    if-eqz v0, :cond_21

    .line 4654
    if-gez v0, :cond_16

    move v4, v3

    goto :goto_17

    :cond_16
    move v4, v2

    :goto_17
    sget-object v5, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    if-ne p2, v5, :cond_1c

    move v2, v3

    :cond_1c
    if-ne v4, v2, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v3

    :goto_20
    return v1

    .line 4658
    .end local v0    # "diff":I
    :cond_21
    const/4 v0, 0x0

    .line 4659
    .local v0, "i":I
    :goto_22
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v0

    iget-object v5, p1, Landroid/icu/text/UnicodeSet;->list:[I

    aget v5, v5, v0

    sub-int/2addr v4, v5

    move v5, v4

    .local v5, "result":I
    const/high16 v6, 0x110000

    if-eqz v4, :cond_7c

    .line 4661
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v0

    if-ne v4, v6, :cond_4e

    .line 4662
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v1

    if-nez v1, :cond_3d

    return v3

    .line 4663
    :cond_3d
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4664
    .local v1, "item":Ljava/lang/String;
    iget-object v2, p1, Landroid/icu/text/UnicodeSet;->list:[I

    aget v2, v2, v0

    invoke-static {v1, v2}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/CharSequence;I)I

    move-result v2

    return v2

    .line 4666
    .end local v1    # "item":Ljava/lang/String;
    :cond_4e
    iget-object v4, p1, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v0

    if-ne v4, v6, :cond_74

    .line 4667
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v4

    if-nez v4, :cond_5b

    return v1

    .line 4668
    :cond_5b
    iget-object v4, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4669
    .local v4, "item":Ljava/lang/String;
    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v6, v6, v0

    invoke-static {v4, v6}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 4670
    .local v6, "compareResult":I
    if-lez v6, :cond_6e

    goto :goto_73

    :cond_6e
    if-gez v6, :cond_72

    move v1, v3

    goto :goto_73

    :cond_72
    move v1, v2

    :goto_73
    return v1

    .line 4673
    .end local v4    # "item":Ljava/lang/String;
    .end local v6    # "compareResult":I
    :cond_74
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_7a

    move v1, v5

    goto :goto_7b

    :cond_7a
    neg-int v1, v5

    :goto_7b
    return v1

    .line 4675
    :cond_7c
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v0

    if-ne v4, v6, :cond_8c

    .line 4676
    nop

    .line 4679
    .end local v0    # "i":I
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    return v0

    .line 4658
    .restart local v0    # "i":I
    :cond_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method public whitelist test-api compareTo(Ljava/lang/Iterable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 4685
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 309
    check-cast p1, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->compareTo(Landroid/icu/text/UnicodeSet;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api complement()Landroid/icu/text/UnicodeSet;
    .registers 6

    .line 1681
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1682
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_1b

    .line 1683
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v4, v2

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1684
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    goto :goto_33

    .line 1686
    :cond_1b
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->ensureCapacity(I)V

    .line 1687
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1688
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aput v1, v0, v1

    .line 1689
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 1691
    :goto_33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 1692
    return-object p0
.end method

.method public final whitelist test-api complement(I)Landroid/icu/text/UnicodeSet;
    .registers 3
    .param p1, "c"    # I

    .line 1668
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api complement(II)Landroid/icu/text/UnicodeSet;
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1648
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1649
    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_3c

    const v2, 0x10ffff

    if-gt p1, v2, :cond_3c

    .line 1652
    if-ltz p2, :cond_20

    if-gt p2, v2, :cond_20

    .line 1655
    if-gt p1, p2, :cond_1c

    .line 1656
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->xor([III)Landroid/icu/text/UnicodeSet;

    .line 1658
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 1659
    return-object p0

    .line 1653
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v3, p2

    invoke-static {v3, v4, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1650
    :cond_3c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v3, p1

    invoke-static {v3, v4, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist test-api complement(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 1704
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1705
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1706
    .local v0, "cp":I
    if-gez v0, :cond_22

    .line 1707
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1708
    .local v1, "s2":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v2, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1709
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v2, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 1711
    :cond_1b
    invoke-direct {p0, v1}, Landroid/icu/text/UnicodeSet;->addString(Ljava/lang/CharSequence;)V

    .line 1713
    :goto_1e
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 1714
    .end local v1    # "s2":Ljava/lang/String;
    goto :goto_25

    .line 1715
    :cond_22
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    .line 1717
    :goto_25
    return-object p0
.end method

.method public whitelist test-api complementAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 5
    .param p1, "c"    # Landroid/icu/text/UnicodeSet;

    .line 2307
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2308
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->xor([III)Landroid/icu/text/UnicodeSet;

    .line 2309
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2310
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    sget-object v1, Landroid/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    if-ne v0, v1, :cond_21

    .line 2311
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    goto :goto_29

    .line 2313
    :cond_21
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    const/4 v1, 0x5

    iget-object v2, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-static {v0, v1, v2}, Landroid/icu/impl/SortedSetRelation;->doOperation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Ljava/util/SortedSet;

    .line 2316
    :cond_29
    :goto_29
    return-object p0
.end method

.method public final whitelist test-api complementAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 1469
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->complementAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api contains(I)Z
    .registers 7
    .param p1, "c"    # I

    .line 1727
    if-ltz p1, :cond_29

    const v0, 0x10ffff

    if-gt p1, v0, :cond_29

    .line 1730
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    if-eqz v0, :cond_12

    .line 1731
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    invoke-virtual {v0, p1}, Landroid/icu/impl/BMPSet;->contains(I)Z

    move-result v0

    return v0

    .line 1733
    :cond_12
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_1d

    .line 1734
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0, p1}, Landroid/icu/impl/UnicodeSetStringSpan;->contains(I)Z

    move-result v0

    return v0

    .line 1746
    :cond_1d
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result v0

    .line 1748
    .local v0, "i":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    return v1

    .line 1728
    .end local v0    # "i":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api contains(II)Z
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1915
    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_3c

    const v2, 0x10ffff

    if-gt p1, v2, :cond_3c

    .line 1918
    if-ltz p2, :cond_20

    if-gt p2, v2, :cond_20

    .line 1925
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result v0

    .line 1926
    .local v0, "i":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v1, v1, v0

    if-ge p2, v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1

    .line 1919
    .end local v0    # "i":I
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v3, p2

    invoke-static {v3, v4, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1916
    :cond_3c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v3, p1

    invoke-static {v3, v4, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist test-api contains(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 1937
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1938
    .local v0, "cp":I
    if-gez v0, :cond_11

    .line 1939
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1941
    :cond_11
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api containsAll(Landroid/icu/text/UnicodeSet;)Z
    .registers 19
    .param p1, "b"    # Landroid/icu/text/UnicodeSet;

    .line 1956
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/icu/text/UnicodeSet;->list:[I

    .line 1957
    .local v2, "listB":[I
    const/4 v3, 0x1

    .line 1958
    .local v3, "needA":Z
    const/4 v4, 0x1

    .line 1959
    .local v4, "needB":Z
    const/4 v5, 0x0

    .line 1960
    .local v5, "aPtr":I
    const/4 v6, 0x0

    .line 1961
    .local v6, "bPtr":I
    iget v7, v0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 1962
    .local v7, "aLen":I
    iget v9, v1, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v9, v8

    .line 1963
    .local v9, "bLen":I
    const/4 v10, 0x0

    .local v10, "startA":I
    const/4 v11, 0x0

    .local v11, "startB":I
    const/4 v12, 0x0

    .local v12, "limitA":I
    const/4 v13, 0x0

    .line 1966
    .local v13, "limitB":I
    :goto_15
    const/4 v14, 0x0

    if-eqz v3, :cond_2f

    .line 1967
    if-lt v5, v7, :cond_20

    .line 1969
    if-eqz v4, :cond_1f

    if-lt v6, v9, :cond_1f

    .line 1970
    goto :goto_34

    .line 1972
    :cond_1f
    return v14

    .line 1974
    :cond_20
    iget-object v15, v0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v16, v5, 0x1

    .end local v5    # "aPtr":I
    .local v16, "aPtr":I
    aget v5, v15, v5

    .line 1975
    .end local v10    # "startA":I
    .local v5, "startA":I
    iget-object v10, v0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "aPtr":I
    .local v15, "aPtr":I
    aget v10, v10, v16

    move v12, v10

    move v10, v5

    move v5, v15

    .line 1977
    .end local v15    # "aPtr":I
    .local v5, "aPtr":I
    .restart local v10    # "startA":I
    :cond_2f
    if-eqz v4, :cond_51

    .line 1978
    if-lt v6, v9, :cond_42

    .line 1980
    nop

    .line 2001
    :goto_34
    iget-object v15, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    move/from16 v16, v8

    iget-object v8, v1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v15, v8}, Ljava/util/SortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_41

    return v14

    .line 2002
    :cond_41
    return v16

    .line 1982
    :cond_42
    move/from16 v16, v8

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "bPtr":I
    .local v8, "bPtr":I
    aget v6, v2, v6

    .line 1983
    .end local v11    # "startB":I
    .local v6, "startB":I
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "bPtr":I
    .local v11, "bPtr":I
    aget v8, v2, v8

    move v13, v11

    move v11, v6

    move v6, v13

    move v13, v8

    .end local v13    # "limitB":I
    .local v8, "limitB":I
    goto :goto_53

    .line 1977
    .end local v8    # "limitB":I
    .local v6, "bPtr":I
    .local v11, "startB":I
    .restart local v13    # "limitB":I
    :cond_51
    move/from16 v16, v8

    .line 1986
    :goto_53
    if-lt v11, v12, :cond_5a

    .line 1987
    const/4 v3, 0x1

    .line 1988
    const/4 v4, 0x0

    .line 1989
    move/from16 v8, v16

    goto :goto_15

    .line 1992
    :cond_5a
    if-lt v11, v10, :cond_63

    if-gt v13, v12, :cond_63

    .line 1993
    const/4 v3, 0x0

    .line 1994
    const/4 v4, 0x1

    .line 1995
    move/from16 v8, v16

    goto :goto_15

    .line 1998
    :cond_63
    return v14
.end method

.method public whitelist test-api containsAll(Ljava/lang/Iterable;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 4559
    .local p1, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 4560
    .local v1, "o":Ljava/lang/CharSequence;, "TT;"
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 4561
    const/4 v0, 0x0

    return v0

    .line 4563
    .end local v1    # "o":Ljava/lang/CharSequence;, "TT;"
    :cond_18
    goto :goto_4

    .line 4564
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/lang/String;)Z
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .line 2036
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 2037
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 2038
    .local v1, "cp":I
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2039
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_19

    .line 2040
    return v3

    .line 2042
    :cond_19
    invoke-direct {p0, p1, v3}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result v2

    return v2

    .line 2036
    :cond_1e
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 2045
    .end local v0    # "i":I
    .end local v1    # "cp":I
    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api containsNone(II)Z
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2101
    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_40

    const v2, 0x10ffff

    if-gt p1, v2, :cond_40

    .line 2104
    if-ltz p2, :cond_24

    if-gt p2, v2, :cond_24

    .line 2107
    const/4 v0, -0x1

    .line 2109
    .local v0, "i":I
    :cond_f
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget v1, v1, v0

    if-ge p1, v1, :cond_f

    .line 2111
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_22

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v1, v1, v0

    if-ge p2, v1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    return v2

    .line 2105
    .end local v0    # "i":I
    :cond_24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v3, p2

    invoke-static {v3, v4, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2102
    :cond_40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v3, p1

    invoke-static {v3, v4, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api containsNone(Landroid/icu/text/UnicodeSet;)Z
    .registers 20
    .param p1, "b"    # Landroid/icu/text/UnicodeSet;

    .line 2125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/icu/text/UnicodeSet;->list:[I

    .line 2126
    .local v2, "listB":[I
    const/4 v3, 0x1

    .line 2127
    .local v3, "needA":Z
    const/4 v4, 0x1

    .line 2128
    .local v4, "needB":Z
    const/4 v5, 0x0

    .line 2129
    .local v5, "aPtr":I
    const/4 v6, 0x0

    .line 2130
    .local v6, "bPtr":I
    iget v7, v0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 2131
    .local v7, "aLen":I
    iget v9, v1, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v9, v8

    .line 2132
    .local v9, "bLen":I
    const/4 v10, 0x0

    .local v10, "startA":I
    const/4 v11, 0x0

    .local v11, "startB":I
    const/4 v12, 0x0

    .local v12, "limitA":I
    const/4 v13, 0x0

    .line 2135
    .local v13, "limitB":I
    :goto_15
    if-eqz v3, :cond_29

    .line 2136
    if-lt v5, v7, :cond_1a

    .line 2138
    goto :goto_2e

    .line 2140
    :cond_1a
    iget-object v15, v0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v16, v5, 0x1

    .end local v5    # "aPtr":I
    .local v16, "aPtr":I
    aget v5, v15, v5

    .line 2141
    .end local v10    # "startA":I
    .local v5, "startA":I
    iget-object v10, v0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "aPtr":I
    .local v15, "aPtr":I
    aget v10, v10, v16

    move v12, v10

    move v10, v5

    move v5, v15

    .line 2143
    .end local v15    # "aPtr":I
    .local v5, "aPtr":I
    .restart local v10    # "startA":I
    :cond_29
    if-eqz v4, :cond_50

    .line 2144
    if-lt v6, v9, :cond_3f

    .line 2146
    nop

    .line 2167
    :goto_2e
    iget-object v15, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    move/from16 v16, v8

    const/4 v8, 0x5

    const/16 v17, 0x0

    iget-object v14, v1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-static {v15, v8, v14}, Landroid/icu/impl/SortedSetRelation;->hasRelation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Z

    move-result v8

    if-nez v8, :cond_3e

    return v17

    .line 2168
    :cond_3e
    return v16

    .line 2148
    :cond_3f
    move/from16 v16, v8

    const/16 v17, 0x0

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "bPtr":I
    .local v8, "bPtr":I
    aget v6, v2, v6

    .line 2149
    .end local v11    # "startB":I
    .local v6, "startB":I
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "bPtr":I
    .local v11, "bPtr":I
    aget v8, v2, v8

    move v13, v11

    move v11, v6

    move v6, v13

    move v13, v8

    .end local v13    # "limitB":I
    .local v8, "limitB":I
    goto :goto_54

    .line 2143
    .end local v8    # "limitB":I
    .local v6, "bPtr":I
    .local v11, "startB":I
    .restart local v13    # "limitB":I
    :cond_50
    move/from16 v16, v8

    const/16 v17, 0x0

    .line 2152
    :goto_54
    if-lt v11, v12, :cond_5b

    .line 2153
    const/4 v3, 0x1

    .line 2154
    const/4 v4, 0x0

    .line 2155
    move/from16 v8, v16

    goto :goto_15

    .line 2158
    :cond_5b
    if-lt v10, v13, :cond_62

    .line 2159
    const/4 v3, 0x0

    .line 2160
    const/4 v4, 0x1

    .line 2161
    move/from16 v8, v16

    goto :goto_15

    .line 2164
    :cond_62
    return v17
.end method

.method public whitelist test-api containsNone(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 2201
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api containsNone(Ljava/lang/Iterable;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 4571
    .local p1, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 4572
    .local v1, "o":Ljava/lang/CharSequence;, "TT;"
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4573
    const/4 v0, 0x0

    return v0

    .line 4575
    .end local v1    # "o":Ljava/lang/CharSequence;, "TT;"
    :cond_18
    goto :goto_4

    .line 4576
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api containsSome(II)Z
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2212
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->containsNone(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final whitelist test-api containsSome(Landroid/icu/text/UnicodeSet;)Z
    .registers 3
    .param p1, "s"    # Landroid/icu/text/UnicodeSet;

    .line 2222
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->containsNone(Landroid/icu/text/UnicodeSet;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final whitelist test-api containsSome(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 2232
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->containsNone(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final whitelist test-api containsSome(Ljava/lang/Iterable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 4583
    .local p1, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->containsNone(Ljava/lang/Iterable;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 2398
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2399
    return v0

    .line 2401
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 2402
    return v1

    .line 2405
    :cond_8
    :try_start_8
    move-object v2, p1

    check-cast v2, Landroid/icu/text/UnicodeSet;

    .line 2406
    .local v2, "that":Landroid/icu/text/UnicodeSet;
    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    iget v4, v2, Landroid/icu/text/UnicodeSet;->len:I

    if-eq v3, v4, :cond_12

    return v0

    .line 2407
    :cond_12
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    if-ge v3, v4, :cond_25

    .line 2408
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v3

    iget-object v5, v2, Landroid/icu/text/UnicodeSet;->list:[I

    aget v5, v5, v3

    if-eq v4, v5, :cond_22

    return v0

    .line 2407
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 2410
    .end local v3    # "i":I
    :cond_25
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    iget-object v4, v2, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_32

    if-nez v3, :cond_30

    return v0

    .line 2413
    .end local v2    # "that":Landroid/icu/text/UnicodeSet;
    :cond_30
    nop

    .line 2414
    return v1

    .line 2411
    :catch_32
    move-exception v1

    .line 2412
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public greylist-max-o findIn(Ljava/lang/CharSequence;IZ)I
    .registers 6
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "findNot"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4851
    nop

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_18

    .line 4852
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 4853
    .local v0, "cp":I
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eq v1, p3, :cond_12

    .line 4854
    goto :goto_18

    .line 4851
    :cond_12
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_1

    .line 4857
    .end local v0    # "cp":I
    :cond_18
    :goto_18
    return p2
.end method

.method public greylist-max-o findLastIn(Ljava/lang/CharSequence;IZ)I
    .registers 7
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "findNot"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4873
    const/4 v0, -0x1

    add-int/2addr p2, v0

    .line 4874
    :goto_2
    if-ltz p2, :cond_15

    .line 4875
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 4876
    .local v1, "cp":I
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eq v2, p3, :cond_f

    .line 4877
    goto :goto_15

    .line 4874
    :cond_f
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    sub-int/2addr p2, v2

    goto :goto_2

    .line 4880
    .end local v1    # "cp":I
    :cond_15
    :goto_15
    if-gez p2, :cond_18

    goto :goto_19

    :cond_18
    move v0, p2

    :goto_19
    return v0
.end method

.method public whitelist test-api freeze()Landroid/icu/text/UnicodeSet;
    .registers 4

    .line 4173
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_36

    .line 4174
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 4177
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4178
    new-instance v0, Landroid/icu/impl/UnicodeSetStringSpan;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v2, 0x7f

    invoke-direct {v0, p0, v1, v2}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    .line 4180
    :cond_1f
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0}, Landroid/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v0

    if-nez v0, :cond_36

    .line 4187
    :cond_2b
    new-instance v0, Landroid/icu/impl/BMPSet;

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/BMPSet;-><init>([II)V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    .line 4190
    :cond_36
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 309
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRangeCount()I
    .registers 2

    .line 2341
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public whitelist test-api getRangeEnd(I)I
    .registers 4
    .param p1, "index"    # I

    .line 2365
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api getRangeStart(I)I
    .registers 4
    .param p1, "index"    # I

    .line 2353
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getRegexEquivalent()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2081
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2082
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2084
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2085
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    .line 2086
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2087
    .local v3, "s":Ljava/lang/String;
    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2088
    invoke-static {v0, v3, v2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    .line 2089
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_1d

    .line 2090
    :cond_32
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api hasStrings()Z
    .registers 2

    .line 900
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 2425
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 2426
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    if-ge v1, v2, :cond_13

    .line 2427
    const v2, 0xf4243

    mul-int/2addr v0, v2

    .line 2428
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 2426
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2430
    .end local v1    # "i":I
    :cond_13
    return v0
.end method

.method public whitelist test-api indexOf(I)I
    .registers 7
    .param p1, "c"    # I

    .line 1151
    if-ltz p1, :cond_24

    const v0, 0x10ffff

    if-gt p1, v0, :cond_24

    .line 1154
    const/4 v0, 0x0

    .line 1155
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1157
    .local v1, "n":I
    :goto_9
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget v0, v2, v0

    .line 1158
    .local v0, "start":I
    if-ge p1, v0, :cond_13

    .line 1159
    const/4 v2, -0x1

    return v2

    .line 1161
    :cond_13
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget v2, v2, v3

    .line 1162
    .local v2, "limit":I
    if-ge p1, v2, :cond_1f

    .line 1163
    add-int v3, v1, p1

    sub-int/2addr v3, v0

    return v3

    .line 1165
    :cond_1f
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    .line 1166
    .end local v0    # "start":I
    .end local v2    # "limit":I
    move v0, v4

    goto :goto_9

    .line 1152
    .end local v1    # "n":I
    .end local v4    # "i":I
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 3

    .line 893
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 4163
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4472
    new-instance v0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;

    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;-><init>(Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public whitelist test-api matches(Landroid/icu/text/Replaceable;[IIZ)I
    .registers 16
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offset"    # [I
    .param p3, "limit"    # I
    .param p4, "incremental"    # Z

    .line 954
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, p3, :cond_15

    .line 955
    const v1, 0xffff

    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 956
    if-eqz p4, :cond_13

    move v2, v3

    :cond_13
    return v2

    .line 958
    :cond_14
    return v0

    .line 961
    :cond_15
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 970
    aget v1, p2, v0

    if-ge v1, p3, :cond_21

    move v1, v3

    goto :goto_22

    :cond_21
    move v1, v0

    .line 975
    .local v1, "forward":Z
    :goto_22
    aget v4, p2, v0

    invoke-interface {p1, v4}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v4

    .line 979
    .local v4, "firstChar":C
    const/4 v5, 0x0

    .line 981
    .local v5, "highWaterLength":I
    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v6}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2f
    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 982
    .local v7, "trial":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_42

    .line 983
    goto :goto_2f

    .line 986
    :cond_42
    if-eqz v1, :cond_46

    move v8, v0

    goto :goto_4b

    :cond_46
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_4b
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 990
    .local v8, "c":C
    if-eqz v1, :cond_54

    if-le v8, v4, :cond_54

    goto :goto_7b

    .line 991
    :cond_54
    if-eq v8, v4, :cond_57

    goto :goto_2f

    .line 993
    :cond_57
    aget v9, p2, v0

    invoke-static {p1, v9, p3, v7}, Landroid/icu/text/UnicodeSet;->matchRest(Landroid/icu/text/Replaceable;IILjava/lang/String;)I

    move-result v9

    .line 995
    .local v9, "length":I
    if-eqz p4, :cond_6c

    .line 996
    if-eqz v1, :cond_66

    aget v10, p2, v0

    sub-int v10, p3, v10

    goto :goto_69

    :cond_66
    aget v10, p2, v0

    sub-int/2addr v10, p3

    .line 997
    .local v10, "maxLen":I
    :goto_69
    if-ne v9, v10, :cond_6c

    .line 999
    return v3

    .line 1003
    .end local v10    # "maxLen":I
    :cond_6c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_7a

    .line 1005
    if-le v9, v5, :cond_75

    .line 1006
    move v5, v9

    .line 1010
    :cond_75
    if-eqz v1, :cond_2f

    if-ge v9, v5, :cond_2f

    .line 1011
    goto :goto_7b

    .line 1015
    .end local v7    # "trial":Ljava/lang/String;
    .end local v8    # "c":C
    .end local v9    # "length":I
    :cond_7a
    goto :goto_2f

    .line 1019
    :cond_7b
    :goto_7b
    if-eqz v5, :cond_88

    .line 1020
    aget v3, p2, v0

    if-eqz v1, :cond_83

    move v6, v5

    goto :goto_84

    :cond_83
    neg-int v6, v5

    :goto_84
    add-int/2addr v3, v6

    aput v3, p2, v0

    .line 1021
    return v2

    .line 1024
    .end local v1    # "forward":Z
    .end local v4    # "firstChar":C
    .end local v5    # "highWaterLength":I
    :cond_88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeFilter;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o matchesAt(Ljava/lang/CharSequence;I)I
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1077
    const/4 v0, -0x1

    .line 1079
    .local v0, "lastLen":I
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1080
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1081
    .local v1, "firstChar":C
    const/4 v2, 0x0

    .line 1083
    .local v2, "trial":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1084
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1085
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    .line 1086
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1087
    .local v4, "firstStringChar":C
    if-ge v4, v1, :cond_27

    goto :goto_12

    .line 1088
    :cond_27
    if-le v4, v1, :cond_2a

    goto :goto_42

    .line 1089
    .end local v4    # "firstStringChar":C
    :cond_2a
    goto :goto_12

    .line 1093
    :cond_2b
    :goto_2b
    invoke-static {p1, p2, v2}, Landroid/icu/text/UnicodeSet;->matchesAt(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)I

    move-result v4

    .line 1094
    .local v4, "tempLen":I
    if-le v0, v4, :cond_32

    goto :goto_42

    .line 1095
    :cond_32
    move v0, v4

    .line 1096
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_42

    .line 1097
    :cond_3a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Ljava/lang/String;

    .line 1098
    .end local v4    # "tempLen":I
    goto :goto_2b

    .line 1101
    .end local v1    # "firstChar":C
    .end local v2    # "trial":Ljava/lang/String;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_42
    :goto_42
    const/4 v1, 0x2

    if-ge v0, v1, :cond_53

    .line 1102
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1103
    .local v1, "cp":I
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    .line 1106
    .end local v1    # "cp":I
    :cond_53
    add-int v1, p2, v0

    return v1
.end method

.method public whitelist test-api matchesIndexValue(I)Z
    .registers 8
    .param p1, "v"    # I

    .line 919
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2c

    .line 920
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v1

    .line 921
    .local v1, "low":I
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v3

    .line 922
    .local v3, "high":I
    and-int/lit16 v4, v1, -0x100

    and-int/lit16 v5, v3, -0x100

    if-ne v4, v5, :cond_1f

    .line 923
    and-int/lit16 v4, v1, 0xff

    if-gt v4, p1, :cond_28

    and-int/lit16 v4, v3, 0xff

    if-gt p1, v4, :cond_28

    .line 924
    return v2

    .line 926
    :cond_1f
    and-int/lit16 v4, v1, 0xff

    if-le v4, p1, :cond_2b

    and-int/lit16 v4, v3, 0xff

    if-gt p1, v4, :cond_28

    goto :goto_2b

    .line 919
    .end local v1    # "low":I
    .end local v3    # "high":I
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 927
    .restart local v1    # "low":I
    .restart local v3    # "high":I
    :cond_2b
    :goto_2b
    return v2

    .line 930
    .end local v0    # "i":I
    .end local v1    # "low":I
    .end local v3    # "high":I
    :cond_2c
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 931
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 932
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 933
    goto :goto_39

    .line 935
    :cond_4c
    invoke-static {v3, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v4

    .line 936
    .local v4, "c":I
    and-int/lit16 v5, v4, 0xff

    if-ne v5, p1, :cond_55

    .line 937
    return v2

    .line 939
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "c":I
    :cond_55
    goto :goto_39

    .line 941
    :cond_56
    return v1
.end method

.method blacklist maybeOnlyCaseSensitive(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 5
    .param p1, "src"    # Landroid/icu/text/UnicodeSet;

    .line 3911
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_9

    .line 3912
    return-object p1

    .line 3915
    :cond_9
    const/16 v0, 0x22

    invoke-static {v0}, Landroid/icu/lang/CharacterProperties;->getBinaryPropertySet(I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 3917
    .local v0, "sensitive":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v2

    if-le v1, v2, :cond_20

    goto :goto_2b

    .line 3920
    :cond_20
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    return-object v1

    .line 3918
    :cond_2b
    :goto_2b
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    return-object v1
.end method

.method public blacklist rangeStream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Landroid/icu/text/UnicodeSet$EntryRange;",
            ">;"
        }
    .end annotation

    .line 5042
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->ranges()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ranges()Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroid/icu/text/UnicodeSet$EntryRange;",
            ">;"
        }
    .end annotation

    .line 4429
    new-instance v0, Landroid/icu/text/UnicodeSet$EntryRangeIterable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/text/UnicodeSet$EntryRangeIterable;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet-IA;)V

    return-object v0
.end method

.method public final whitelist test-api remove(I)Landroid/icu/text/UnicodeSet;
    .registers 3
    .param p1, "c"    # I

    .line 1613
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(II)Landroid/icu/text/UnicodeSet;
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1592
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1593
    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_38

    const v2, 0x10ffff

    if-gt p1, v2, :cond_38

    .line 1596
    if-ltz p2, :cond_1c

    if-gt p2, v2, :cond_1c

    .line 1599
    if-gt p1, p2, :cond_1b

    .line 1600
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v1}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    .line 1602
    :cond_1b
    return-object p0

    .line 1597
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v3, p2

    invoke-static {v3, v4, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1594
    :cond_38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v3, p1

    invoke-static {v3, v4, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist test-api remove(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 1624
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1625
    .local v0, "cp":I
    if-gez v0, :cond_1e

    .line 1626
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1627
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1628
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v2, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1629
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v2, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 1630
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 1632
    .end local v1    # "str":Ljava/lang/String;
    :cond_1d
    goto :goto_21

    .line 1633
    :cond_1e
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    .line 1635
    :goto_21
    return-object p0
.end method

.method public whitelist test-api removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 5
    .param p1, "c"    # Landroid/icu/text/UnicodeSet;

    .line 2290
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2291
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    .line 2292
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2293
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    .line 2295
    :cond_1e
    return-object p0
.end method

.method public final whitelist test-api removeAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 1479
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 4603
    .local p1, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 4604
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 4605
    .local v1, "o":Ljava/lang/CharSequence;, "TT;"
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->remove(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 4606
    .end local v1    # "o":Ljava/lang/CharSequence;, "TT;"
    goto :goto_7

    .line 4607
    :cond_17
    return-object p0
.end method

.method public final whitelist test-api removeAllStrings()Landroid/icu/text/UnicodeSet;
    .registers 2

    .line 1487
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1488
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1489
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1490
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 1492
    :cond_11
    return-object p0
.end method

.method public final whitelist test-api retain(I)Landroid/icu/text/UnicodeSet;
    .registers 3
    .param p1, "c"    # I

    .line 1548
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UnicodeSet;->retain(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api retain(II)Landroid/icu/text/UnicodeSet;
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1525
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1526
    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_3d

    const v2, 0x10ffff

    if-gt p1, v2, :cond_3d

    .line 1529
    if-ltz p2, :cond_21

    if-gt p2, v2, :cond_21

    .line 1532
    if-gt p1, p2, :cond_1d

    .line 1533
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    goto :goto_20

    .line 1535
    :cond_1d
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 1537
    :goto_20
    return-object p0

    .line 1530
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v3, p2

    invoke-static {v3, v4, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1527
    :cond_3d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v3, p1

    invoke-static {v3, v4, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist test-api retain(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .registers 7
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 1559
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1560
    .local v0, "cp":I
    if-gez v0, :cond_2f

    .line 1561
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1562
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1563
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v2, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1566
    .local v2, "isIn":Z
    if-eqz v2, :cond_23

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_23

    .line 1567
    return-object p0

    .line 1569
    :cond_23
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 1570
    if-eqz v2, :cond_2b

    .line 1571
    invoke-direct {p0, v1}, Landroid/icu/text/UnicodeSet;->addString(Ljava/lang/CharSequence;)V

    .line 1573
    :cond_2b
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 1574
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "isIn":Z
    goto :goto_32

    .line 1575
    :cond_2f
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->retain(II)Landroid/icu/text/UnicodeSet;

    .line 1577
    :goto_32
    return-object p0
.end method

.method public whitelist test-api retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 5
    .param p1, "c"    # Landroid/icu/text/UnicodeSet;

    .line 2268
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2269
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    .line 2270
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2271
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2272
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    goto :goto_24

    .line 2274
    :cond_1d
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->retainAll(Ljava/util/Collection;)Z

    .line 2277
    :cond_24
    :goto_24
    return-object p0
.end method

.method public final whitelist test-api retainAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 1459
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api retainAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 4614
    .local p1, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 4616
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 4617
    .local v0, "toRetain":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;

    .line 4618
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 4619
    return-object p0
.end method

.method public whitelist test-api set(II)Landroid/icu/text/UnicodeSet;
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 533
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 534
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 535
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    .line 536
    return-object p0
.end method

.method public whitelist test-api set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .registers 4
    .param p1, "other"    # Landroid/icu/text/UnicodeSet;

    .line 545
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 546
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 547
    iget v0, p1, Landroid/icu/text/UnicodeSet;->len:I

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 548
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 549
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 550
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    goto :goto_29

    .line 552
    :cond_25
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    .line 554
    :goto_29
    return-object p0
.end method

.method public whitelist test-api size()I
    .registers 6

    .line 879
    const/4 v0, 0x0

    .line 880
    .local v0, "n":I
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v1

    .line 881
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_17

    .line 882
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 881
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 884
    .end local v2    # "i":I
    :cond_17
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v2

    add-int/2addr v2, v0

    return v2
.end method

.method public whitelist test-api span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 4215
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4216
    .local v0, "end":I
    if-gez p2, :cond_8

    .line 4217
    const/4 p2, 0x0

    goto :goto_b

    .line 4218
    :cond_8
    if-lt p2, v0, :cond_b

    .line 4219
    return v0

    .line 4221
    :cond_b
    :goto_b
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 4223
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/icu/impl/BMPSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v1

    return v1

    .line 4225
    :cond_17
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v1, :cond_22

    .line 4226
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    return v1

    .line 4227
    :cond_22
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 4228
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v1, :cond_2f

    const/16 v1, 0x21

    goto :goto_31

    .line 4229
    :cond_2f
    const/16 v1, 0x22

    :goto_31
    nop

    .line 4230
    .local v1, "which":I
    new-instance v3, Landroid/icu/impl/UnicodeSetStringSpan;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, p0, v4, v1}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    .line 4231
    .local v3, "strSpan":Landroid/icu/impl/UnicodeSetStringSpan;
    invoke-virtual {v3}, Landroid/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 4232
    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    return v2

    .line 4236
    .end local v1    # "which":I
    .end local v3    # "strSpan":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_49
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/icu/text/UnicodeSet;->spanCodePointsAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v1

    return v1
.end method

.method public whitelist test-api span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 4201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;
    .param p4, "outCount"    # Landroid/icu/util/OutputInt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4250
    if-eqz p4, :cond_4b

    .line 4253
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4254
    .local v0, "end":I
    if-gez p2, :cond_a

    .line 4255
    const/4 p2, 0x0

    goto :goto_d

    .line 4256
    :cond_a
    if-lt p2, v0, :cond_d

    .line 4257
    return v0

    .line 4259
    :cond_d
    :goto_d
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v1, :cond_18

    .line 4262
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v1

    return v1

    .line 4263
    :cond_18
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    if-eqz v1, :cond_23

    .line 4264
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/icu/impl/BMPSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v1

    return v1

    .line 4265
    :cond_23
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 4266
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v1, :cond_30

    const/16 v1, 0x21

    goto :goto_32

    .line 4267
    :cond_30
    const/16 v1, 0x22

    :goto_32
    nop

    .line 4268
    .local v1, "which":I
    or-int/lit8 v1, v1, 0x40

    .line 4269
    new-instance v2, Landroid/icu/impl/UnicodeSetStringSpan;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3, v1}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    .line 4270
    .local v2, "strSpan":Landroid/icu/impl/UnicodeSetStringSpan;
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v3

    return v3

    .line 4273
    .end local v1    # "which":I
    .end local v2    # "strSpan":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeSet;->spanCodePointsAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v1

    return v1

    .line 4251
    .end local v0    # "end":I
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outCount must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .registers 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 4319
    const/4 v0, 0x0

    if-gtz p2, :cond_4

    .line 4320
    return v0

    .line 4322
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le p2, v1, :cond_e

    .line 4323
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 4325
    :cond_e
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    if-eqz v1, :cond_19

    .line 4327
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/impl/BMPSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    return v0

    .line 4329
    :cond_19
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v1, :cond_24

    .line 4330
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    return v0

    .line 4331
    :cond_24
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 4332
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v1, :cond_31

    .line 4333
    const/16 v1, 0x11

    goto :goto_33

    .line 4334
    :cond_31
    const/16 v1, 0x12

    :goto_33
    nop

    .line 4335
    .local v1, "which":I
    new-instance v2, Landroid/icu/impl/UnicodeSetStringSpan;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3, v1}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    .line 4336
    .local v2, "strSpan":Landroid/icu/impl/UnicodeSetStringSpan;
    invoke-virtual {v2}, Landroid/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 4337
    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    return v0

    .line 4342
    .end local v1    # "which":I
    .end local v2    # "strSpan":Landroid/icu/impl/UnicodeSetStringSpan;
    :cond_4b
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-eq p3, v1, :cond_50

    const/4 v0, 0x1

    .line 4345
    .local v0, "spanContained":Z
    :cond_50
    move v1, p2

    .line 4347
    .local v1, "prev":I
    :cond_51
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 4348
    .local v2, "c":I
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eq v0, v3, :cond_5c

    .line 4349
    goto :goto_63

    .line 4351
    :cond_5c
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 4352
    if-gtz v1, :cond_51

    .line 4353
    :goto_63
    return v1
.end method

.method public whitelist test-api spanBack(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 4305
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    return v0
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5096
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist stringStream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5060
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->strings()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api strings()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4799
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4800
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0

    .line 4802
    :cond_d
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY_STRINGS:Ljava/util/SortedSet;

    return-object v0
.end method

.method public greylist-max-o stripFrom(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .registers 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "matches"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4895
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 4896
    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/icu/text/UnicodeSet;->findIn(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 4897
    .local v2, "inside":I
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4898
    invoke-virtual {p0, p1, v2, p2}, Landroid/icu/text/UnicodeSet;->findIn(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 4899
    .end local v2    # "inside":I
    goto :goto_6

    .line 4900
    .end local v1    # "pos":I
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toPattern(Z)Ljava/lang/String;
    .registers 4
    .param p1, "escapeUnprintable"    # Z

    .line 719
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 720
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object v0

    .line 722
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p1}, Landroid/icu/text/UnicodeSet;->_toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 2438
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
