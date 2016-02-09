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
        Landroid/icu/text/UnicodeSet$Filter;,
        Landroid/icu/text/UnicodeSet$NumericValueFilter;,
        Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;,
        Landroid/icu/text/UnicodeSet$IntPropertyFilter;,
        Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;,
        Landroid/icu/text/UnicodeSet$VersionFilter;,
        Landroid/icu/text/UnicodeSet$XSymbolTable;,
        Landroid/icu/text/UnicodeSet$EntryRange;,
        Landroid/icu/text/UnicodeSet$EntryRangeIterable;,
        Landroid/icu/text/UnicodeSet$EntryRangeIterator;,
        Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;,
        Landroid/icu/text/UnicodeSet$ComparisonStyle;,
        Landroid/icu/text/UnicodeSet$SpanCondition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/text/UnicodeFilter;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/UnicodeSet;",
        ">;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/UnicodeSet;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ADD_CASE_MAPPINGS:I = 0x4

.field public static final ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

.field private static final ANY_ID:Ljava/lang/String; = "ANY"

.field private static final ASCII_ID:Ljava/lang/String; = "ASCII"

.field private static final ASSIGNED:Ljava/lang/String; = "Assigned"

.field public static final CASE:I = 0x2

.field public static final CASE_INSENSITIVE:I = 0x2

.field public static final EMPTY:Landroid/icu/text/UnicodeSet;

.field private static final GROW_EXTRA:I = 0x10

.field private static final HIGH:I = 0x110000

.field public static final IGNORE_SPACE:I = 0x1

.field private static INCLUSIONS:[Landroid/icu/text/UnicodeSet; = null

.field private static final LOW:I = 0x0

.field public static final MAX_VALUE:I = 0x10ffff

.field public static final MIN_VALUE:I = 0x0

.field private static final NO_VERSION:Landroid/icu/util/VersionInfo;

.field private static final START_EXTRA:I = 0x10

.field private static XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;


# instance fields
.field private volatile bmpSet:Landroid/icu/impl/BMPSet;

.field private buffer:[I

.field private len:I

.field private list:[I

.field private pat:Ljava/lang/String;

.field private rangeList:[I

.field private volatile stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

.field strings:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Landroid/icu/util/VersionInfo;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/text/UnicodeSet;->NO_VERSION:Landroid/icu/util/VersionInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/UnicodeSet;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/icu/text/UnicodeSet;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;
    .locals 1
    .param p0, "buf"    # Ljava/lang/Appendable;
    .param p1, "c"    # I
    .param p2, "escapeUnprintable"    # Z

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const-class v0, Landroid/icu/text/UnicodeSet;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    sput-boolean v0, Landroid/icu/text/UnicodeSet;->-assertionsDisabled:Z

    #@d
    .line 293
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@f
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@12
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    #@18
    .line 298
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@1a
    const v2, 0x10ffff

    #@1d
    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    #@20
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@23
    move-result-object v0

    #@24
    sput-object v0, Landroid/icu/text/UnicodeSet;->ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

    #@26
    .line 300
    sput-object v3, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    #@28
    .line 352
    sput-object v3, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    #@2a
    .line 3163
    invoke-static {v1, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@2d
    move-result-object v0

    #@2e
    sput-object v0, Landroid/icu/text/UnicodeSet;->NO_VERSION:Landroid/icu/util/VersionInfo;

    #@30
    .line 287
    return-void

    #@31
    :cond_0
    const/4 v0, 0x1

    #@32
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 364
    invoke-direct {p0}, Landroid/icu/text/UnicodeFilter;-><init>()V

    #@3
    .line 325
    new-instance v0, Ljava/util/TreeSet;

    #@5
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@a
    .line 336
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@d
    .line 365
    const/16 v0, 0x11

    #@f
    new-array v0, v0, [I

    #@11
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@13
    .line 366
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@15
    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@17
    add-int/lit8 v2, v1, 0x1

    #@19
    iput v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@1b
    const/high16 v2, 0x110000

    #@1d
    aput v2, v0, v1

    #@1f
    .line 364
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 386
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@3
    .line 387
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    #@6
    .line 385
    return-void
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "other"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 373
    invoke-direct {p0}, Landroid/icu/text/UnicodeFilter;-><init>()V

    #@3
    .line 325
    new-instance v0, Ljava/util/TreeSet;

    #@5
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@a
    .line 336
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@d
    .line 374
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@10
    .line 373
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 433
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@4
    .line 434
    const/4 v0, 0x1

    #@5
    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    #@8
    .line 432
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "options"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 462
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@4
    .line 463
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    #@7
    .line 461
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "symbols"    # Landroid/icu/text/SymbolTable;

    #@0
    .prologue
    .line 479
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@3
    .line 480
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    #@7
    .line 478
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "symbols"    # Landroid/icu/text/SymbolTable;
    .param p4, "options"    # I

    #@0
    .prologue
    .line 498
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@3
    .line 499
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    #@6
    .line 497
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ignoreWhitespace"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 447
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@4
    .line 448
    if-eqz p2, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    #@a
    .line 446
    return-void

    #@b
    .line 448
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public varargs constructor <init>([I)V
    .locals 7
    .param p1, "pairs"    # [I

    #@0
    .prologue
    .line 399
    invoke-direct {p0}, Landroid/icu/text/UnicodeFilter;-><init>()V

    #@3
    .line 325
    new-instance v5, Ljava/util/TreeSet;

    #@5
    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    #@8
    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@a
    .line 336
    const/4 v5, 0x0

    #@b
    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@d
    .line 400
    array-length v5, p1

    #@e
    and-int/lit8 v5, v5, 0x1

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 401
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v6, "Must have even number of integers"

    #@17
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v5

    #@1b
    .line 403
    :cond_0
    array-length v5, p1

    #@1c
    add-int/lit8 v5, v5, 0x1

    #@1e
    new-array v5, v5, [I

    #@20
    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@22
    .line 404
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@24
    array-length v5, v5

    #@25
    iput v5, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@27
    .line 405
    const/4 v3, -0x1

    #@28
    .line 406
    .local v3, "last":I
    const/4 v1, 0x0

    #@29
    .line 407
    .local v1, "i":I
    :goto_0
    array-length v5, p1

    #@2a
    if-ge v1, v5, :cond_3

    #@2c
    .line 409
    aget v4, p1, v1

    #@2e
    .line 410
    .local v4, "start":I
    if-lt v3, v4, :cond_1

    #@30
    .line 411
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v6, "Must be monotonically increasing."

    #@35
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v5

    #@39
    .line 413
    :cond_1
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@3b
    add-int/lit8 v2, v1, 0x1

    #@3d
    .end local v1    # "i":I
    .local v2, "i":I
    move v3, v4

    #@3e
    aput v4, v5, v1

    #@40
    .line 415
    aget v5, p1, v2

    #@42
    add-int/lit8 v0, v5, 0x1

    #@44
    .line 416
    .local v0, "end":I
    if-lt v3, v0, :cond_2

    #@46
    .line 417
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@48
    const-string/jumbo v6, "Must be monotonically increasing."

    #@4b
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v5

    #@4f
    .line 419
    :cond_2
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@51
    add-int/lit8 v1, v2, 0x1

    #@53
    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v3, v0

    #@54
    aput v0, v5, v2

    #@56
    goto :goto_0

    #@57
    .line 421
    .end local v0    # "end":I
    .end local v4    # "start":I
    :cond_3
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@59
    const/high16 v6, 0x110000

    #@5b
    aput v6, v5, v1

    #@5d
    .line 399
    return-void
.end method

.method private static _appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;
    .locals 2
    .param p1, "c"    # I
    .param p2, "escapeUnprintable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;IZ)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 653
    .local p0, "buf":Ljava/lang/Appendable;, "TT;"
    if-eqz p2, :cond_0

    #@2
    :try_start_0
    invoke-static {p1}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 656
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 657
    return-object p0

    #@f
    .line 661
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@12
    .line 676
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 677
    const/16 v1, 0x5c

    #@1a
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@1d
    .line 681
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    #@20
    .line 682
    return-object p0

    #@21
    .line 672
    :sswitch_0
    const/16 v1, 0x5c

    #@23
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    goto :goto_0

    #@27
    .line 683
    :catch_0
    move-exception v0

    #@28
    .line 684
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    #@2a
    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v1

    #@2e
    .line 661
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2d -> :sswitch_0
        0x3a -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static _appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;
    .locals 3
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

    #@0
    .prologue
    .line 640
    .local p0, "buf":Ljava/lang/Appendable;, "TT;"
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 641
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    #@a
    move-result v0

    #@b
    .line 642
    .local v0, "cp":I
    invoke-static {p0, v0, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@e
    .line 640
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@11
    move-result v2

    #@12
    add-int/2addr v1, v2

    #@13
    goto :goto_0

    #@14
    .line 644
    .end local v0    # "cp":I
    :cond_0
    return-object p0
.end method

.method private _toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;
    .locals 6
    .param p2, "escapeUnprintable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;Z)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "result":Ljava/lang/Appendable;, "TT;"
    const/16 v5, 0x5c

    #@2
    .line 709
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@4
    if-nez v4, :cond_0

    #@6
    .line 710
    const/4 v4, 0x1

    #@7
    invoke-direct {p0, p1, p2, v4}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    #@a
    move-result-object v4

    #@b
    return-object v4

    #@c
    .line 713
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 714
    :try_start_0
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@10
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@13
    .line 715
    return-object p1

    #@14
    .line 717
    :cond_1
    const/4 v3, 0x0

    #@15
    .line 718
    .local v3, "oddNumberOfBackslashes":Z
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@18
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1b
    move-result v4

    #@1c
    if-ge v2, v4, :cond_5

    #@1e
    .line 719
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@20
    invoke-virtual {v4, v2}, Ljava/lang/String;->codePointAt(I)I

    #@23
    move-result v0

    #@24
    .line 720
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@27
    move-result v4

    #@28
    add-int/2addr v2, v4

    #@29
    .line 721
    invoke-static {v0}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_2

    #@2f
    .line 725
    invoke-static {p1, v0}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    #@32
    .line 726
    const/4 v3, 0x0

    #@33
    goto :goto_0

    #@34
    .line 727
    :cond_2
    if-nez v3, :cond_3

    #@36
    if-ne v0, v5, :cond_3

    #@38
    .line 729
    const/4 v3, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 731
    :cond_3
    if-eqz v3, :cond_4

    #@3c
    .line 732
    const/16 v4, 0x5c

    #@3e
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@41
    .line 734
    :cond_4
    invoke-static {p1, v0}, Landroid/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    #@44
    .line 735
    const/4 v3, 0x0

    #@45
    goto :goto_0

    #@46
    .line 738
    .end local v0    # "c":I
    :cond_5
    if-eqz v3, :cond_6

    #@48
    .line 739
    const/16 v4, 0x5c

    #@4a
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4d
    .line 741
    :cond_6
    return-object p1

    #@4e
    .line 742
    .end local v2    # "i":I
    .end local v3    # "oddNumberOfBackslashes":Z
    :catch_0
    move-exception v1

    #@4f
    .line 743
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Landroid/icu/util/ICUUncheckedIOException;

    #@51
    invoke-direct {v4, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@54
    throw v4
.end method

.method private add([III)Landroid/icu/text/UnicodeSet;
    .locals 12
    .param p1, "other"    # [I
    .param p2, "otherLen"    # I
    .param p3, "polarity"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/high16 v11, 0x110000

    #@3
    .line 2951
    iget v9, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@5
    add-int/2addr v9, p2

    #@6
    invoke-direct {p0, v9}, Landroid/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    #@9
    .line 2952
    const/4 v6, 0x0

    #@a
    .line 2953
    .local v6, "k":I
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@c
    const/4 v2, 0x1

    #@d
    .local v2, "i":I
    aget v0, v9, v10

    #@f
    .line 2954
    .local v0, "a":I
    const/4 v4, 0x1

    #@10
    .local v4, "j":I
    aget v1, p1, v10

    #@12
    .local v1, "b":I
    move v7, v6

    #@13
    .end local v6    # "k":I
    .local v7, "k":I
    move v5, v4

    #@14
    .end local v4    # "j":I
    .local v5, "j":I
    move v3, v2

    #@15
    .line 2959
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    packed-switch p3, :pswitch_data_0

    #@18
    move v6, v7

    #@19
    .end local v7    # "k":I
    .restart local v6    # "k":I
    move v4, v5

    #@1a
    .end local v5    # "j":I
    .restart local v4    # "j":I
    move v2, v3

    #@1b
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_1
    move v7, v6

    #@1c
    .end local v6    # "k":I
    .restart local v7    # "k":I
    move v5, v4

    #@1d
    .end local v4    # "j":I
    .restart local v5    # "j":I
    move v3, v2

    #@1e
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@1f
    .line 2961
    :pswitch_0
    if-ge v0, v1, :cond_1

    #@21
    .line 2963
    if-lez v7, :cond_0

    #@23
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@25
    add-int/lit8 v10, v7, -0x1

    #@27
    aget v9, v9, v10

    #@29
    if-gt v0, v9, :cond_0

    #@2b
    .line 2965
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@2d
    aget v9, v9, v3

    #@2f
    iget-object v10, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@31
    add-int/lit8 v6, v7, -0x1

    #@33
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aget v10, v10, v6

    #@35
    invoke-static {v9, v10}, Landroid/icu/text/UnicodeSet;->max(II)I

    #@38
    move-result v0

    #@39
    .line 2971
    :goto_2
    add-int/lit8 v2, v3, 0x1

    #@3b
    .line 2972
    .end local v3    # "i":I
    .restart local v2    # "i":I
    xor-int/lit8 p3, p3, 0x1

    #@3d
    move v4, v5

    #@3e
    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto :goto_1

    #@3f
    .line 2968
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_0
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@41
    add-int/lit8 v6, v7, 0x1

    #@43
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v0, v9, v7

    #@45
    .line 2969
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@47
    aget v0, v9, v3

    #@49
    goto :goto_2

    #@4a
    .line 2973
    .end local v6    # "k":I
    .restart local v7    # "k":I
    :cond_1
    if-ge v1, v0, :cond_3

    #@4c
    .line 2974
    if-lez v7, :cond_2

    #@4e
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@50
    add-int/lit8 v10, v7, -0x1

    #@52
    aget v9, v9, v10

    #@54
    if-gt v1, v9, :cond_2

    #@56
    .line 2975
    aget v9, p1, v5

    #@58
    iget-object v10, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@5a
    add-int/lit8 v6, v7, -0x1

    #@5c
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aget v10, v10, v6

    #@5e
    invoke-static {v9, v10}, Landroid/icu/text/UnicodeSet;->max(II)I

    #@61
    move-result v1

    #@62
    .line 2980
    :goto_3
    add-int/lit8 v4, v5, 0x1

    #@64
    .line 2981
    .end local v5    # "j":I
    .restart local v4    # "j":I
    xor-int/lit8 p3, p3, 0x2

    #@66
    move v2, v3

    #@67
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@68
    .line 2977
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_2
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@6a
    add-int/lit8 v6, v7, 0x1

    #@6c
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v1, v9, v7

    #@6e
    .line 2978
    aget v1, p1, v5

    #@70
    goto :goto_3

    #@71
    .line 2983
    .end local v6    # "k":I
    .restart local v7    # "k":I
    :cond_3
    if-ne v0, v11, :cond_5

    #@73
    .line 3033
    :cond_4
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@75
    add-int/lit8 v6, v7, 0x1

    #@77
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v11, v9, v7

    #@79
    .line 3034
    iput v6, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@7b
    .line 3036
    iget-object v8, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@7d
    .line 3037
    .local v8, "temp":[I
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@7f
    iput-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@81
    .line 3038
    iput-object v8, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@83
    .line 3039
    const/4 v9, 0x0

    #@84
    iput-object v9, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@86
    .line 3040
    return-object p0

    #@87
    .line 2986
    .end local v6    # "k":I
    .end local v8    # "temp":[I
    .restart local v7    # "k":I
    :cond_5
    if-lez v7, :cond_6

    #@89
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@8b
    add-int/lit8 v10, v7, -0x1

    #@8d
    aget v9, v9, v10

    #@8f
    if-gt v0, v9, :cond_6

    #@91
    .line 2987
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@93
    aget v9, v9, v3

    #@95
    iget-object v10, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@97
    add-int/lit8 v6, v7, -0x1

    #@99
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aget v10, v10, v6

    #@9b
    invoke-static {v9, v10}, Landroid/icu/text/UnicodeSet;->max(II)I

    #@9e
    move-result v0

    #@9f
    .line 2993
    :goto_4
    add-int/lit8 v2, v3, 0x1

    #@a1
    .line 2994
    .end local v3    # "i":I
    .restart local v2    # "i":I
    xor-int/lit8 p3, p3, 0x1

    #@a3
    .line 2995
    add-int/lit8 v4, v5, 0x1

    #@a5
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@a7
    xor-int/lit8 p3, p3, 0x2

    #@a9
    goto/16 :goto_1

    #@ab
    .line 2990
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_6
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@ad
    add-int/lit8 v6, v7, 0x1

    #@af
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v0, v9, v7

    #@b1
    .line 2991
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@b3
    aget v0, v9, v3

    #@b5
    goto :goto_4

    #@b6
    .line 2999
    .end local v6    # "k":I
    .restart local v7    # "k":I
    :pswitch_1
    if-gt v1, v0, :cond_7

    #@b8
    .line 3000
    if-eq v0, v11, :cond_4

    #@ba
    .line 3001
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@bc
    add-int/lit8 v6, v7, 0x1

    #@be
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v0, v9, v7

    #@c0
    .line 3006
    :goto_5
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@c2
    add-int/lit8 v2, v3, 0x1

    #@c4
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@c6
    xor-int/lit8 p3, p3, 0x1

    #@c8
    .line 3007
    add-int/lit8 v4, v5, 0x1

    #@ca
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@cc
    xor-int/lit8 p3, p3, 0x2

    #@ce
    .line 3008
    goto/16 :goto_1

    #@d0
    .line 3003
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_7
    if-eq v1, v11, :cond_4

    #@d2
    .line 3004
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@d4
    add-int/lit8 v6, v7, 0x1

    #@d6
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v1, v9, v7

    #@d8
    goto :goto_5

    #@d9
    .line 3010
    .end local v6    # "k":I
    .restart local v7    # "k":I
    :pswitch_2
    if-ge v0, v1, :cond_8

    #@db
    .line 3011
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@dd
    add-int/lit8 v6, v7, 0x1

    #@df
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v0, v9, v7

    #@e1
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@e3
    add-int/lit8 v2, v3, 0x1

    #@e5
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@e7
    xor-int/lit8 p3, p3, 0x1

    #@e9
    move v4, v5

    #@ea
    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_1

    #@ec
    .line 3012
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_8
    if-ge v1, v0, :cond_9

    #@ee
    .line 3013
    add-int/lit8 v4, v5, 0x1

    #@f0
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@f2
    xor-int/lit8 p3, p3, 0x2

    #@f4
    move v6, v7

    #@f5
    .end local v7    # "k":I
    .restart local v6    # "k":I
    move v2, v3

    #@f6
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_1

    #@f8
    .line 3015
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_9
    if-eq v0, v11, :cond_4

    #@fa
    .line 3016
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@fc
    add-int/lit8 v2, v3, 0x1

    #@fe
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@100
    xor-int/lit8 p3, p3, 0x1

    #@102
    .line 3017
    add-int/lit8 v4, v5, 0x1

    #@104
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@106
    xor-int/lit8 p3, p3, 0x2

    #@108
    move v6, v7

    #@109
    .end local v7    # "k":I
    .restart local v6    # "k":I
    goto/16 :goto_1

    #@10b
    .line 3021
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :pswitch_3
    if-ge v1, v0, :cond_a

    #@10d
    .line 3022
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@10f
    add-int/lit8 v6, v7, 0x1

    #@111
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v1, v9, v7

    #@113
    add-int/lit8 v4, v5, 0x1

    #@115
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@117
    xor-int/lit8 p3, p3, 0x2

    #@119
    move v2, v3

    #@11a
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_1

    #@11c
    .line 3023
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_a
    if-ge v0, v1, :cond_b

    #@11e
    .line 3024
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@120
    add-int/lit8 v2, v3, 0x1

    #@122
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@124
    xor-int/lit8 p3, p3, 0x1

    #@126
    move v6, v7

    #@127
    .end local v7    # "k":I
    .restart local v6    # "k":I
    move v4, v5

    #@128
    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_1

    #@12a
    .line 3026
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_b
    if-eq v0, v11, :cond_4

    #@12c
    .line 3027
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@12e
    add-int/lit8 v2, v3, 0x1

    #@130
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@132
    xor-int/lit8 p3, p3, 0x1

    #@134
    .line 3028
    add-int/lit8 v4, v5, 0x1

    #@136
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@138
    xor-int/lit8 p3, p3, 0x2

    #@13a
    move v6, v7

    #@13b
    .end local v7    # "k":I
    .restart local v6    # "k":I
    goto/16 :goto_1

    #@13d
    .line 2959
    nop

    #@13e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static addAllTo(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection",
            "<TT;>;>(",
            "Ljava/lang/Iterable",
            "<TT;>;TU;)TU;"
        }
    .end annotation

    #@0
    .prologue
    .line 4573
    .local p0, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "target":Ljava/util/Collection;, "TU;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 4574
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@11
    goto :goto_0

    #@12
    .line 4576
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p1
.end method

.method public static addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;[TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 4584
    .local p0, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "target":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    #@1
    .line 4585
    .local v0, "i":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v3

    #@5
    .local v3, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    .line 4586
    .local v2, "item":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v0, 0x1

    #@11
    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v2, p1, v0

    #@13
    move v0, v1

    #@14
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@15
    .line 4588
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p1
.end method

.method private static final addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V
    .locals 2
    .param p0, "set"    # Landroid/icu/text/UnicodeSet;
    .param p1, "result"    # I
    .param p2, "full"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3751
    if-ltz p1, :cond_0

    #@3
    .line 3752
    const/16 v0, 0x1f

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 3754
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@a
    .line 3750
    :cond_0
    :goto_0
    return-void

    #@b
    .line 3757
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@12
    .line 3758
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@15
    goto :goto_0
.end method

.method private final add_unchecked(I)Landroid/icu/text/UnicodeSet;
    .locals 7
    .param p1, "c"    # I

    #@0
    .prologue
    const v3, 0x10ffff

    #@3
    const/4 v4, 0x0

    #@4
    .line 1233
    if-ltz p1, :cond_0

    #@6
    if-le p1, v3, :cond_1

    #@8
    .line 1234
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Invalid code point U+"

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    int-to-long v4, p1

    #@17
    const/4 v6, 0x6

    #@18
    invoke-static {v4, v5, v6}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 1240
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->findCodePoint(I)I

    #@2b
    move-result v0

    #@2c
    .line 1243
    .local v0, "i":I
    and-int/lit8 v2, v0, 0x1

    #@2e
    if-eqz v2, :cond_2

    #@30
    return-object p0

    #@31
    .line 1260
    :cond_2
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@33
    aget v2, v2, v0

    #@35
    add-int/lit8 v2, v2, -0x1

    #@37
    if-ne p1, v2, :cond_5

    #@39
    .line 1262
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@3b
    aput p1, v2, v0

    #@3d
    .line 1264
    if-ne p1, v3, :cond_3

    #@3f
    .line 1265
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@41
    add-int/lit8 v2, v2, 0x1

    #@43
    invoke-direct {p0, v2}, Landroid/icu/text/UnicodeSet;->ensureCapacity(I)V

    #@46
    .line 1266
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@48
    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@4a
    add-int/lit8 v4, v3, 0x1

    #@4c
    iput v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@4e
    const/high16 v4, 0x110000

    #@50
    aput v4, v2, v3

    #@52
    .line 1268
    :cond_3
    if-lez v0, :cond_4

    #@54
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@56
    add-int/lit8 v3, v0, -0x1

    #@58
    aget v2, v2, v3

    #@5a
    if-ne p1, v2, :cond_4

    #@5c
    .line 1274
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@5e
    add-int/lit8 v3, v0, 0x1

    #@60
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@62
    add-int/lit8 v5, v0, -0x1

    #@64
    iget v6, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@66
    sub-int/2addr v6, v0

    #@67
    add-int/lit8 v6, v6, -0x1

    #@69
    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@6c
    .line 1275
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@6e
    add-int/lit8 v2, v2, -0x2

    #@70
    iput v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@72
    .line 1315
    :cond_4
    :goto_0
    const/4 v2, 0x0

    #@73
    iput-object v2, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@75
    .line 1316
    return-object p0

    #@76
    .line 1279
    :cond_5
    if-lez v0, :cond_6

    #@78
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@7a
    add-int/lit8 v3, v0, -0x1

    #@7c
    aget v2, v2, v3

    #@7e
    if-ne p1, v2, :cond_6

    #@80
    .line 1281
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@82
    add-int/lit8 v3, v0, -0x1

    #@84
    aget v4, v2, v3

    #@86
    add-int/lit8 v4, v4, 0x1

    #@88
    aput v4, v2, v3

    #@8a
    goto :goto_0

    #@8b
    .line 1301
    :cond_6
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@8d
    add-int/lit8 v2, v2, 0x2

    #@8f
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@91
    array-length v3, v3

    #@92
    if-le v2, v3, :cond_8

    #@94
    .line 1302
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@96
    add-int/lit8 v2, v2, 0x2

    #@98
    add-int/lit8 v2, v2, 0x10

    #@9a
    new-array v1, v2, [I

    #@9c
    .line 1303
    .local v1, "temp":[I
    if-eqz v0, :cond_7

    #@9e
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@a0
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@a3
    .line 1304
    :cond_7
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@a5
    add-int/lit8 v3, v0, 0x2

    #@a7
    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@a9
    sub-int/2addr v4, v0

    #@aa
    invoke-static {v2, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@ad
    .line 1305
    iput-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@af
    .line 1310
    .end local v1    # "temp":[I
    :goto_1
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@b1
    aput p1, v2, v0

    #@b3
    .line 1311
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@b5
    add-int/lit8 v3, v0, 0x1

    #@b7
    add-int/lit8 v4, p1, 0x1

    #@b9
    aput v4, v2, v3

    #@bb
    .line 1312
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@bd
    add-int/lit8 v2, v2, 0x2

    #@bf
    iput v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@c1
    goto :goto_0

    #@c2
    .line 1307
    :cond_8
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@c4
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@c6
    add-int/lit8 v4, v0, 0x2

    #@c8
    iget v5, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@ca
    sub-int/2addr v5, v0

    #@cb
    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@ce
    goto :goto_1
.end method

.method private add_unchecked(II)Landroid/icu/text/UnicodeSet;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const v0, 0x10ffff

    #@3
    const/4 v4, 0x6

    #@4
    const/4 v2, 0x0

    #@5
    .line 1187
    if-ltz p1, :cond_0

    #@7
    if-le p1, v0, :cond_1

    #@9
    .line 1188
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Invalid code point U+"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    int-to-long v2, p1

    #@18
    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 1190
    :cond_1
    if-ltz p2, :cond_2

    #@2a
    if-le p2, v0, :cond_3

    #@2c
    .line 1191
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "Invalid code point U+"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    int-to-long v2, p2

    #@3b
    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0

    #@4b
    .line 1193
    :cond_3
    if-ge p1, p2, :cond_5

    #@4d
    .line 1194
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    #@50
    move-result-object v0

    #@51
    const/4 v1, 0x2

    #@52
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->add([III)Landroid/icu/text/UnicodeSet;

    #@55
    .line 1198
    :cond_4
    :goto_0
    return-object p0

    #@56
    .line 1195
    :cond_5
    if-ne p1, p2, :cond_4

    #@58
    .line 1196
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@5b
    goto :goto_0
.end method

.method private static append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "app"    # Ljava/lang/Appendable;
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 628
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 626
    return-void

    #@4
    .line 629
    :catch_0
    move-exception v0

    #@5
    .line 630
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    #@7
    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@a
    throw v1
.end method

.method private static appendCodePoint(Ljava/lang/Appendable;I)V
    .locals 3
    .param p0, "app"    # Ljava/lang/Appendable;
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 610
    sget-boolean v2, Landroid/icu/text/UnicodeSet;->-assertionsDisabled:Z

    #@3
    if-nez v2, :cond_1

    #@5
    if-ltz p1, :cond_0

    #@7
    const v2, 0x10ffff

    #@a
    if-gt p1, v2, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :cond_0
    if-nez v1, :cond_1

    #@f
    new-instance v1, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v1

    #@15
    .line 612
    :cond_1
    const v1, 0xffff

    #@18
    if-gt p1, v1, :cond_2

    #@1a
    .line 613
    int-to-char v1, p1

    #@1b
    :try_start_0
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@1e
    .line 609
    :goto_0
    return-void

    #@1f
    .line 615
    :cond_2
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@22
    move-result v1

    #@23
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@26
    move-result-object v1

    #@27
    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    #@2a
    move-result v2

    #@2b
    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    goto :goto_0

    #@2f
    .line 617
    :catch_0
    move-exception v0

    #@30
    .line 618
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    #@32
    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@35
    throw v1
.end method

.method private appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;
    .locals 9
    .param p2, "escapeUnprintable"    # Z
    .param p3, "includeStrings"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;ZZ)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 774
    .local p1, "result":Ljava/lang/Appendable;, "TT;"
    const/16 v7, 0x5b

    #@2
    :try_start_0
    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@5
    .line 776
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    #@8
    move-result v0

    #@9
    .line 781
    .local v0, "count":I
    const/4 v7, 0x1

    #@a
    if-le v0, v7, :cond_2

    #@c
    .line 782
    const/4 v7, 0x0

    #@d
    invoke-virtual {p0, v7}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    #@10
    move-result v7

    #@11
    if-nez v7, :cond_2

    #@13
    .line 783
    add-int/lit8 v7, v0, -0x1

    #@15
    invoke-virtual {p0, v7}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    #@18
    move-result v7

    #@19
    const v8, 0x10ffff

    #@1c
    if-ne v7, v8, :cond_2

    #@1e
    .line 786
    const/16 v7, 0x5e

    #@20
    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@23
    .line 788
    const/4 v3, 0x1

    #@24
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    #@26
    .line 789
    add-int/lit8 v7, v3, -0x1

    #@28
    invoke-virtual {p0, v7}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    #@2b
    move-result v7

    #@2c
    add-int/lit8 v6, v7, 0x1

    #@2e
    .line 790
    .local v6, "start":I
    invoke-virtual {p0, v3}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    #@31
    move-result v7

    #@32
    add-int/lit8 v2, v7, -0x1

    #@34
    .line 791
    .local v2, "end":I
    invoke-static {p1, v6, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@37
    .line 792
    if-eq v6, v2, :cond_1

    #@39
    .line 793
    add-int/lit8 v7, v6, 0x1

    #@3b
    if-eq v7, v2, :cond_0

    #@3d
    .line 794
    const/16 v7, 0x2d

    #@3f
    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@42
    .line 796
    :cond_0
    invoke-static {p1, v2, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@45
    .line 788
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@47
    goto :goto_0

    #@48
    .line 803
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v6    # "start":I
    :cond_2
    const/4 v3, 0x0

    #@49
    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    #@4b
    .line 804
    invoke-virtual {p0, v3}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    #@4e
    move-result v6

    #@4f
    .line 805
    .restart local v6    # "start":I
    invoke-virtual {p0, v3}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    #@52
    move-result v2

    #@53
    .line 806
    .restart local v2    # "end":I
    invoke-static {p1, v6, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@56
    .line 807
    if-eq v6, v2, :cond_4

    #@58
    .line 808
    add-int/lit8 v7, v6, 0x1

    #@5a
    if-eq v7, v2, :cond_3

    #@5c
    .line 809
    const/16 v7, 0x2d

    #@5e
    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@61
    .line 811
    :cond_3
    invoke-static {p1, v2, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@64
    .line 803
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@66
    goto :goto_1

    #@67
    .line 816
    .end local v2    # "end":I
    .end local v6    # "start":I
    :cond_5
    if-eqz p3, :cond_6

    #@69
    iget-object v7, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@6b
    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    #@6e
    move-result v7

    #@6f
    if-lez v7, :cond_6

    #@71
    .line 817
    iget-object v7, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@73
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@76
    move-result-object v5

    #@77
    .local v5, "s$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@7a
    move-result v7

    #@7b
    if-eqz v7, :cond_6

    #@7d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@80
    move-result-object v4

    #@81
    check-cast v4, Ljava/lang/String;

    #@83
    .line 818
    .local v4, "s":Ljava/lang/String;
    const/16 v7, 0x7b

    #@85
    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@88
    .line 819
    invoke-static {p1, v4, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    #@8b
    .line 820
    const/16 v7, 0x7d

    #@8d
    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    goto :goto_2

    #@91
    .line 825
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    #@92
    .line 826
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Landroid/icu/util/ICUUncheckedIOException;

    #@94
    invoke-direct {v7, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@97
    throw v7

    #@98
    .line 823
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    :cond_6
    const/16 v7, 0x5d

    #@9a
    :try_start_1
    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@9d
    .line 824
    return-object p1
.end method

.method private applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;
    .locals 8
    .param p1, "filter"    # Landroid/icu/text/UnicodeSet$Filter;
    .param p2, "src"    # I

    #@0
    .prologue
    .line 3238
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@3
    .line 3240
    const/4 v6, -0x1

    #@4
    .line 3241
    .local v6, "startHasProperty":I
    invoke-static {p2}, Landroid/icu/text/UnicodeSet;->getInclusions(I)Landroid/icu/text/UnicodeSet;

    #@7
    move-result-object v2

    #@8
    .line 3242
    .local v2, "inclusions":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    #@b
    move-result v4

    #@c
    .line 3244
    .local v4, "limitRange":I
    const/4 v3, 0x0

    #@d
    .local v3, "j":I
    :goto_0
    if-ge v3, v4, :cond_3

    #@f
    .line 3246
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    #@12
    move-result v5

    #@13
    .line 3247
    .local v5, "start":I
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    #@16
    move-result v1

    #@17
    .line 3250
    .local v1, "end":I
    move v0, v5

    #@18
    .local v0, "ch":I
    :goto_1
    if-gt v0, v1, :cond_2

    #@1a
    .line 3253
    invoke-interface {p1, v0}, Landroid/icu/text/UnicodeSet$Filter;->contains(I)Z

    #@1d
    move-result v7

    #@1e
    if-eqz v7, :cond_1

    #@20
    .line 3254
    if-gez v6, :cond_0

    #@22
    .line 3255
    move v6, v0

    #@23
    .line 3250
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_1

    #@26
    .line 3257
    :cond_1
    if-ltz v6, :cond_0

    #@28
    .line 3258
    add-int/lit8 v7, v0, -0x1

    #@2a
    invoke-direct {p0, v6, v7}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@2d
    .line 3259
    const/4 v6, -0x1

    #@2e
    goto :goto_2

    #@2f
    .line 3244
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 3263
    .end local v0    # "ch":I
    .end local v1    # "end":I
    .end local v5    # "start":I
    :cond_3
    if-ltz v6, :cond_4

    #@34
    .line 3264
    const v7, 0x10ffff

    #@37
    invoke-direct {p0, v6, v7}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@3a
    .line 3267
    :cond_4
    return-object p0
.end method

.method private applyPattern(Landroid/icu/impl/RuleCharacterIterator;Landroid/icu/text/SymbolTable;Ljava/lang/Appendable;I)V
    .locals 25
    .param p1, "chars"    # Landroid/icu/impl/RuleCharacterIterator;
    .param p2, "symbols"    # Landroid/icu/text/SymbolTable;
    .param p3, "rebuiltPat"    # Ljava/lang/Appendable;
    .param p4, "options"    # I

    #@0
    .prologue
    .line 2455
    const/16 v18, 0x3

    #@2
    .line 2457
    .local v18, "opts":I
    and-int/lit8 v23, p4, 0x1

    #@4
    if-eqz v23, :cond_0

    #@6
    .line 2458
    const/16 v18, 0x7

    #@8
    .line 2461
    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    #@a
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .local v19, "patBuf":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    #@e
    .line 2462
    .local v6, "buf":Ljava/lang/StringBuilder;
    const/16 v22, 0x0

    #@10
    .line 2463
    .local v22, "usePat":Z
    const/16 v20, 0x0

    #@12
    .line 2464
    .local v20, "scratch":Landroid/icu/text/UnicodeSet;
    const/4 v5, 0x0

    #@13
    .line 2468
    .local v5, "backup":Ljava/lang/Object;
    const/4 v11, 0x0

    #@14
    .local v11, "lastItem":I
    const/4 v10, 0x0

    #@15
    .local v10, "lastChar":I
    const/4 v14, 0x0

    #@16
    .line 2469
    .local v14, "mode":I
    const/16 v17, 0x0

    #@18
    .line 2471
    .local v17, "op":C
    const/4 v9, 0x0

    #@19
    .line 2473
    .local v9, "invert":Z
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@1c
    .line 2475
    .end local v5    # "backup":Ljava/lang/Object;
    .end local v6    # "buf":Ljava/lang/StringBuilder;
    .end local v17    # "op":C
    .end local v20    # "scratch":Landroid/icu/text/UnicodeSet;
    :goto_0
    const/16 v23, 0x2

    #@1e
    move/from16 v0, v23

    #@20
    if-eq v14, v0, :cond_1

    #@22
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->atEnd()Z

    #@25
    move-result v23

    #@26
    if-eqz v23, :cond_5

    #@28
    .line 2777
    :cond_1
    :goto_1
    const/16 v23, 0x2

    #@2a
    move/from16 v0, v23

    #@2c
    if-eq v14, v0, :cond_2

    #@2e
    .line 2778
    const-string/jumbo v23, "Missing \']\'"

    #@31
    move-object/from16 v0, p1

    #@33
    move-object/from16 v1, v23

    #@35
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@38
    .line 2781
    :cond_2
    move-object/from16 v0, p1

    #@3a
    move/from16 v1, v18

    #@3c
    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->skipIgnored(I)V

    #@3f
    .line 2789
    and-int/lit8 v23, p4, 0x2

    #@41
    if-eqz v23, :cond_3

    #@43
    .line 2790
    const/16 v23, 0x2

    #@45
    move-object/from16 v0, p0

    #@47
    move/from16 v1, v23

    #@49
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->closeOver(I)Landroid/icu/text/UnicodeSet;

    #@4c
    .line 2792
    :cond_3
    if-eqz v9, :cond_4

    #@4e
    .line 2793
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    #@51
    .line 2798
    :cond_4
    if-eqz v22, :cond_2f

    #@53
    .line 2799
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v23

    #@57
    move-object/from16 v0, p3

    #@59
    move-object/from16 v1, v23

    #@5b
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    #@5e
    .line 2449
    :goto_2
    return-void

    #@5f
    .line 2487
    :cond_5
    const/4 v7, 0x0

    #@60
    .line 2488
    .local v7, "c":I
    const/4 v12, 0x0

    #@61
    .line 2489
    .local v12, "literal":Z
    const/4 v15, 0x0

    #@62
    .line 2494
    .local v15, "nested":Landroid/icu/text/UnicodeSet;
    const/16 v21, 0x0

    #@64
    .line 2495
    .local v21, "setMode":I
    move-object/from16 v0, p1

    #@66
    move/from16 v1, v18

    #@68
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->resemblesPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;I)Z

    #@6b
    move-result v23

    #@6c
    if-eqz v23, :cond_d

    #@6e
    .line 2496
    const/16 v21, 0x2

    #@70
    .line 2559
    .end local v12    # "literal":Z
    .end local v15    # "nested":Landroid/icu/text/UnicodeSet;
    :cond_6
    :goto_3
    if-eqz v21, :cond_15

    #@72
    .line 2560
    const/16 v23, 0x1

    #@74
    move/from16 v0, v23

    #@76
    if-ne v11, v0, :cond_8

    #@78
    .line 2561
    if-eqz v17, :cond_7

    #@7a
    .line 2562
    const-string/jumbo v23, "Char expected after operator"

    #@7d
    move-object/from16 v0, p1

    #@7f
    move-object/from16 v1, v23

    #@81
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@84
    .line 2564
    :cond_7
    move-object/from16 v0, p0

    #@86
    invoke-direct {v0, v10, v10}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@89
    .line 2565
    const/16 v23, 0x0

    #@8b
    move-object/from16 v0, v19

    #@8d
    move/from16 v1, v23

    #@8f
    invoke-static {v0, v10, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@92
    .line 2566
    const/16 v17, 0x0

    #@94
    .restart local v17    # "op":C
    const/4 v11, 0x0

    #@95
    .line 2569
    .end local v17    # "op":C
    :cond_8
    const/16 v23, 0x2d

    #@97
    move/from16 v0, v17

    #@99
    move/from16 v1, v23

    #@9b
    if-eq v0, v1, :cond_9

    #@9d
    const/16 v23, 0x26

    #@9f
    move/from16 v0, v17

    #@a1
    move/from16 v1, v23

    #@a3
    if-ne v0, v1, :cond_a

    #@a5
    .line 2570
    :cond_9
    move-object/from16 v0, v19

    #@a7
    move/from16 v1, v17

    #@a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ac
    .line 2573
    :cond_a
    if-nez v15, :cond_c

    #@ae
    .line 2574
    if-nez v20, :cond_b

    #@b0
    new-instance v20, Landroid/icu/text/UnicodeSet;

    #@b2
    invoke-direct/range {v20 .. v20}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@b5
    .line 2575
    :cond_b
    move-object/from16 v15, v20

    #@b7
    .line 2577
    :cond_c
    packed-switch v21, :pswitch_data_0

    #@ba
    .line 2590
    :goto_4
    const/16 v22, 0x1

    #@bc
    .line 2592
    if-nez v14, :cond_14

    #@be
    .line 2594
    move-object/from16 v0, p0

    #@c0
    invoke-virtual {v0, v15}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@c3
    .line 2595
    const/4 v14, 0x2

    #@c4
    .line 2596
    goto/16 :goto_1

    #@c6
    .line 2509
    .restart local v12    # "literal":Z
    .restart local v15    # "nested":Landroid/icu/text/UnicodeSet;
    :cond_d
    move-object/from16 v0, p1

    #@c8
    invoke-virtual {v0, v5}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    move-result-object v5

    #@cc
    .line 2510
    .restart local v5    # "backup":Ljava/lang/Object;
    move-object/from16 v0, p1

    #@ce
    move/from16 v1, v18

    #@d0
    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    #@d3
    move-result v7

    #@d4
    .line 2511
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    #@d7
    move-result v12

    #@d8
    .line 2513
    .local v12, "literal":Z
    const/16 v23, 0x5b

    #@da
    move/from16 v0, v23

    #@dc
    if-ne v7, v0, :cond_e

    #@de
    if-eqz v12, :cond_f

    #@e0
    .line 2541
    :cond_e
    if-eqz p2, :cond_6

    #@e2
    .line 2542
    move-object/from16 v0, p2

    #@e4
    invoke-interface {v0, v7}, Landroid/icu/text/SymbolTable;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    #@e7
    move-result-object v13

    #@e8
    .line 2543
    .local v13, "m":Landroid/icu/text/UnicodeMatcher;
    if-eqz v13, :cond_6

    #@ea
    .line 2545
    :try_start_0
    move-object v0, v13

    #@eb
    check-cast v0, Landroid/icu/text/UnicodeSet;

    #@ed
    move-object v15, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@ee
    .line 2546
    .local v15, "nested":Landroid/icu/text/UnicodeSet;
    const/16 v21, 0x3

    #@f0
    goto :goto_3

    #@f1
    .line 2514
    .end local v13    # "m":Landroid/icu/text/UnicodeMatcher;
    .local v15, "nested":Landroid/icu/text/UnicodeSet;
    :cond_f
    const/16 v23, 0x1

    #@f3
    move/from16 v0, v23

    #@f5
    if-ne v14, v0, :cond_10

    #@f7
    .line 2515
    move-object/from16 v0, p1

    #@f9
    invoke-virtual {v0, v5}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    #@fc
    .line 2516
    const/16 v21, 0x1

    #@fe
    goto/16 :goto_3

    #@100
    .line 2519
    :cond_10
    const/4 v14, 0x1

    #@101
    .line 2520
    const/16 v23, 0x5b

    #@103
    move-object/from16 v0, v19

    #@105
    move/from16 v1, v23

    #@107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10a
    .line 2521
    move-object/from16 v0, p1

    #@10c
    invoke-virtual {v0, v5}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    #@10f
    move-result-object v5

    #@110
    .line 2522
    move-object/from16 v0, p1

    #@112
    move/from16 v1, v18

    #@114
    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    #@117
    move-result v7

    #@118
    .line 2523
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    #@11b
    move-result v12

    #@11c
    .line 2524
    const/16 v23, 0x5e

    #@11e
    move/from16 v0, v23

    #@120
    if-ne v7, v0, :cond_11

    #@122
    if-eqz v12, :cond_12

    #@124
    .line 2533
    :cond_11
    :goto_5
    const/16 v23, 0x2d

    #@126
    move/from16 v0, v23

    #@128
    if-ne v7, v0, :cond_13

    #@12a
    .line 2534
    const/4 v12, 0x1

    #@12b
    .local v12, "literal":Z
    goto/16 :goto_3

    #@12d
    .line 2525
    .local v12, "literal":Z
    :cond_12
    const/4 v9, 0x1

    #@12e
    .line 2526
    const/16 v23, 0x5e

    #@130
    move-object/from16 v0, v19

    #@132
    move/from16 v1, v23

    #@134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@137
    .line 2527
    move-object/from16 v0, p1

    #@139
    invoke-virtual {v0, v5}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    #@13c
    move-result-object v5

    #@13d
    .line 2528
    move-object/from16 v0, p1

    #@13f
    move/from16 v1, v18

    #@141
    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    #@144
    move-result v7

    #@145
    .line 2529
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    #@148
    move-result v12

    #@149
    goto :goto_5

    #@14a
    .line 2537
    :cond_13
    move-object/from16 v0, p1

    #@14c
    invoke-virtual {v0, v5}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    #@14f
    goto/16 :goto_0

    #@151
    .line 2547
    .restart local v13    # "m":Landroid/icu/text/UnicodeMatcher;
    :catch_0
    move-exception v8

    #@152
    .line 2548
    .local v8, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v23, "Syntax error"

    #@155
    move-object/from16 v0, p1

    #@157
    move-object/from16 v1, v23

    #@159
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@15c
    goto/16 :goto_3

    #@15e
    .line 2579
    .end local v5    # "backup":Ljava/lang/Object;
    .end local v8    # "e":Ljava/lang/ClassCastException;
    .end local v12    # "literal":Z
    .end local v13    # "m":Landroid/icu/text/UnicodeMatcher;
    .end local v15    # "nested":Landroid/icu/text/UnicodeSet;
    :pswitch_0
    move-object/from16 v0, p1

    #@160
    move-object/from16 v1, p2

    #@162
    move-object/from16 v2, v19

    #@164
    move/from16 v3, p4

    #@166
    invoke-direct {v15, v0, v1, v2, v3}, Landroid/icu/text/UnicodeSet;->applyPattern(Landroid/icu/impl/RuleCharacterIterator;Landroid/icu/text/SymbolTable;Ljava/lang/Appendable;I)V

    #@169
    goto/16 :goto_4

    #@16b
    .line 2582
    :pswitch_1
    move-object/from16 v0, p1

    #@16d
    move/from16 v1, v18

    #@16f
    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->skipIgnored(I)V

    #@172
    .line 2583
    move-object/from16 v0, p1

    #@174
    move-object/from16 v1, v19

    #@176
    move-object/from16 v2, p2

    #@178
    invoke-direct {v15, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->applyPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/Appendable;Landroid/icu/text/SymbolTable;)V

    #@17b
    goto/16 :goto_4

    #@17d
    .line 2586
    :pswitch_2
    const/16 v23, 0x0

    #@17f
    move-object/from16 v0, v19

    #@181
    move/from16 v1, v23

    #@183
    invoke-direct {v15, v0, v1}, Landroid/icu/text/UnicodeSet;->_toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;

    #@186
    goto/16 :goto_4

    #@188
    .line 2599
    :cond_14
    sparse-switch v17, :sswitch_data_0

    #@18b
    .line 2611
    :goto_6
    const/16 v17, 0x0

    #@18d
    .line 2612
    .restart local v17    # "op":C
    const/4 v11, 0x2

    #@18e
    .line 2614
    goto/16 :goto_0

    #@190
    .line 2601
    .end local v17    # "op":C
    :sswitch_0
    move-object/from16 v0, p0

    #@192
    invoke-virtual {v0, v15}, Landroid/icu/text/UnicodeSet;->removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@195
    goto :goto_6

    #@196
    .line 2604
    :sswitch_1
    move-object/from16 v0, p0

    #@198
    invoke-virtual {v0, v15}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@19b
    goto :goto_6

    #@19c
    .line 2607
    :sswitch_2
    move-object/from16 v0, p0

    #@19e
    invoke-virtual {v0, v15}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@1a1
    goto :goto_6

    #@1a2
    .line 2617
    :cond_15
    if-nez v14, :cond_16

    #@1a4
    .line 2618
    const-string/jumbo v23, "Missing \'[\'"

    #@1a7
    move-object/from16 v0, p1

    #@1a9
    move-object/from16 v1, v23

    #@1ab
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@1ae
    .line 2625
    :cond_16
    if-nez v12, :cond_17

    #@1b0
    .line 2626
    sparse-switch v7, :sswitch_data_1

    #@1b3
    .line 2744
    :cond_17
    :goto_7
    packed-switch v11, :pswitch_data_1

    #@1b6
    goto/16 :goto_0

    #@1b8
    .line 2746
    :pswitch_3
    const/4 v11, 0x1

    #@1b9
    .line 2747
    move v10, v7

    #@1ba
    .line 2748
    goto/16 :goto_0

    #@1bc
    .line 2628
    :sswitch_3
    const/16 v23, 0x1

    #@1be
    move/from16 v0, v23

    #@1c0
    if-ne v11, v0, :cond_18

    #@1c2
    .line 2629
    move-object/from16 v0, p0

    #@1c4
    invoke-direct {v0, v10, v10}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@1c7
    .line 2630
    const/16 v23, 0x0

    #@1c9
    move-object/from16 v0, v19

    #@1cb
    move/from16 v1, v23

    #@1cd
    invoke-static {v0, v10, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@1d0
    .line 2633
    :cond_18
    const/16 v23, 0x2d

    #@1d2
    move/from16 v0, v17

    #@1d4
    move/from16 v1, v23

    #@1d6
    if-ne v0, v1, :cond_1a

    #@1d8
    .line 2634
    move-object/from16 v0, p0

    #@1da
    move/from16 v1, v17

    #@1dc
    move/from16 v2, v17

    #@1de
    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@1e1
    .line 2635
    move-object/from16 v0, v19

    #@1e3
    move/from16 v1, v17

    #@1e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e8
    .line 2639
    :cond_19
    :goto_8
    const/16 v23, 0x5d

    #@1ea
    move-object/from16 v0, v19

    #@1ec
    move/from16 v1, v23

    #@1ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f1
    .line 2640
    const/4 v14, 0x2

    #@1f2
    .line 2641
    goto/16 :goto_0

    #@1f4
    .line 2636
    :cond_1a
    const/16 v23, 0x26

    #@1f6
    move/from16 v0, v17

    #@1f8
    move/from16 v1, v23

    #@1fa
    if-ne v0, v1, :cond_19

    #@1fc
    .line 2637
    const-string/jumbo v23, "Trailing \'&\'"

    #@1ff
    move-object/from16 v0, p1

    #@201
    move-object/from16 v1, v23

    #@203
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@206
    goto :goto_8

    #@207
    .line 2643
    :sswitch_4
    if-nez v17, :cond_1c

    #@209
    .line 2644
    if-eqz v11, :cond_1b

    #@20b
    .line 2645
    int-to-char v0, v7

    #@20c
    move/from16 v17, v0

    #@20e
    .line 2646
    .local v17, "op":C
    goto/16 :goto_0

    #@210
    .line 2649
    .end local v17    # "op":C
    :cond_1b
    move-object/from16 v0, p0

    #@212
    invoke-direct {v0, v7, v7}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@215
    .line 2650
    move-object/from16 v0, p1

    #@217
    move/from16 v1, v18

    #@219
    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    #@21c
    move-result v7

    #@21d
    .line 2651
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    #@220
    move-result v12

    #@221
    .line 2652
    .restart local v12    # "literal":Z
    const/16 v23, 0x5d

    #@223
    move/from16 v0, v23

    #@225
    if-ne v7, v0, :cond_1c

    #@227
    if-eqz v12, :cond_1d

    #@229
    .line 2659
    .end local v12    # "literal":Z
    :cond_1c
    const-string/jumbo v23, "\'-\' not after char or set"

    #@22c
    move-object/from16 v0, p1

    #@22e
    move-object/from16 v1, v23

    #@230
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@233
    goto :goto_7

    #@234
    .line 2653
    .restart local v12    # "literal":Z
    :cond_1d
    const-string/jumbo v23, "-]"

    #@237
    move-object/from16 v0, v19

    #@239
    move-object/from16 v1, v23

    #@23b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23e
    .line 2654
    const/4 v14, 0x2

    #@23f
    .line 2655
    goto/16 :goto_0

    #@241
    .line 2662
    .end local v12    # "literal":Z
    :sswitch_5
    const/16 v23, 0x2

    #@243
    move/from16 v0, v23

    #@245
    if-ne v11, v0, :cond_1e

    #@247
    if-nez v17, :cond_1e

    #@249
    .line 2663
    int-to-char v0, v7

    #@24a
    move/from16 v17, v0

    #@24c
    .line 2664
    .restart local v17    # "op":C
    goto/16 :goto_0

    #@24e
    .line 2666
    .end local v17    # "op":C
    :cond_1e
    const-string/jumbo v23, "\'&\' not after set"

    #@251
    move-object/from16 v0, p1

    #@253
    move-object/from16 v1, v23

    #@255
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@258
    goto/16 :goto_7

    #@25a
    .line 2669
    :sswitch_6
    const-string/jumbo v23, "\'^\' not after \'[\'"

    #@25d
    move-object/from16 v0, p1

    #@25f
    move-object/from16 v1, v23

    #@261
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@264
    goto/16 :goto_7

    #@266
    .line 2672
    :sswitch_7
    if-eqz v17, :cond_1f

    #@268
    .line 2673
    const-string/jumbo v23, "Missing operand after operator"

    #@26b
    move-object/from16 v0, p1

    #@26d
    move-object/from16 v1, v23

    #@26f
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@272
    .line 2675
    :cond_1f
    const/16 v23, 0x1

    #@274
    move/from16 v0, v23

    #@276
    if-ne v11, v0, :cond_20

    #@278
    .line 2676
    move-object/from16 v0, p0

    #@27a
    invoke-direct {v0, v10, v10}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@27d
    .line 2677
    const/16 v23, 0x0

    #@27f
    move-object/from16 v0, v19

    #@281
    move/from16 v1, v23

    #@283
    invoke-static {v0, v10, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@286
    .line 2679
    :cond_20
    const/4 v11, 0x0

    #@287
    .line 2680
    if-nez v6, :cond_22

    #@289
    .line 2681
    new-instance v6, Ljava/lang/StringBuilder;

    #@28b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@28e
    .line 2685
    :goto_9
    const/16 v16, 0x0

    #@290
    .line 2686
    .local v16, "ok":Z
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->atEnd()Z

    #@293
    move-result v23

    #@294
    if-nez v23, :cond_24

    #@296
    .line 2687
    move-object/from16 v0, p1

    #@298
    move/from16 v1, v18

    #@29a
    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    #@29d
    move-result v7

    #@29e
    .line 2688
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    #@2a1
    move-result v12

    #@2a2
    .line 2689
    .restart local v12    # "literal":Z
    const/16 v23, 0x7d

    #@2a4
    move/from16 v0, v23

    #@2a6
    if-ne v7, v0, :cond_21

    #@2a8
    if-eqz v12, :cond_23

    #@2aa
    .line 2693
    :cond_21
    invoke-static {v6, v7}, Landroid/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    #@2ad
    goto :goto_a

    #@2ae
    .line 2683
    .end local v12    # "literal":Z
    .end local v16    # "ok":Z
    :cond_22
    const/16 v23, 0x0

    #@2b0
    move/from16 v0, v23

    #@2b2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@2b5
    goto :goto_9

    #@2b6
    .line 2690
    .restart local v12    # "literal":Z
    .restart local v16    # "ok":Z
    :cond_23
    const/16 v16, 0x1

    #@2b8
    .line 2695
    .end local v12    # "literal":Z
    :cond_24
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@2bb
    move-result v23

    #@2bc
    const/16 v24, 0x1

    #@2be
    move/from16 v0, v23

    #@2c0
    move/from16 v1, v24

    #@2c2
    if-lt v0, v1, :cond_25

    #@2c4
    if-eqz v16, :cond_25

    #@2c6
    .line 2701
    :goto_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c9
    move-result-object v23

    #@2ca
    move-object/from16 v0, p0

    #@2cc
    move-object/from16 v1, v23

    #@2ce
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@2d1
    .line 2702
    const/16 v23, 0x7b

    #@2d3
    move-object/from16 v0, v19

    #@2d5
    move/from16 v1, v23

    #@2d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2da
    .line 2703
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2dd
    move-result-object v23

    #@2de
    const/16 v24, 0x0

    #@2e0
    move-object/from16 v0, v19

    #@2e2
    move-object/from16 v1, v23

    #@2e4
    move/from16 v2, v24

    #@2e6
    invoke-static {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    #@2e9
    .line 2704
    const/16 v23, 0x7d

    #@2eb
    move-object/from16 v0, v19

    #@2ed
    move/from16 v1, v23

    #@2ef
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f2
    goto/16 :goto_0

    #@2f4
    .line 2696
    :cond_25
    const-string/jumbo v23, "Invalid multicharacter string"

    #@2f7
    move-object/from16 v0, p1

    #@2f9
    move-object/from16 v1, v23

    #@2fb
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@2fe
    goto :goto_b

    #@2ff
    .line 2713
    .end local v16    # "ok":Z
    :sswitch_8
    move-object/from16 v0, p1

    #@301
    invoke-virtual {v0, v5}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    #@304
    move-result-object v5

    #@305
    .line 2714
    .restart local v5    # "backup":Ljava/lang/Object;
    move-object/from16 v0, p1

    #@307
    move/from16 v1, v18

    #@309
    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    #@30c
    move-result v7

    #@30d
    .line 2715
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    #@310
    move-result v12

    #@311
    .line 2716
    .restart local v12    # "literal":Z
    const/16 v23, 0x5d

    #@313
    move/from16 v0, v23

    #@315
    if-ne v7, v0, :cond_26

    #@317
    if-eqz v12, :cond_29

    #@319
    :cond_26
    const/4 v4, 0x0

    #@31a
    .line 2717
    .local v4, "anchor":Z
    :goto_c
    if-nez p2, :cond_27

    #@31c
    if-eqz v4, :cond_2a

    #@31e
    .line 2722
    :cond_27
    if-eqz v4, :cond_2b

    #@320
    if-nez v17, :cond_2b

    #@322
    .line 2723
    const/16 v23, 0x1

    #@324
    move/from16 v0, v23

    #@326
    if-ne v11, v0, :cond_28

    #@328
    .line 2724
    move-object/from16 v0, p0

    #@32a
    invoke-direct {v0, v10, v10}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@32d
    .line 2725
    const/16 v23, 0x0

    #@32f
    move-object/from16 v0, v19

    #@331
    move/from16 v1, v23

    #@333
    invoke-static {v0, v10, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@336
    .line 2727
    :cond_28
    const v23, 0xffff

    #@339
    move-object/from16 v0, p0

    #@33b
    move/from16 v1, v23

    #@33d
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;->add_unchecked(I)Landroid/icu/text/UnicodeSet;

    #@340
    .line 2728
    const/16 v22, 0x1

    #@342
    .line 2729
    const/16 v23, 0x24

    #@344
    move-object/from16 v0, v19

    #@346
    move/from16 v1, v23

    #@348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34b
    move-result-object v23

    #@34c
    const/16 v24, 0x5d

    #@34e
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@351
    .line 2730
    const/4 v14, 0x2

    #@352
    .line 2731
    goto/16 :goto_0

    #@354
    .line 2716
    .end local v4    # "anchor":Z
    :cond_29
    const/4 v4, 0x1

    #@355
    .restart local v4    # "anchor":Z
    goto :goto_c

    #@356
    .line 2718
    :cond_2a
    const/16 v7, 0x24

    #@358
    .line 2719
    move-object/from16 v0, p1

    #@35a
    invoke-virtual {v0, v5}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    #@35d
    goto/16 :goto_7

    #@35f
    .line 2733
    :cond_2b
    const-string/jumbo v23, "Unquoted \'$\'"

    #@362
    move-object/from16 v0, p1

    #@364
    move-object/from16 v1, v23

    #@366
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@369
    goto/16 :goto_7

    #@36b
    .line 2750
    .end local v4    # "anchor":Z
    .end local v5    # "backup":Ljava/lang/Object;
    .end local v12    # "literal":Z
    :pswitch_4
    const/16 v23, 0x2d

    #@36d
    move/from16 v0, v17

    #@36f
    move/from16 v1, v23

    #@371
    if-ne v0, v1, :cond_2d

    #@373
    .line 2751
    if-lt v10, v7, :cond_2c

    #@375
    .line 2754
    const-string/jumbo v23, "Invalid range"

    #@378
    move-object/from16 v0, p1

    #@37a
    move-object/from16 v1, v23

    #@37c
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@37f
    .line 2756
    :cond_2c
    move-object/from16 v0, p0

    #@381
    invoke-direct {v0, v10, v7}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@384
    .line 2757
    const/16 v23, 0x0

    #@386
    move-object/from16 v0, v19

    #@388
    move/from16 v1, v23

    #@38a
    invoke-static {v0, v10, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@38d
    .line 2758
    move-object/from16 v0, v19

    #@38f
    move/from16 v1, v17

    #@391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@394
    .line 2759
    const/16 v23, 0x0

    #@396
    move-object/from16 v0, v19

    #@398
    move/from16 v1, v23

    #@39a
    invoke-static {v0, v7, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@39d
    .line 2760
    const/16 v17, 0x0

    #@39f
    .local v17, "op":C
    const/4 v11, 0x0

    #@3a0
    goto/16 :goto_0

    #@3a2
    .line 2762
    .end local v17    # "op":C
    :cond_2d
    move-object/from16 v0, p0

    #@3a4
    invoke-direct {v0, v10, v10}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@3a7
    .line 2763
    const/16 v23, 0x0

    #@3a9
    move-object/from16 v0, v19

    #@3ab
    move/from16 v1, v23

    #@3ad
    invoke-static {v0, v10, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    #@3b0
    .line 2764
    move v10, v7

    #@3b1
    goto/16 :goto_0

    #@3b3
    .line 2768
    :pswitch_5
    if-eqz v17, :cond_2e

    #@3b5
    .line 2769
    const-string/jumbo v23, "Set expected after operator"

    #@3b8
    move-object/from16 v0, p1

    #@3ba
    move-object/from16 v1, v23

    #@3bc
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@3bf
    .line 2771
    :cond_2e
    move v10, v7

    #@3c0
    .line 2772
    const/4 v11, 0x1

    #@3c1
    .line 2773
    goto/16 :goto_0

    #@3c3
    .line 2801
    .end local v7    # "c":I
    .end local v21    # "setMode":I
    :cond_2f
    const/16 v23, 0x0

    #@3c5
    const/16 v24, 0x1

    #@3c7
    move-object/from16 v0, p0

    #@3c9
    move-object/from16 v1, p3

    #@3cb
    move/from16 v2, v23

    #@3cd
    move/from16 v3, v24

    #@3cf
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    #@3d2
    goto/16 :goto_2

    #@3d4
    .line 2577
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    #@3de
    .line 2599
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x26 -> :sswitch_1
        0x2d -> :sswitch_0
    .end sparse-switch

    #@3ec
    .line 2626
    :sswitch_data_1
    .sparse-switch
        0x24 -> :sswitch_8
        0x26 -> :sswitch_5
        0x2d -> :sswitch_4
        0x5d -> :sswitch_3
        0x5e -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch

    #@406
    .line 2744
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;
    .locals 19
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ppos"    # Ljava/text/ParsePosition;
    .param p3, "symbols"    # Landroid/icu/text/SymbolTable;

    #@0
    .prologue
    .line 3577
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v6

    #@4
    .line 3582
    .local v6, "pos":I
    add-int/lit8 v4, v6, 0x5

    #@6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@9
    move-result v5

    #@a
    if-le v4, v5, :cond_0

    #@c
    .line 3583
    const/4 v4, 0x0

    #@d
    return-object v4

    #@e
    .line 3586
    :cond_0
    const/16 v16, 0x0

    #@10
    .line 3587
    .local v16, "posix":Z
    const/4 v14, 0x0

    #@11
    .line 3588
    .local v14, "isName":Z
    const/4 v13, 0x0

    #@12
    .line 3591
    .local v13, "invert":Z
    const-string/jumbo v4, "[:"

    #@15
    const/4 v5, 0x0

    #@16
    const/4 v7, 0x2

    #@17
    move-object/from16 v0, p1

    #@19
    invoke-virtual {v0, v6, v4, v5, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_2

    #@1f
    .line 3592
    const/16 v16, 0x1

    #@21
    .line 3593
    add-int/lit8 v4, v6, 0x2

    #@23
    move-object/from16 v0, p1

    #@25
    invoke-static {v0, v4}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    #@28
    move-result v6

    #@29
    .line 3594
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@2c
    move-result v4

    #@2d
    if-ge v6, v4, :cond_1

    #@2f
    move-object/from16 v0, p1

    #@31
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v4

    #@35
    const/16 v5, 0x5e

    #@37
    if-ne v4, v5, :cond_1

    #@39
    .line 3595
    add-int/lit8 v6, v6, 0x1

    #@3b
    .line 3596
    const/4 v13, 0x1

    #@3c
    .line 3614
    :cond_1
    :goto_0
    if-eqz v16, :cond_9

    #@3e
    const-string/jumbo v4, ":]"

    #@41
    :goto_1
    move-object/from16 v0, p1

    #@43
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@46
    move-result v11

    #@47
    .line 3615
    .local v11, "close":I
    if-gez v11, :cond_a

    #@49
    .line 3617
    const/4 v4, 0x0

    #@4a
    return-object v4

    #@4b
    .line 3598
    .end local v11    # "close":I
    :cond_2
    const-string/jumbo v7, "\\p"

    #@4e
    const/4 v5, 0x1

    #@4f
    const/4 v8, 0x0

    #@50
    const/4 v9, 0x2

    #@51
    move-object/from16 v4, p1

    #@53
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@56
    move-result v4

    #@57
    if-nez v4, :cond_3

    #@59
    .line 3599
    const-string/jumbo v4, "\\N"

    #@5c
    const/4 v5, 0x0

    #@5d
    const/4 v7, 0x2

    #@5e
    move-object/from16 v0, p1

    #@60
    invoke-virtual {v0, v6, v4, v5, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@63
    move-result v4

    #@64
    .line 3598
    if-eqz v4, :cond_8

    #@66
    .line 3600
    :cond_3
    add-int/lit8 v4, v6, 0x1

    #@68
    move-object/from16 v0, p1

    #@6a
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@6d
    move-result v10

    #@6e
    .line 3601
    .local v10, "c":C
    const/16 v4, 0x50

    #@70
    if-ne v10, v4, :cond_5

    #@72
    const/4 v13, 0x1

    #@73
    .line 3602
    :goto_2
    const/16 v4, 0x4e

    #@75
    if-ne v10, v4, :cond_6

    #@77
    const/4 v14, 0x1

    #@78
    .line 3603
    :goto_3
    add-int/lit8 v4, v6, 0x2

    #@7a
    move-object/from16 v0, p1

    #@7c
    invoke-static {v0, v4}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    #@7f
    move-result v6

    #@80
    .line 3604
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@83
    move-result v4

    #@84
    if-eq v6, v4, :cond_4

    #@86
    add-int/lit8 v15, v6, 0x1

    #@88
    .end local v6    # "pos":I
    .local v15, "pos":I
    move-object/from16 v0, p1

    #@8a
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@8d
    move-result v4

    #@8e
    const/16 v5, 0x7b

    #@90
    if-eq v4, v5, :cond_7

    #@92
    move v6, v15

    #@93
    .line 3606
    .end local v15    # "pos":I
    .restart local v6    # "pos":I
    :cond_4
    const/4 v4, 0x0

    #@94
    return-object v4

    #@95
    .line 3601
    :cond_5
    const/4 v13, 0x0

    #@96
    goto :goto_2

    #@97
    .line 3602
    :cond_6
    const/4 v14, 0x0

    #@98
    goto :goto_3

    #@99
    .end local v6    # "pos":I
    .restart local v15    # "pos":I
    :cond_7
    move v6, v15

    #@9a
    .line 3604
    .end local v15    # "pos":I
    .restart local v6    # "pos":I
    goto :goto_0

    #@9b
    .line 3610
    .end local v10    # "c":C
    :cond_8
    const/4 v4, 0x0

    #@9c
    return-object v4

    #@9d
    .line 3614
    :cond_9
    const-string/jumbo v4, "}"

    #@a0
    goto :goto_1

    #@a1
    .line 3623
    .restart local v11    # "close":I
    :cond_a
    const/16 v4, 0x3d

    #@a3
    move-object/from16 v0, p1

    #@a5
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->indexOf(II)I

    #@a8
    move-result v12

    #@a9
    .line 3625
    .local v12, "equals":I
    if-ltz v12, :cond_b

    #@ab
    if-ge v12, v11, :cond_b

    #@ad
    if-eqz v14, :cond_e

    #@af
    .line 3633
    :cond_b
    move-object/from16 v0, p1

    #@b1
    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b4
    move-result-object v17

    #@b5
    .line 3634
    .local v17, "propName":Ljava/lang/String;
    const-string/jumbo v18, ""

    #@b8
    .line 3637
    .local v18, "valueName":Ljava/lang/String;
    if-eqz v14, :cond_c

    #@ba
    .line 3643
    move-object/from16 v18, v17

    #@bc
    .line 3644
    const-string/jumbo v17, "na"

    #@bf
    .line 3648
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    #@c1
    move-object/from16 v1, v17

    #@c3
    move-object/from16 v2, v18

    #@c5
    move-object/from16 v3, p3

    #@c7
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/UnicodeSet;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;

    #@ca
    .line 3650
    if-eqz v13, :cond_d

    #@cc
    .line 3651
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    #@cf
    .line 3655
    :cond_d
    if-eqz v16, :cond_f

    #@d1
    const/4 v4, 0x2

    #@d2
    :goto_5
    add-int/2addr v4, v11

    #@d3
    move-object/from16 v0, p2

    #@d5
    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    #@d8
    .line 3657
    return-object p0

    #@d9
    .line 3627
    .end local v17    # "propName":Ljava/lang/String;
    .end local v18    # "valueName":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p1

    #@db
    invoke-virtual {v0, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@de
    move-result-object v17

    #@df
    .line 3628
    .restart local v17    # "propName":Ljava/lang/String;
    add-int/lit8 v4, v12, 0x1

    #@e1
    move-object/from16 v0, p1

    #@e3
    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e6
    move-result-object v18

    #@e7
    .restart local v18    # "valueName":Ljava/lang/String;
    goto :goto_4

    #@e8
    .line 3655
    :cond_f
    const/4 v4, 0x1

    #@e9
    goto :goto_5
.end method

.method private applyPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/Appendable;Landroid/icu/text/SymbolTable;)V
    .locals 4
    .param p1, "chars"    # Landroid/icu/impl/RuleCharacterIterator;
    .param p2, "rebuiltPat"    # Ljava/lang/Appendable;
    .param p3, "symbols"    # Landroid/icu/text/SymbolTable;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3672
    invoke-virtual {p1}, Landroid/icu/impl/RuleCharacterIterator;->lookahead()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 3673
    .local v0, "patStr":Ljava/lang/String;
    new-instance v1, Ljava/text/ParsePosition;

    #@7
    invoke-direct {v1, v3}, Ljava/text/ParsePosition;-><init>(I)V

    #@a
    .line 3674
    .local v1, "pos":Ljava/text/ParsePosition;
    invoke-direct {p0, v0, v1, p3}, Landroid/icu/text/UnicodeSet;->applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;

    #@d
    .line 3675
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 3676
    const-string/jumbo v2, "Invalid property pattern"

    #@16
    invoke-static {p1, v2}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@19
    .line 3678
    :cond_0
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {p1, v2}, Landroid/icu/impl/RuleCharacterIterator;->jumpahead(I)V

    #@20
    .line 3679
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    #@23
    move-result v2

    #@24
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {p2, v2}, Landroid/icu/text/UnicodeSet;->append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    #@2b
    .line 3671
    return-void
.end method

.method private checkFrozen()V
    .locals 2

    #@0
    .prologue
    .line 4152
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify frozen object"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 4151
    :cond_0
    return-void
.end method

.method public static compare(ILjava/lang/CharSequence;)I
    .locals 1
    .param p0, "codePoint"    # I
    .param p1, "string"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4511
    invoke-static {p1, p0}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    #@3
    move-result v0

    #@4
    neg-int v0, v0

    #@5
    return v0
.end method

.method public static compare(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "codePoint"    # I

    #@0
    .prologue
    .line 4500
    invoke-static {p0, p1}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 4524
    .local p0, "collection1":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "collection2":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/util/Iterator;Ljava/util/Iterator;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static compare(Ljava/util/Collection;Ljava/util/Collection;Landroid/icu/text/UnicodeSet$ComparisonStyle;)I
    .locals 5
    .param p2, "style"    # Landroid/icu/text/UnicodeSet$ComparisonStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;",
            "Landroid/icu/text/UnicodeSet$ComparisonStyle;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "collection1":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "collection2":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 4559
    sget-object v1, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@4
    if-eq p2, v1, :cond_3

    #@6
    .line 4560
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@9
    move-result v1

    #@a
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@d
    move-result v4

    #@e
    sub-int v0, v1, v4

    #@10
    .line 4561
    .local v0, "diff":I
    if-eqz v0, :cond_3

    #@12
    .line 4562
    if-gez v0, :cond_2

    #@14
    move v1, v2

    #@15
    :goto_0
    sget-object v4, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@17
    if-ne p2, v4, :cond_0

    #@19
    move v3, v2

    #@1a
    :cond_0
    if-ne v1, v3, :cond_1

    #@1c
    const/4 v2, -0x1

    #@1d
    :cond_1
    return v2

    #@1e
    :cond_2
    move v1, v3

    #@1f
    goto :goto_0

    #@20
    .line 4565
    .end local v0    # "diff":I
    :cond_3
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    #@23
    move-result v1

    #@24
    return v1
.end method

.method public static compare(Ljava/util/Iterator;Ljava/util/Iterator;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Ljava/util/Iterator",
            "<TT;>;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p0, "first":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "other":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 4539
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_2

    #@7
    .line 4540
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    const/4 v3, -0x1

    #@e
    :cond_1
    return v3

    #@f
    .line 4541
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-nez v4, :cond_3

    #@15
    .line 4542
    const/4 v3, 0x1

    #@16
    return v3

    #@17
    .line 4544
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/lang/Comparable;

    #@1d
    .line 4545
    .local v0, "item1":Ljava/lang/Comparable;, "TT;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljava/lang/Comparable;

    #@23
    .line 4546
    .local v1, "item2":Ljava/lang/Comparable;, "TT;"
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@26
    move-result v2

    #@27
    .line 4547
    .local v2, "result":I
    if-eqz v2, :cond_0

    #@29
    .line 4548
    return v2
.end method

.method private containsAll(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1994
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    if-lt p2, v3, :cond_0

    #@7
    .line 1995
    return v4

    #@8
    .line 1997
    :cond_0
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    .line 1998
    .local v0, "cp":I
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@15
    move-result v3

    #@16
    add-int/2addr v3, p2

    #@17
    invoke-direct {p0, p1, v3}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 1999
    return v4

    #@1e
    .line 2001
    :cond_1
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@20
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v2

    #@24
    .local v2, "setStr$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_3

    #@2a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Ljava/lang/String;

    #@30
    .line 2002
    .local v1, "setStr":Ljava/lang/String;
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_2

    #@36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@39
    move-result v3

    #@3a
    add-int/2addr v3, p2

    #@3b
    invoke-direct {p0, p1, v3}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_2

    #@41
    .line 2003
    return v4

    #@42
    .line 2006
    .end local v1    # "setStr":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    #@43
    return v3
.end method

.method private ensureBufferCapacity(I)V
    .locals 1
    .param p1, "newLen"    # I

    #@0
    .prologue
    .line 2876
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@6
    array-length v0, v0

    #@7
    if-gt p1, v0, :cond_0

    #@9
    return-void

    #@a
    .line 2877
    :cond_0
    add-int/lit8 v0, p1, 0x10

    #@c
    new-array v0, v0, [I

    #@e
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@10
    .line 2875
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4
    .param p1, "newLen"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2869
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@3
    array-length v1, v1

    #@4
    if-gt p1, v1, :cond_0

    #@6
    return-void

    #@7
    .line 2870
    :cond_0
    add-int/lit8 v1, p1, 0x10

    #@9
    new-array v0, v1, [I

    #@b
    .line 2871
    .local v0, "temp":[I
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@d
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@f
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@12
    .line 2872
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@14
    .line 2868
    return-void
.end method

.method private final findCodePoint(I)I
    .locals 5
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1708
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@3
    aget v3, v3, v4

    #@5
    if-ge p1, v3, :cond_0

    #@7
    return v4

    #@8
    .line 1711
    :cond_0
    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@a
    const/4 v4, 0x2

    #@b
    if-lt v3, v4, :cond_1

    #@d
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@f
    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@11
    add-int/lit8 v4, v4, -0x2

    #@13
    aget v3, v3, v4

    #@15
    if-lt p1, v3, :cond_1

    #@17
    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@19
    add-int/lit8 v3, v3, -0x1

    #@1b
    return v3

    #@1c
    .line 1712
    :cond_1
    const/4 v2, 0x0

    #@1d
    .line 1713
    .local v2, "lo":I
    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@1f
    add-int/lit8 v0, v3, -0x1

    #@21
    .line 1717
    .local v0, "hi":I
    :goto_0
    add-int v3, v2, v0

    #@23
    ushr-int/lit8 v1, v3, 0x1

    #@25
    .line 1718
    .local v1, "i":I
    if-ne v1, v2, :cond_2

    #@27
    return v0

    #@28
    .line 1719
    :cond_2
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@2a
    aget v3, v3, v1

    #@2c
    if-ge p1, v3, :cond_3

    #@2e
    .line 1720
    move v0, v1

    #@2f
    goto :goto_0

    #@30
    .line 1722
    :cond_3
    move v2, v1

    #@31
    goto :goto_0
.end method

.method public static from(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1435
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1446
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getDefaultXSymbolTable()Landroid/icu/text/UnicodeSet$XSymbolTable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4801
    sget-object v0, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    #@2
    return-object v0
.end method

.method private static declared-synchronized getInclusions(I)Landroid/icu/text/UnicodeSet;
    .locals 5
    .param p0, "src"    # I

    #@0
    .prologue
    const-class v2, Landroid/icu/text/UnicodeSet;

    #@2
    monitor-enter v2

    #@3
    .line 3178
    :try_start_0
    sget-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 3179
    const/16 v1, 0xc

    #@9
    new-array v1, v1, [Landroid/icu/text/UnicodeSet;

    #@b
    sput-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    #@d
    .line 3181
    :cond_0
    sget-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    #@f
    aget-object v1, v1, p0

    #@11
    if-nez v1, :cond_1

    #@13
    .line 3182
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@15
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@18
    .line 3183
    .local v0, "incl":Landroid/icu/text/UnicodeSet;
    packed-switch p0, :pswitch_data_0

    #@1b
    .line 3217
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "UnicodeSet.getInclusions(unknown src "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, ")"

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .end local v0    # "incl":Landroid/icu/text/UnicodeSet;
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1

    #@3f
    .line 3185
    .restart local v0    # "incl":Landroid/icu/text/UnicodeSet;
    :pswitch_1
    :try_start_1
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@41
    invoke-virtual {v1, v0}, Landroid/icu/impl/UCharacterProperty;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@44
    .line 3219
    :goto_0
    sget-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    #@46
    aput-object v0, v1, p0

    #@48
    .line 3221
    .end local v0    # "incl":Landroid/icu/text/UnicodeSet;
    :cond_1
    sget-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    #@4a
    aget-object v1, v1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    monitor-exit v2

    #@4d
    return-object v1

    #@4e
    .line 3188
    .restart local v0    # "incl":Landroid/icu/text/UnicodeSet;
    :pswitch_2
    :try_start_2
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@50
    invoke-virtual {v1, v0}, Landroid/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    #@53
    goto :goto_0

    #@54
    .line 3191
    :pswitch_3
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@56
    invoke-virtual {v1, v0}, Landroid/icu/impl/UCharacterProperty;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@59
    .line 3192
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@5b
    invoke-virtual {v1, v0}, Landroid/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    #@5e
    goto :goto_0

    #@5f
    .line 3195
    :pswitch_4
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@62
    move-result-object v1

    #@63
    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@65
    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    #@68
    .line 3196
    sget-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@6a
    invoke-virtual {v1, v0}, Landroid/icu/impl/UCaseProps;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    #@6d
    goto :goto_0

    #@6e
    .line 3199
    :pswitch_5
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@71
    move-result-object v1

    #@72
    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@74
    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    #@77
    goto :goto_0

    #@78
    .line 3202
    :pswitch_6
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    #@7b
    move-result-object v1

    #@7c
    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@7e
    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    #@81
    goto :goto_0

    #@82
    .line 3205
    :pswitch_7
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKC_CFInstance()Landroid/icu/impl/Norm2AllModes;

    #@85
    move-result-object v1

    #@86
    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@88
    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    #@8b
    goto :goto_0

    #@8c
    .line 3208
    :pswitch_8
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@8f
    move-result-object v1

    #@90
    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@92
    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addCanonIterPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    #@95
    goto :goto_0

    #@96
    .line 3211
    :pswitch_9
    sget-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@98
    invoke-virtual {v1, v0}, Landroid/icu/impl/UCaseProps;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    #@9b
    goto :goto_0

    #@9c
    .line 3214
    :pswitch_a
    sget-object v1, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@9e
    invoke-virtual {v1, v0}, Landroid/icu/impl/UBiDiProps;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a1
    goto :goto_0

    #@a2
    .line 3183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static getSingleCP(Ljava/lang/CharSequence;)I
    .locals 6
    .param p0, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    .line 1349
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v1

    #@7
    if-ge v1, v5, :cond_0

    #@9
    .line 1350
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "Can\'t use zero-length strings in UnicodeSet"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 1352
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@15
    move-result v1

    #@16
    const/4 v2, 0x2

    #@17
    if-le v1, v2, :cond_1

    #@19
    return v3

    #@1a
    .line 1353
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@1d
    move-result v1

    #@1e
    if-ne v1, v5, :cond_2

    #@20
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@23
    move-result v1

    #@24
    return v1

    #@25
    .line 1356
    :cond_2
    invoke-static {p0, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    #@28
    move-result v0

    #@29
    .line 1357
    .local v0, "cp":I
    const v1, 0xffff

    #@2c
    if-le v0, v1, :cond_3

    #@2e
    .line 1358
    return v0

    #@2f
    .line 1360
    :cond_3
    return v3
.end method

.method public static getSingleCodePoint(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4611
    invoke-static {p0}, Landroid/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static matchRest(Landroid/icu/text/Replaceable;IILjava/lang/String;)I
    .locals 6
    .param p0, "text"    # Landroid/icu/text/Replaceable;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1011
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    .line 1012
    .local v2, "slen":I
    if-ge p1, p2, :cond_2

    #@7
    .line 1013
    sub-int v1, p2, p1

    #@9
    .line 1014
    .local v1, "maxLen":I
    if-le v1, v2, :cond_0

    #@b
    move v1, v2

    #@c
    .line 1015
    :cond_0
    const/4 v0, 0x1

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@f
    .line 1016
    add-int v3, p1, v0

    #@11
    invoke-interface {p0, v3}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@14
    move-result v3

    #@15
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v4

    #@19
    if-eq v3, v4, :cond_1

    #@1b
    return v5

    #@1c
    .line 1015
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1019
    .end local v0    # "i":I
    .end local v1    # "maxLen":I
    :cond_2
    sub-int v1, p1, p2

    #@21
    .line 1020
    .restart local v1    # "maxLen":I
    if-le v1, v2, :cond_3

    #@23
    move v1, v2

    #@24
    .line 1021
    :cond_3
    add-int/lit8 v2, v2, -0x1

    #@26
    .line 1022
    const/4 v0, 0x1

    #@27
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_5

    #@29
    .line 1023
    sub-int v3, p1, v0

    #@2b
    invoke-interface {p0, v3}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@2e
    move-result v3

    #@2f
    sub-int v4, v2, v0

    #@31
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v4

    #@35
    if-eq v3, v4, :cond_4

    #@37
    return v5

    #@38
    .line 1022
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 1026
    :cond_5
    return v1
.end method

.method private static matchesAt(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)I
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offsetInText"    # I
    .param p2, "substring"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 1077
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v2

    #@5
    .line 1078
    .local v2, "len":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v5

    #@9
    .line 1079
    .local v5, "textLength":I
    add-int v6, v5, p1

    #@b
    if-le v6, v2, :cond_0

    #@d
    .line 1080
    return v7

    #@e
    .line 1082
    :cond_0
    const/4 v0, 0x0

    #@f
    .line 1083
    .local v0, "i":I
    move v1, p1

    #@10
    .local v1, "j":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@12
    .line 1084
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@15
    move-result v3

    #@16
    .line 1085
    .local v3, "pc":C
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@19
    move-result v4

    #@1a
    .line 1086
    .local v4, "tc":C
    if-eq v3, v4, :cond_1

    #@1c
    return v7

    #@1d
    .line 1083
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1088
    .end local v3    # "pc":C
    .end local v4    # "tc":C
    :cond_2
    return v0
.end method

.method private static final max(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    .line 3115
    if-le p0, p1, :cond_0

    #@2
    .end local p0    # "a":I
    :goto_0
    return p0

    #@3
    .restart local p0    # "a":I
    :cond_0
    move p0, p1

    #@4
    goto :goto_0
.end method

.method private static mungeCharName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3276
    invoke-static {p0}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    .line 3277
    const/4 v0, 0x0

    #@5
    .line 3278
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@6
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    if-ge v2, v3, :cond_4

    #@c
    .line 3279
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v1

    #@10
    .line 3280
    .local v1, "ch":C
    invoke-static {v1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 3281
    if-nez v0, :cond_3

    #@18
    .line 3282
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const/4 v4, 0x0

    #@1e
    invoke-virtual {v3, p0, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 3286
    :cond_0
    const/16 v1, 0x20

    #@24
    .line 3288
    .end local v1    # "ch":C
    :cond_1
    if-eqz v0, :cond_2

    #@26
    .line 3289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 3278
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 3283
    .restart local v1    # "ch":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@2f
    move-result v3

    #@30
    add-int/lit8 v3, v3, -0x1

    #@32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@35
    move-result v3

    #@36
    const/16 v4, 0x20

    #@38
    if-ne v3, v4, :cond_0

    #@3a
    goto :goto_1

    #@3b
    .line 3292
    .end local v1    # "ch":C
    :cond_4
    if-nez v0, :cond_5

    #@3d
    .end local p0    # "source":Ljava/lang/String;
    :goto_2
    return-object p0

    #@3e
    .restart local p0    # "source":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object p0

    #@42
    goto :goto_2
.end method

.method private range(II)[I
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2884
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2885
    const/4 v0, 0x3

    #@7
    new-array v0, v0, [I

    #@9
    aput p1, v0, v1

    #@b
    add-int/lit8 v1, p2, 0x1

    #@d
    aput v1, v0, v2

    #@f
    const/high16 v1, 0x110000

    #@11
    const/4 v2, 0x2

    #@12
    aput v1, v0, v2

    #@14
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    #@16
    .line 2890
    :goto_0
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    #@18
    return-object v0

    #@19
    .line 2887
    :cond_0
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    #@1b
    aput p1, v0, v1

    #@1d
    .line 2888
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    #@1f
    add-int/lit8 v1, p2, 0x1

    #@21
    aput v1, v0, v2

    #@23
    goto :goto_0
.end method

.method public static resemblesPattern(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 599
    add-int/lit8 v0, p1, 0x1

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-ge v0, v1, :cond_0

    #@8
    .line 600
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    const/16 v1, 0x5b

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 599
    const/4 v0, 0x1

    #@11
    :goto_0
    return v0

    #@12
    .line 601
    :cond_0
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->resemblesPropertyPattern(Ljava/lang/String;I)Z

    #@15
    move-result v0

    #@16
    goto :goto_0
.end method

.method private static resemblesPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;I)Z
    .locals 6
    .param p0, "chars"    # Landroid/icu/impl/RuleCharacterIterator;
    .param p1, "iterOpts"    # I

    #@0
    .prologue
    const/16 v5, 0x5b

    #@2
    .line 3559
    const/4 v3, 0x0

    #@3
    .line 3560
    .local v3, "result":Z
    and-int/lit8 p1, p1, -0x3

    #@5
    .line 3561
    const/4 v4, 0x0

    #@6
    invoke-virtual {p0, v4}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    .line 3562
    .local v2, "pos":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    #@d
    move-result v0

    #@e
    .line 3563
    .local v0, "c":I
    if-eq v0, v5, :cond_0

    #@10
    const/16 v4, 0x5c

    #@12
    if-ne v0, v4, :cond_1

    #@14
    .line 3564
    :cond_0
    and-int/lit8 v4, p1, -0x5

    #@16
    invoke-virtual {p0, v4}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    #@19
    move-result v1

    #@1a
    .line 3565
    .local v1, "d":I
    if-ne v0, v5, :cond_3

    #@1c
    const/16 v4, 0x3a

    #@1e
    if-ne v1, v4, :cond_2

    #@20
    const/4 v3, 0x1

    #@21
    .line 3568
    .end local v1    # "d":I
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    #@24
    .line 3569
    return v3

    #@25
    .line 3565
    .restart local v1    # "d":I
    :cond_2
    const/4 v3, 0x0

    #@26
    goto :goto_0

    #@27
    .line 3566
    :cond_3
    const/16 v4, 0x4e

    #@29
    if-eq v1, v4, :cond_4

    #@2b
    const/16 v4, 0x70

    #@2d
    if-ne v1, v4, :cond_5

    #@2f
    :cond_4
    const/4 v3, 0x1

    #@30
    goto :goto_0

    #@31
    :cond_5
    const/16 v4, 0x50

    #@33
    if-eq v1, v4, :cond_4

    #@35
    const/4 v3, 0x0

    #@36
    goto :goto_0
.end method

.method private static resemblesPropertyPattern(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "pos"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x0

    #@3
    .line 3539
    add-int/lit8 v0, p1, 0x5

    #@5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v2

    #@9
    if-le v0, v2, :cond_0

    #@b
    .line 3540
    return v4

    #@c
    .line 3544
    :cond_0
    const-string/jumbo v0, "[:"

    #@f
    invoke-virtual {p0, p1, v0, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 3545
    const-string/jumbo v3, "\\p"

    #@18
    move-object v0, p0

    #@19
    move v2, p1

    #@1a
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@1d
    move-result v0

    #@1e
    .line 3544
    if-nez v0, :cond_1

    #@20
    .line 3546
    const-string/jumbo v0, "\\N"

    #@23
    invoke-virtual {p0, p1, v0, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@26
    move-result v1

    #@27
    .line 3544
    :cond_1
    return v1
.end method

.method private retain([III)Landroid/icu/text/UnicodeSet;
    .locals 12
    .param p1, "other"    # [I
    .param p2, "otherLen"    # I
    .param p3, "polarity"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/high16 v10, 0x110000

    #@3
    .line 3049
    iget v9, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@5
    add-int/2addr v9, p2

    #@6
    invoke-direct {p0, v9}, Landroid/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    #@9
    .line 3050
    const/4 v6, 0x0

    #@a
    .line 3051
    .local v6, "k":I
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@c
    const/4 v2, 0x1

    #@d
    .local v2, "i":I
    aget v0, v9, v11

    #@f
    .line 3052
    .local v0, "a":I
    const/4 v4, 0x1

    #@10
    .local v4, "j":I
    aget v1, p1, v11

    #@12
    .local v1, "b":I
    move v7, v6

    #@13
    .end local v6    # "k":I
    .local v7, "k":I
    move v5, v4

    #@14
    .end local v4    # "j":I
    .local v5, "j":I
    move v3, v2

    #@15
    .line 3057
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    packed-switch p3, :pswitch_data_0

    #@18
    move v6, v7

    #@19
    .end local v7    # "k":I
    .restart local v6    # "k":I
    move v4, v5

    #@1a
    .end local v5    # "j":I
    .restart local v4    # "j":I
    move v2, v3

    #@1b
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_1
    move v7, v6

    #@1c
    .end local v6    # "k":I
    .restart local v7    # "k":I
    move v5, v4

    #@1d
    .end local v4    # "j":I
    .restart local v5    # "j":I
    move v3, v2

    #@1e
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@1f
    .line 3059
    :pswitch_0
    if-ge v0, v1, :cond_0

    #@21
    .line 3060
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@23
    add-int/lit8 v2, v3, 0x1

    #@25
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@27
    xor-int/lit8 p3, p3, 0x1

    #@29
    move v6, v7

    #@2a
    .end local v7    # "k":I
    .restart local v6    # "k":I
    move v4, v5

    #@2b
    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto :goto_1

    #@2c
    .line 3061
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_0
    if-ge v1, v0, :cond_1

    #@2e
    .line 3062
    add-int/lit8 v4, v5, 0x1

    #@30
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@32
    xor-int/lit8 p3, p3, 0x2

    #@34
    move v6, v7

    #@35
    .end local v7    # "k":I
    .restart local v6    # "k":I
    move v2, v3

    #@36
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@37
    .line 3064
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_1
    if-ne v0, v10, :cond_3

    #@39
    .line 3104
    :cond_2
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@3b
    add-int/lit8 v6, v7, 0x1

    #@3d
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v10, v9, v7

    #@3f
    .line 3105
    iput v6, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@41
    .line 3107
    iget-object v8, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@43
    .line 3108
    .local v8, "temp":[I
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@45
    iput-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@47
    .line 3109
    iput-object v8, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@49
    .line 3110
    const/4 v9, 0x0

    #@4a
    iput-object v9, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@4c
    .line 3111
    return-object p0

    #@4d
    .line 3065
    .end local v6    # "k":I
    .end local v8    # "temp":[I
    .restart local v7    # "k":I
    :cond_3
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@4f
    add-int/lit8 v6, v7, 0x1

    #@51
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v0, v9, v7

    #@53
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@55
    add-int/lit8 v2, v3, 0x1

    #@57
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@59
    xor-int/lit8 p3, p3, 0x1

    #@5b
    .line 3066
    add-int/lit8 v4, v5, 0x1

    #@5d
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@5f
    xor-int/lit8 p3, p3, 0x2

    #@61
    goto :goto_1

    #@62
    .line 3070
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :pswitch_1
    if-ge v0, v1, :cond_4

    #@64
    .line 3071
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@66
    add-int/lit8 v6, v7, 0x1

    #@68
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v0, v9, v7

    #@6a
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@6c
    add-int/lit8 v2, v3, 0x1

    #@6e
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@70
    xor-int/lit8 p3, p3, 0x1

    #@72
    move v4, v5

    #@73
    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto :goto_1

    #@74
    .line 3072
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_4
    if-ge v1, v0, :cond_5

    #@76
    .line 3073
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@78
    add-int/lit8 v6, v7, 0x1

    #@7a
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v1, v9, v7

    #@7c
    add-int/lit8 v4, v5, 0x1

    #@7e
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@80
    xor-int/lit8 p3, p3, 0x2

    #@82
    move v2, v3

    #@83
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@84
    .line 3075
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_5
    if-eq v0, v10, :cond_2

    #@86
    .line 3076
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@88
    add-int/lit8 v6, v7, 0x1

    #@8a
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v0, v9, v7

    #@8c
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@8e
    add-int/lit8 v2, v3, 0x1

    #@90
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@92
    xor-int/lit8 p3, p3, 0x1

    #@94
    .line 3077
    add-int/lit8 v4, v5, 0x1

    #@96
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@98
    xor-int/lit8 p3, p3, 0x2

    #@9a
    goto :goto_1

    #@9b
    .line 3081
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :pswitch_2
    if-ge v0, v1, :cond_6

    #@9d
    .line 3082
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@9f
    add-int/lit8 v2, v3, 0x1

    #@a1
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@a3
    xor-int/lit8 p3, p3, 0x1

    #@a5
    move v6, v7

    #@a6
    .end local v7    # "k":I
    .restart local v6    # "k":I
    move v4, v5

    #@a7
    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_1

    #@a9
    .line 3083
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_6
    if-ge v1, v0, :cond_7

    #@ab
    .line 3084
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@ad
    add-int/lit8 v6, v7, 0x1

    #@af
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v1, v9, v7

    #@b1
    add-int/lit8 v4, v5, 0x1

    #@b3
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@b5
    xor-int/lit8 p3, p3, 0x2

    #@b7
    move v2, v3

    #@b8
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_1

    #@ba
    .line 3086
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_7
    if-eq v0, v10, :cond_2

    #@bc
    .line 3087
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@be
    add-int/lit8 v2, v3, 0x1

    #@c0
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@c2
    xor-int/lit8 p3, p3, 0x1

    #@c4
    .line 3088
    add-int/lit8 v4, v5, 0x1

    #@c6
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@c8
    xor-int/lit8 p3, p3, 0x2

    #@ca
    move v6, v7

    #@cb
    .end local v7    # "k":I
    .restart local v6    # "k":I
    goto/16 :goto_1

    #@cd
    .line 3092
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :pswitch_3
    if-ge v1, v0, :cond_8

    #@cf
    .line 3093
    add-int/lit8 v4, v5, 0x1

    #@d1
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@d3
    xor-int/lit8 p3, p3, 0x2

    #@d5
    move v6, v7

    #@d6
    .end local v7    # "k":I
    .restart local v6    # "k":I
    move v2, v3

    #@d7
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_1

    #@d9
    .line 3094
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_8
    if-ge v0, v1, :cond_9

    #@db
    .line 3095
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@dd
    add-int/lit8 v6, v7, 0x1

    #@df
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v0, v9, v7

    #@e1
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@e3
    add-int/lit8 v2, v3, 0x1

    #@e5
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@e7
    xor-int/lit8 p3, p3, 0x1

    #@e9
    move v4, v5

    #@ea
    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_1

    #@ec
    .line 3097
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_9
    if-eq v0, v10, :cond_2

    #@ee
    .line 3098
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@f0
    add-int/lit8 v2, v3, 0x1

    #@f2
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@f4
    xor-int/lit8 p3, p3, 0x1

    #@f6
    .line 3099
    add-int/lit8 v4, v5, 0x1

    #@f8
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@fa
    xor-int/lit8 p3, p3, 0x2

    #@fc
    move v6, v7

    #@fd
    .end local v7    # "k":I
    .restart local v6    # "k":I
    goto/16 :goto_1

    #@ff
    .line 3057
    nop

    #@100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static setDefaultXSymbolTable(Landroid/icu/text/UnicodeSet$XSymbolTable;)V
    .locals 1
    .param p0, "xSymbolTable"    # Landroid/icu/text/UnicodeSet$XSymbolTable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4819
    const/4 v0, 0x0

    #@1
    sput-object v0, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    #@3
    .line 4820
    sput-object p0, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    #@5
    .line 4818
    return-void
.end method

.method private spanCodePointsAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;
    .param p4, "outCount"    # Landroid/icu/util/OutputInt;

    #@0
    .prologue
    .line 4060
    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2
    if-eq p3, v5, :cond_2

    #@4
    const/4 v4, 0x1

    #@5
    .line 4063
    .local v4, "spanContained":Z
    :goto_0
    move v3, p2

    #@6
    .line 4064
    .local v3, "next":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v2

    #@a
    .line 4065
    .local v2, "length":I
    const/4 v1, 0x0

    #@b
    .line 4067
    .local v1, "count":I
    :goto_1
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@e
    move-result v0

    #@f
    .line 4068
    .local v0, "c":I
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@12
    move-result v5

    #@13
    if-eq v4, v5, :cond_3

    #@15
    .line 4074
    :cond_0
    if-eqz p4, :cond_1

    #@17
    iput v1, p4, Landroid/icu/util/OutputInt;->value:I

    #@19
    .line 4075
    :cond_1
    return v3

    #@1a
    .line 4060
    .end local v0    # "c":I
    .end local v1    # "count":I
    .end local v2    # "length":I
    .end local v3    # "next":I
    .end local v4    # "spanContained":Z
    :cond_2
    const/4 v4, 0x0

    #@1b
    .restart local v4    # "spanContained":Z
    goto :goto_0

    #@1c
    .line 4071
    .restart local v0    # "c":I
    .restart local v1    # "count":I
    .restart local v2    # "length":I
    .restart local v3    # "next":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@1e
    .line 4072
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@21
    move-result v5

    #@22
    add-int/2addr v3, v5

    #@23
    .line 4073
    if-ge v3, v2, :cond_0

    #@25
    goto :goto_1
.end method

.method private static syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
    .locals 3
    .param p0, "chars"    # Landroid/icu/impl/RuleCharacterIterator;
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2806
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Error: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, " at \""

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 2807
    invoke-virtual {p0}, Landroid/icu/impl/RuleCharacterIterator;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v2}, Landroid/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 2806
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 2808
    const/16 v2, 0x22

    #@27
    .line 2806
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0
.end method

.method public static toArray(Landroid/icu/text/UnicodeSet;)[Ljava/lang/String;
    .locals 1
    .param p0, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 2835
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    #@3
    move-result v0

    #@4
    new-array v0, v0, [Ljava/lang/String;

    #@6
    invoke-static {p0, v0}, Landroid/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/lang/String;

    #@c
    return-object v0
.end method

.method private xor([III)Landroid/icu/text/UnicodeSet;
    .locals 12
    .param p1, "other"    # [I
    .param p2, "otherLen"    # I
    .param p3, "polarity"    # I

    #@0
    .prologue
    const/high16 v11, 0x110000

    #@2
    const/4 v10, 0x0

    #@3
    .line 2901
    iget v9, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@5
    add-int/2addr v9, p2

    #@6
    invoke-direct {p0, v9}, Landroid/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    #@9
    .line 2902
    const/4 v4, 0x0

    #@a
    .local v4, "j":I
    const/4 v6, 0x0

    #@b
    .line 2903
    .local v6, "k":I
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@d
    const/4 v2, 0x1

    #@e
    .local v2, "i":I
    aget v0, v9, v10

    #@10
    .line 2908
    .local v0, "a":I
    const/4 v9, 0x1

    #@11
    if-eq p3, v9, :cond_0

    #@13
    const/4 v9, 0x2

    #@14
    if-ne p3, v9, :cond_2

    #@16
    .line 2909
    :cond_0
    const/4 v1, 0x0

    #@17
    .line 2910
    .local v1, "b":I
    aget v9, p1, v4

    #@19
    if-nez v9, :cond_1

    #@1b
    .line 2911
    const/4 v4, 0x1

    #@1c
    .line 2912
    aget v1, p1, v4

    #@1e
    :cond_1
    move v7, v6

    #@1f
    .end local v6    # "k":I
    .local v7, "k":I
    move v5, v4

    #@20
    .end local v4    # "j":I
    .local v5, "j":I
    move v3, v2

    #@21
    .line 2921
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@23
    .line 2922
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@25
    add-int/lit8 v6, v7, 0x1

    #@27
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v0, v9, v7

    #@29
    .line 2923
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@2b
    add-int/lit8 v2, v3, 0x1

    #@2d
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@2f
    move v4, v5

    #@30
    .end local v5    # "j":I
    .restart local v4    # "j":I
    :goto_1
    move v7, v6

    #@31
    .end local v6    # "k":I
    .restart local v7    # "k":I
    move v5, v4

    #@32
    .end local v4    # "j":I
    .restart local v5    # "j":I
    move v3, v2

    #@33
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@34
    .line 2916
    .end local v1    # "b":I
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v7    # "k":I
    .restart local v2    # "i":I
    .restart local v4    # "j":I
    .restart local v6    # "k":I
    :cond_2
    const/4 v4, 0x1

    #@35
    aget v1, p1, v10

    #@37
    .restart local v1    # "b":I
    move v7, v6

    #@38
    .end local v6    # "k":I
    .restart local v7    # "k":I
    move v5, v4

    #@39
    .end local v4    # "j":I
    .restart local v5    # "j":I
    move v3, v2

    #@3a
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@3b
    .line 2924
    :cond_3
    if-ge v1, v0, :cond_4

    #@3d
    .line 2925
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@3f
    add-int/lit8 v6, v7, 0x1

    #@41
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v1, v9, v7

    #@43
    .line 2926
    add-int/lit8 v4, v5, 0x1

    #@45
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@47
    move v2, v3

    #@48
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@49
    .line 2927
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_4
    if-eq v0, v11, :cond_5

    #@4b
    .line 2929
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@4d
    add-int/lit8 v2, v3, 0x1

    #@4f
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v0, v9, v3

    #@51
    .line 2930
    add-int/lit8 v4, v5, 0x1

    #@53
    .end local v5    # "j":I
    .restart local v4    # "j":I
    aget v1, p1, v5

    #@55
    move v6, v7

    #@56
    .end local v7    # "k":I
    .restart local v6    # "k":I
    goto :goto_1

    #@57
    .line 2932
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    :cond_5
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@59
    add-int/lit8 v6, v7, 0x1

    #@5b
    .end local v7    # "k":I
    .restart local v6    # "k":I
    aput v11, v9, v7

    #@5d
    .line 2933
    iput v6, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@5f
    .line 2938
    iget-object v8, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@61
    .line 2939
    .local v8, "temp":[I
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@63
    iput-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@65
    .line 2940
    iput-object v8, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@67
    .line 2941
    const/4 v9, 0x0

    #@68
    iput-object v9, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@6a
    .line 2942
    return-object p0
.end method


# virtual methods
.method public _generatePattern(Ljava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "escapeUnprintable"    # Z

    #@0
    .prologue
    .line 756
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSet;->_generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public _generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "escapeUnprintable"    # Z
    .param p3, "includeStrings"    # Z

    #@0
    .prologue
    .line 768
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/StringBuffer;

    #@6
    return-object v0
.end method

.method public final add(I)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1227
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 1228
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->add_unchecked(I)Landroid/icu/text/UnicodeSet;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public add(II)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1169
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 1170
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1330
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 1331
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    #@6
    move-result v0

    #@7
    .line 1332
    .local v0, "cp":I
    if-gez v0, :cond_0

    #@9
    .line 1333
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@b
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@12
    .line 1334
    const/4 v1, 0x0

    #@13
    iput-object v1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@15
    .line 1338
    :goto_0
    return-object p0

    #@16
    .line 1336
    :cond_0
    invoke-direct {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@19
    goto :goto_0
.end method

.method public add(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    #@0
    .prologue
    .line 2846
    .local p1, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public addAll(II)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1181
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 1182
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .param p1, "c"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 2190
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 2191
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    #@5
    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->add([III)Landroid/icu/text/UnicodeSet;

    #@b
    .line 2192
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@d
    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    #@12
    .line 2193
    return-object p0
.end method

.method public final addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1371
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 1373
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v2

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 1374
    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    #@d
    move-result v0

    #@e
    .line 1375
    .local v0, "cp":I
    invoke-direct {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    #@11
    .line 1373
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@14
    move-result v2

    #@15
    add-int/2addr v1, v2

    #@16
    goto :goto_0

    #@17
    .line 1377
    .end local v0    # "cp":I
    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    #@0
    .prologue
    .line 2857
    .local p1, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 2858
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "o$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    .line 2859
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@18
    goto :goto_0

    #@19
    .line 2861
    .end local v0    # "o":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method public varargs addAll([Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    #@0
    .prologue
    .line 4386
    .local p1, "collection":[Ljava/lang/CharSequence;, "[TT;"
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 4387
    const/4 v1, 0x0

    #@4
    array-length v2, p1

    #@5
    :goto_0
    if-ge v1, v2, :cond_0

    #@7
    aget-object v0, p1, v1

    #@9
    .line 4388
    .local v0, "str":Ljava/lang/CharSequence;, "TT;"
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@c
    .line 4387
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 4390
    .end local v0    # "str":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    return-object p0
.end method

.method public addAllTo(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2817
    .local p1, "target":Ljava/util/Collection;, "TT;"
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public addAllTo([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "target"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2827
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public addBridges(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 4
    .param p1, "dontCare"    # Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4625
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {v2, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@5
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    #@8
    move-result-object v1

    #@9
    .line 4626
    .local v1, "notInInput":Landroid/icu/text/UnicodeSet;
    new-instance v0, Landroid/icu/text/UnicodeSetIterator;

    #@b
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@e
    .local v0, "it":Landroid/icu/text/UnicodeSetIterator;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSetIterator;->nextRange()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 4627
    iget v2, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@16
    if-eqz v2, :cond_0

    #@18
    iget v2, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@1a
    sget v3, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@1c
    if-eq v2, v3, :cond_0

    #@1e
    iget v2, v0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    #@20
    const v3, 0x10ffff

    #@23
    if-eq v2, v3, :cond_0

    #@25
    iget v2, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@27
    iget v3, v0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    #@29
    invoke-virtual {p1, v2, v3}, Landroid/icu/text/UnicodeSet;->contains(II)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 4628
    iget v2, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@31
    iget v3, v0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    #@33
    invoke-virtual {p0, v2, v3}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@36
    goto :goto_0

    #@37
    .line 4631
    :cond_1
    return-object p0
.end method

.method public addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 0
    .param p1, "toUnionTo"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 1099
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@3
    .line 1098
    return-void
.end method

.method public applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;
    .locals 2
    .param p1, "prop"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 3323
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 3324
    const/16 v0, 0x2000

    #@5
    if-ne p1, v0, :cond_0

    #@7
    .line 3325
    new-instance v0, Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;

    #@9
    invoke-direct {v0, p2}, Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;-><init>(I)V

    #@c
    const/4 v1, 0x1

    #@d
    invoke-direct {p0, v0, v1}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    #@10
    .line 3331
    :goto_0
    return-object p0

    #@11
    .line 3326
    :cond_0
    const/16 v0, 0x7000

    #@13
    if-ne p1, v0, :cond_1

    #@15
    .line 3327
    new-instance v0, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;

    #@17
    invoke-direct {v0, p2}, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;-><init>(I)V

    #@1a
    const/4 v1, 0x2

    #@1b
    invoke-direct {p0, v0, v1}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    #@1e
    goto :goto_0

    #@1f
    .line 3329
    :cond_1
    new-instance v0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;

    #@21
    invoke-direct {v0, p1, p2}, Landroid/icu/text/UnicodeSet$IntPropertyFilter;-><init>(II)V

    #@24
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    #@26
    invoke-virtual {v1, p1}, Landroid/icu/impl/UCharacterProperty;->getSource(I)I

    #@29
    move-result v1

    #@2a
    invoke-direct {p0, v0, v1}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    #@2d
    goto :goto_0
.end method

.method public final applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 558
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@4
    .line 559
    const/4 v0, 0x1

    #@5
    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public applyPattern(Ljava/lang/String;I)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "options"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 589
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@4
    .line 590
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "symbols"    # Landroid/icu/text/SymbolTable;
    .param p4, "options"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2405
    if-nez p2, :cond_3

    #@3
    const/4 v2, 0x1

    #@4
    .line 2406
    .local v2, "parsePositionWasNull":Z
    :goto_0
    if-eqz v2, :cond_0

    #@6
    .line 2407
    new-instance p2, Ljava/text/ParsePosition;

    #@8
    .end local p2    # "pos":Ljava/text/ParsePosition;
    invoke-direct {p2, v4}, Ljava/text/ParsePosition;-><init>(I)V

    #@b
    .line 2410
    .restart local p2    # "pos":Ljava/text/ParsePosition;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 2412
    .local v3, "rebuiltPat":Ljava/lang/StringBuilder;
    new-instance v0, Landroid/icu/impl/RuleCharacterIterator;

    #@12
    invoke-direct {v0, p1, p3, p2}, Landroid/icu/impl/RuleCharacterIterator;-><init>(Ljava/lang/String;Landroid/icu/text/SymbolTable;Ljava/text/ParsePosition;)V

    #@15
    .line 2413
    .local v0, "chars":Landroid/icu/impl/RuleCharacterIterator;
    invoke-direct {p0, v0, p3, v3, p4}, Landroid/icu/text/UnicodeSet;->applyPattern(Landroid/icu/impl/RuleCharacterIterator;Landroid/icu/text/SymbolTable;Ljava/lang/Appendable;I)V

    #@18
    .line 2414
    invoke-virtual {v0}, Landroid/icu/impl/RuleCharacterIterator;->inVariable()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    .line 2415
    const-string/jumbo v4, "Extra chars in variable value"

    #@21
    invoke-static {v0, v4}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    #@24
    .line 2417
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    iput-object v4, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@2a
    .line 2418
    if-eqz v2, :cond_4

    #@2c
    .line 2419
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@2f
    move-result v1

    #@30
    .line 2422
    .local v1, "i":I
    and-int/lit8 v4, p4, 0x1

    #@32
    if-eqz v4, :cond_2

    #@34
    .line 2423
    invoke-static {p1, v1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    #@37
    move-result v1

    #@38
    .line 2426
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3b
    move-result v4

    #@3c
    if-eq v1, v4, :cond_4

    #@3e
    .line 2427
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@40
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "Parse of \""

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    .line 2428
    const-string/jumbo v6, "\" failed at "

    #@53
    .line 2427
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v4

    #@63
    .line 2405
    .end local v0    # "chars":Landroid/icu/impl/RuleCharacterIterator;
    .end local v1    # "i":I
    .end local v2    # "parsePositionWasNull":Z
    .end local v3    # "rebuiltPat":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v2, 0x0

    #@64
    .restart local v2    # "parsePositionWasNull":Z
    goto :goto_0

    #@65
    .line 2431
    .restart local v0    # "chars":Landroid/icu/impl/RuleCharacterIterator;
    .restart local v3    # "rebuiltPat":Ljava/lang/StringBuilder;
    :cond_4
    return-object p0
.end method

.method public applyPattern(Ljava/lang/String;Z)Landroid/icu/text/UnicodeSet;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ignoreWhitespace"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 573
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@4
    .line 574
    if-eqz p2, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p1, "propertyAlias"    # Ljava/lang/String;
    .param p2, "valueAlias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3364
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSet;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;
    .locals 18
    .param p1, "propertyAlias"    # Ljava/lang/String;
    .param p2, "valueAlias"    # Ljava/lang/String;
    .param p3, "symbols"    # Landroid/icu/text/SymbolTable;

    #@0
    .prologue
    .line 3380
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 3383
    const/4 v8, 0x0

    #@4
    .local v8, "mustNotBeEmpty":Z
    const/4 v7, 0x0

    #@5
    .line 3385
    .local v7, "invert":Z
    if-eqz p3, :cond_0

    #@7
    .line 3386
    move-object/from16 v0, p3

    #@9
    instance-of v15, v0, Landroid/icu/text/UnicodeSet$XSymbolTable;

    #@b
    .line 3385
    if-eqz v15, :cond_0

    #@d
    .line 3387
    check-cast p3, Landroid/icu/text/UnicodeSet$XSymbolTable;

    #@f
    .end local p3    # "symbols":Landroid/icu/text/SymbolTable;
    move-object/from16 v0, p3

    #@11
    move-object/from16 v1, p1

    #@13
    move-object/from16 v2, p2

    #@15
    move-object/from16 v3, p0

    #@17
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/UnicodeSet$XSymbolTable;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z

    #@1a
    move-result v15

    #@1b
    .line 3385
    if-eqz v15, :cond_0

    #@1d
    .line 3388
    return-object p0

    #@1e
    .line 3391
    :cond_0
    sget-object v15, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    #@20
    if-eqz v15, :cond_1

    #@22
    .line 3392
    sget-object v15, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    #@24
    move-object/from16 v0, p1

    #@26
    move-object/from16 v1, p2

    #@28
    move-object/from16 v2, p0

    #@2a
    invoke-virtual {v15, v0, v1, v2}, Landroid/icu/text/UnicodeSet$XSymbolTable;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z

    #@2d
    move-result v15

    #@2e
    if-eqz v15, :cond_1

    #@30
    .line 3393
    return-object p0

    #@31
    .line 3397
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@34
    move-result v15

    #@35
    if-lez v15, :cond_d

    #@37
    .line 3398
    invoke-static/range {p1 .. p1}, Landroid/icu/lang/UCharacter;->getPropertyEnum(Ljava/lang/CharSequence;)I

    #@3a
    move-result v9

    #@3b
    .line 3401
    .local v9, "p":I
    const/16 v15, 0x1005

    #@3d
    if-ne v9, v15, :cond_2

    #@3f
    .line 3402
    const/16 v9, 0x2000

    #@41
    .line 3405
    :cond_2
    if-ltz v9, :cond_6

    #@43
    const/16 v15, 0x39

    #@45
    if-ge v9, v15, :cond_6

    #@47
    .line 3409
    :cond_3
    :try_start_0
    move-object/from16 v0, p2

    #@49
    invoke-static {v9, v0}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    move-result v11

    #@4d
    .line 3515
    .local v11, "v":I
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    #@4f
    invoke-virtual {v0, v9, v11}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    #@52
    .line 3516
    if-eqz v7, :cond_5

    #@54
    .line 3517
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    #@57
    .line 3520
    :cond_5
    if-eqz v8, :cond_14

    #@59
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    #@5c
    move-result v15

    #@5d
    if-eqz v15, :cond_14

    #@5f
    .line 3523
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@61
    const-string/jumbo v16, "Invalid property value"

    #@64
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw v15

    #@68
    .line 3406
    .end local v11    # "v":I
    :cond_6
    const/16 v15, 0x1000

    #@6a
    if-lt v9, v15, :cond_7

    #@6c
    const/16 v15, 0x1016

    #@6e
    if-lt v9, v15, :cond_3

    #@70
    .line 3407
    :cond_7
    const/16 v15, 0x2000

    #@72
    if-lt v9, v15, :cond_8

    #@74
    const/16 v15, 0x2001

    #@76
    if-lt v9, v15, :cond_3

    #@78
    .line 3428
    :cond_8
    sparse-switch v9, :sswitch_data_0

    #@7b
    .line 3468
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@7d
    const-string/jumbo v16, "Unsupported property"

    #@80
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@83
    throw v15

    #@84
    .line 3410
    :catch_0
    move-exception v6

    #@85
    .line 3412
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const/16 v15, 0x1002

    #@87
    if-eq v9, v15, :cond_9

    #@89
    .line 3413
    const/16 v15, 0x1010

    #@8b
    if-ne v9, v15, :cond_b

    #@8d
    .line 3415
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    #@90
    move-result-object v15

    #@91
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@94
    move-result v11

    #@95
    .line 3420
    .restart local v11    # "v":I
    if-ltz v11, :cond_a

    #@97
    const/16 v15, 0xff

    #@99
    if-le v11, v15, :cond_4

    #@9b
    :cond_a
    throw v6

    #@9c
    .line 3414
    .end local v11    # "v":I
    :cond_b
    const/16 v15, 0x1011

    #@9e
    if-eq v9, v15, :cond_9

    #@a0
    .line 3422
    throw v6

    #@a1
    .line 3431
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :sswitch_0
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    #@a4
    move-result-object v15

    #@a5
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@a8
    move-result-wide v12

    #@a9
    .line 3432
    .local v12, "value":D
    new-instance v15, Landroid/icu/text/UnicodeSet$NumericValueFilter;

    #@ab
    invoke-direct {v15, v12, v13}, Landroid/icu/text/UnicodeSet$NumericValueFilter;-><init>(D)V

    #@ae
    const/16 v16, 0x1

    #@b0
    move-object/from16 v0, p0

    #@b2
    move/from16 v1, v16

    #@b4
    invoke-direct {v0, v15, v1}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    #@b7
    .line 3433
    return-object p0

    #@b8
    .line 3440
    .end local v12    # "value":D
    :sswitch_1
    invoke-static/range {p2 .. p2}, Landroid/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;

    #@bb
    move-result-object v4

    #@bc
    .line 3441
    .local v4, "buf":Ljava/lang/String;
    invoke-static {v4}, Landroid/icu/lang/UCharacter;->getCharFromExtendedName(Ljava/lang/String;)I

    #@bf
    move-result v5

    #@c0
    .line 3442
    .local v5, "ch":I
    const/4 v15, -0x1

    #@c1
    if-ne v5, v15, :cond_c

    #@c3
    .line 3443
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@c5
    const-string/jumbo v16, "Invalid character name"

    #@c8
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cb
    throw v15

    #@cc
    .line 3445
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@cf
    .line 3446
    move-object/from16 v0, p0

    #@d1
    invoke-direct {v0, v5}, Landroid/icu/text/UnicodeSet;->add_unchecked(I)Landroid/icu/text/UnicodeSet;

    #@d4
    .line 3447
    return-object p0

    #@d5
    .line 3451
    .end local v4    # "buf":Ljava/lang/String;
    .end local v5    # "ch":I
    :sswitch_2
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@d7
    const-string/jumbo v16, "Unicode_1_Name (na1) not supported"

    #@da
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@dd
    throw v15

    #@de
    .line 3457
    :sswitch_3
    invoke-static/range {p2 .. p2}, Landroid/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;

    #@e1
    move-result-object v15

    #@e2
    invoke-static {v15}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    #@e5
    move-result-object v14

    #@e6
    .line 3458
    .local v14, "version":Landroid/icu/util/VersionInfo;
    new-instance v15, Landroid/icu/text/UnicodeSet$VersionFilter;

    #@e8
    invoke-direct {v15, v14}, Landroid/icu/text/UnicodeSet$VersionFilter;-><init>(Landroid/icu/util/VersionInfo;)V

    #@eb
    const/16 v16, 0x2

    #@ed
    move-object/from16 v0, p0

    #@ef
    move/from16 v1, v16

    #@f1
    invoke-direct {v0, v15, v1}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    #@f4
    .line 3459
    return-object p0

    #@f5
    .line 3462
    .end local v14    # "version":Landroid/icu/util/VersionInfo;
    :sswitch_4
    const/16 v15, 0x100a

    #@f7
    move-object/from16 v0, p2

    #@f9
    invoke-static {v15, v0}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    #@fc
    move-result v11

    #@fd
    .restart local v11    # "v":I
    goto/16 :goto_0

    #@ff
    .line 3477
    .end local v9    # "p":I
    .end local v11    # "v":I
    :cond_d
    sget-object v10, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    #@101
    .line 3478
    .local v10, "pnames":Landroid/icu/impl/UPropertyAliases;
    const/16 v9, 0x2000

    #@103
    .line 3479
    .restart local v9    # "p":I
    move-object/from16 v0, p1

    #@105
    invoke-virtual {v10, v9, v0}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    #@108
    move-result v11

    #@109
    .line 3480
    .restart local v11    # "v":I
    const/4 v15, -0x1

    #@10a
    if-ne v11, v15, :cond_4

    #@10c
    .line 3481
    const/16 v9, 0x100a

    #@10e
    .line 3482
    move-object/from16 v0, p1

    #@110
    invoke-virtual {v10, v9, v0}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    #@113
    move-result v11

    #@114
    .line 3483
    const/4 v15, -0x1

    #@115
    if-ne v11, v15, :cond_4

    #@117
    .line 3484
    move-object/from16 v0, p1

    #@119
    invoke-virtual {v10, v0}, Landroid/icu/impl/UPropertyAliases;->getPropertyEnum(Ljava/lang/CharSequence;)I

    #@11c
    move-result v9

    #@11d
    .line 3485
    const/4 v15, -0x1

    #@11e
    if-ne v9, v15, :cond_e

    #@120
    .line 3486
    const/4 v9, -0x1

    #@121
    .line 3488
    :cond_e
    if-ltz v9, :cond_f

    #@123
    const/16 v15, 0x39

    #@125
    if-ge v9, v15, :cond_f

    #@127
    .line 3489
    const/4 v11, 0x1

    #@128
    .line 3488
    goto/16 :goto_0

    #@12a
    .line 3490
    :cond_f
    const/4 v15, -0x1

    #@12b
    if-ne v9, v15, :cond_13

    #@12d
    .line 3491
    const-string/jumbo v15, "ANY"

    #@130
    move-object/from16 v0, p1

    #@132
    invoke-static {v15, v0}, Landroid/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@135
    move-result v15

    #@136
    if-nez v15, :cond_10

    #@138
    .line 3492
    const/4 v15, 0x0

    #@139
    const v16, 0x10ffff

    #@13c
    move-object/from16 v0, p0

    #@13e
    move/from16 v1, v16

    #@140
    invoke-virtual {v0, v15, v1}, Landroid/icu/text/UnicodeSet;->set(II)Landroid/icu/text/UnicodeSet;

    #@143
    .line 3493
    return-object p0

    #@144
    .line 3494
    :cond_10
    const-string/jumbo v15, "ASCII"

    #@147
    move-object/from16 v0, p1

    #@149
    invoke-static {v15, v0}, Landroid/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@14c
    move-result v15

    #@14d
    if-nez v15, :cond_11

    #@14f
    .line 3495
    const/4 v15, 0x0

    #@150
    const/16 v16, 0x7f

    #@152
    move-object/from16 v0, p0

    #@154
    move/from16 v1, v16

    #@156
    invoke-virtual {v0, v15, v1}, Landroid/icu/text/UnicodeSet;->set(II)Landroid/icu/text/UnicodeSet;

    #@159
    .line 3496
    return-object p0

    #@15a
    .line 3497
    :cond_11
    const-string/jumbo v15, "Assigned"

    #@15d
    move-object/from16 v0, p1

    #@15f
    invoke-static {v15, v0}, Landroid/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@162
    move-result v15

    #@163
    if-nez v15, :cond_12

    #@165
    .line 3499
    const/16 v9, 0x2000

    #@167
    .line 3500
    const/4 v11, 0x1

    #@168
    .line 3501
    const/4 v7, 0x1

    #@169
    goto/16 :goto_0

    #@16b
    .line 3504
    :cond_12
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@16d
    new-instance v16, Ljava/lang/StringBuilder;

    #@16f
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@172
    const-string/jumbo v17, "Invalid property alias: "

    #@175
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v16

    #@179
    move-object/from16 v0, v16

    #@17b
    move-object/from16 v1, p1

    #@17d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v16

    #@181
    const-string/jumbo v17, "="

    #@184
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v16

    #@188
    move-object/from16 v0, v16

    #@18a
    move-object/from16 v1, p2

    #@18c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v16

    #@190
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@193
    move-result-object v16

    #@194
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@197
    throw v15

    #@198
    .line 3509
    :cond_13
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@19a
    const-string/jumbo v16, "Missing property value"

    #@19d
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a0
    throw v15

    #@1a1
    .line 3526
    .end local v10    # "pnames":Landroid/icu/impl/UPropertyAliases;
    :cond_14
    return-object p0

    #@1a2
    .line 3428
    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x4000 -> :sswitch_3
        0x4005 -> :sswitch_1
        0x400b -> :sswitch_2
        0x7000 -> :sswitch_4
    .end sparse-switch
.end method

.method public charAt(I)I
    .locals 6
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1139
    if-ltz p1, :cond_1

    #@2
    .line 1143
    iget v5, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@4
    and-int/lit8 v3, v5, -0x2

    #@6
    .line 1144
    .local v3, "len2":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    move v2, v1

    #@8
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@a
    .line 1145
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@c
    add-int/lit8 v1, v2, 0x1

    #@e
    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget v4, v5, v2

    #@10
    .line 1146
    .local v4, "start":I
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@12
    add-int/lit8 v2, v1, 0x1

    #@14
    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget v5, v5, v1

    #@16
    sub-int v0, v5, v4

    #@18
    .line 1147
    .local v0, "count":I
    if-ge p1, v0, :cond_0

    #@1a
    .line 1148
    add-int v5, v4, p1

    #@1c
    return v5

    #@1d
    .line 1150
    :cond_0
    sub-int/2addr p1, v0

    #@1e
    goto :goto_0

    #@1f
    .line 1153
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "len2":I
    .end local v4    # "start":I
    :cond_1
    const/4 v5, -0x1

    #@20
    return v5
.end method

.method public clear()Landroid/icu/text/UnicodeSet;
    .locals 3

    #@0
    .prologue
    .line 2252
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 2253
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@5
    const/high16 v1, 0x110000

    #@7
    const/4 v2, 0x0

    #@8
    aput v1, v0, v2

    #@a
    .line 2254
    const/4 v0, 0x1

    #@b
    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@d
    .line 2255
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@10
    .line 2256
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@12
    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    #@15
    .line 2257
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 509
    return-object p0

    #@7
    .line 511
    :cond_0
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@9
    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@c
    .line 512
    .local v0, "result":Landroid/icu/text/UnicodeSet;
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    #@e
    iput-object v1, v0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    #@10
    .line 513
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@12
    iput-object v1, v0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@14
    .line 514
    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/text/UnicodeSet;
    .locals 2

    #@0
    .prologue
    .line 4145
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@5
    .line 4146
    .local v0, "result":Landroid/icu/text/UnicodeSet;
    sget-boolean v1, Landroid/icu/text/UnicodeSet;->-assertionsDisabled:Z

    #@7
    if-nez v1, :cond_1

    #@9
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    const/4 v1, 0x0

    #@10
    :goto_0
    if-nez v1, :cond_1

    #@12
    new-instance v1, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v1

    #@18
    :cond_0
    const/4 v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 4147
    :cond_1
    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 4144
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public closeOver(I)Landroid/icu/text/UnicodeSet;
    .locals 18
    .param p1, "attribute"    # I

    #@0
    .prologue
    .line 3790
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 3791
    and-int/lit8 v3, p1, 0x6

    #@5
    if-eqz v3, :cond_7

    #@7
    .line 3792
    sget-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    #@9
    .line 3793
    .local v1, "csp":Landroid/icu/impl/UCaseProps;
    new-instance v9, Landroid/icu/text/UnicodeSet;

    #@b
    move-object/from16 v0, p0

    #@d
    invoke-direct {v9, v0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@10
    .line 3794
    .local v9, "foldSet":Landroid/icu/text/UnicodeSet;
    sget-object v5, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@12
    .line 3799
    .local v5, "root":Landroid/icu/util/ULocale;
    and-int/lit8 v3, p1, 0x2

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 3800
    iget-object v3, v9, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@18
    invoke-virtual {v3}, Ljava/util/TreeSet;->clear()V

    #@1b
    .line 3803
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    #@1e
    move-result v11

    #@1f
    .line 3805
    .local v11, "n":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    .line 3806
    .local v4, "full":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    #@25
    new-array v6, v3, [I

    #@27
    .line 3808
    .local v6, "locCache":[I
    const/4 v10, 0x0

    #@28
    .local v10, "i":I
    :goto_0
    if-ge v10, v11, :cond_3

    #@2a
    .line 3809
    move-object/from16 v0, p0

    #@2c
    invoke-virtual {v0, v10}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    #@2f
    move-result v15

    #@30
    .line 3810
    .local v15, "start":I
    move-object/from16 v0, p0

    #@32
    invoke-virtual {v0, v10}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    #@35
    move-result v8

    #@36
    .line 3812
    .local v8, "end":I
    and-int/lit8 v3, p1, 0x2

    #@38
    if-eqz v3, :cond_1

    #@3a
    .line 3814
    move v2, v15

    #@3b
    .local v2, "cp":I
    :goto_1
    if-gt v2, v8, :cond_2

    #@3d
    .line 3815
    invoke-virtual {v1, v2, v9}, Landroid/icu/impl/UCaseProps;->addCaseClosure(ILandroid/icu/text/UnicodeSet;)V

    #@40
    .line 3814
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_1

    #@43
    .line 3820
    .end local v2    # "cp":I
    :cond_1
    move v2, v15

    #@44
    .restart local v2    # "cp":I
    :goto_2
    if-gt v2, v8, :cond_2

    #@46
    .line 3821
    const/4 v3, 0x0

    #@47
    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@4a
    move-result v12

    #@4b
    .line 3822
    .local v12, "result":I
    invoke-static {v9, v12, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    #@4e
    .line 3824
    const/4 v3, 0x0

    #@4f
    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@52
    move-result v12

    #@53
    .line 3825
    invoke-static {v9, v12, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    #@56
    .line 3827
    const/4 v3, 0x0

    #@57
    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    #@5a
    move-result v12

    #@5b
    .line 3828
    invoke-static {v9, v12, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    #@5e
    .line 3830
    const/4 v3, 0x0

    #@5f
    invoke-virtual {v1, v2, v4, v3}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuilder;I)I

    #@62
    move-result v12

    #@63
    .line 3831
    invoke-static {v9, v12, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    #@66
    .line 3820
    add-int/lit8 v2, v2, 0x1

    #@68
    goto :goto_2

    #@69
    .line 3808
    .end local v12    # "result":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 3835
    .end local v2    # "cp":I
    .end local v8    # "end":I
    .end local v15    # "start":I
    :cond_3
    move-object/from16 v0, p0

    #@6e
    iget-object v3, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@70
    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    #@73
    move-result v3

    #@74
    if-nez v3, :cond_6

    #@76
    .line 3836
    and-int/lit8 v3, p1, 0x2

    #@78
    if-eqz v3, :cond_5

    #@7a
    .line 3837
    move-object/from16 v0, p0

    #@7c
    iget-object v3, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@7e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@81
    move-result-object v14

    #@82
    .local v14, "s$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@85
    move-result v3

    #@86
    if-eqz v3, :cond_6

    #@88
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8b
    move-result-object v13

    #@8c
    check-cast v13, Ljava/lang/String;

    #@8e
    .line 3838
    .local v13, "s":Ljava/lang/String;
    const/4 v3, 0x0

    #@8f
    invoke-static {v13, v3}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    #@92
    move-result-object v16

    #@93
    .line 3839
    .local v16, "str":Ljava/lang/String;
    move-object/from16 v0, v16

    #@95
    invoke-virtual {v1, v0, v9}, Landroid/icu/impl/UCaseProps;->addStringCaseClosure(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z

    #@98
    move-result v3

    #@99
    if-nez v3, :cond_4

    #@9b
    .line 3840
    move-object/from16 v0, v16

    #@9d
    invoke-virtual {v9, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@a0
    goto :goto_3

    #@a1
    .line 3844
    .end local v13    # "s":Ljava/lang/String;
    .end local v14    # "s$iterator":Ljava/util/Iterator;
    .end local v16    # "str":Ljava/lang/String;
    :cond_5
    invoke-static {v5}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@a4
    move-result-object v7

    #@a5
    .line 3845
    .local v7, "bi":Landroid/icu/text/BreakIterator;
    move-object/from16 v0, p0

    #@a7
    iget-object v3, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@a9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ac
    move-result-object v17

    #@ad
    .local v17, "str$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@b0
    move-result v3

    #@b1
    if-eqz v3, :cond_6

    #@b3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b6
    move-result-object v16

    #@b7
    check-cast v16, Ljava/lang/String;

    #@b9
    .line 3846
    .restart local v16    # "str":Ljava/lang/String;
    move-object/from16 v0, v16

    #@bb
    invoke-static {v5, v0}, Landroid/icu/lang/UCharacter;->toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@be
    move-result-object v3

    #@bf
    invoke-virtual {v9, v3}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@c2
    .line 3847
    move-object/from16 v0, v16

    #@c4
    invoke-static {v5, v0, v7}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;

    #@c7
    move-result-object v3

    #@c8
    invoke-virtual {v9, v3}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@cb
    .line 3848
    move-object/from16 v0, v16

    #@cd
    invoke-static {v5, v0}, Landroid/icu/lang/UCharacter;->toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@d0
    move-result-object v3

    #@d1
    invoke-virtual {v9, v3}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@d4
    .line 3849
    const/4 v3, 0x0

    #@d5
    move-object/from16 v0, v16

    #@d7
    invoke-static {v0, v3}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    #@da
    move-result-object v3

    #@db
    invoke-virtual {v9, v3}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@de
    goto :goto_4

    #@df
    .line 3853
    .end local v7    # "bi":Landroid/icu/text/BreakIterator;
    .end local v16    # "str":Ljava/lang/String;
    .end local v17    # "str$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    #@e1
    invoke-virtual {v0, v9}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@e4
    .line 3855
    .end local v1    # "csp":Landroid/icu/impl/UCaseProps;
    .end local v4    # "full":Ljava/lang/StringBuilder;
    .end local v5    # "root":Landroid/icu/util/ULocale;
    .end local v6    # "locCache":[I
    .end local v9    # "foldSet":Landroid/icu/text/UnicodeSet;
    .end local v10    # "i":I
    .end local v11    # "n":I
    :cond_7
    return-object p0
.end method

.method public compact()Landroid/icu/text/UnicodeSet;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 2303
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@5
    .line 2304
    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@7
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@9
    array-length v2, v2

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 2305
    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@e
    new-array v0, v1, [I

    #@10
    .line 2306
    .local v0, "temp":[I
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@12
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@14
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@17
    .line 2307
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@19
    .line 2309
    .end local v0    # "temp":[I
    :cond_0
    iput-object v4, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    #@1b
    .line 2310
    iput-object v4, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@1d
    .line 2311
    return-object p0
.end method

.method public compareTo(Landroid/icu/text/UnicodeSet;)I
    .locals 1
    .param p1, "o"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 4445
    sget-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/UnicodeSet;->compareTo(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$ComparisonStyle;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$ComparisonStyle;)I
    .locals 10
    .param p1, "o"    # Landroid/icu/text/UnicodeSet;
    .param p2, "style"    # Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/high16 v9, 0x110000

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 4453
    sget-object v4, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@7
    if-eq p2, v4, :cond_3

    #@9
    .line 4454
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    #@c
    move-result v4

    #@d
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->size()I

    #@10
    move-result v8

    #@11
    sub-int v0, v4, v8

    #@13
    .line 4455
    .local v0, "diff":I
    if-eqz v0, :cond_3

    #@15
    .line 4456
    if-gez v0, :cond_2

    #@17
    move v4, v5

    #@18
    :goto_0
    sget-object v8, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    #@1a
    if-ne p2, v8, :cond_0

    #@1c
    move v6, v5

    #@1d
    :cond_0
    if-ne v4, v6, :cond_1

    #@1f
    move v5, v7

    #@20
    :cond_1
    return v5

    #@21
    :cond_2
    move v4, v6

    #@22
    goto :goto_0

    #@23
    .line 4460
    .end local v0    # "diff":I
    :cond_3
    const/4 v1, 0x0

    #@24
    .line 4461
    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@26
    aget v4, v4, v1

    #@28
    iget-object v6, p1, Landroid/icu/text/UnicodeSet;->list:[I

    #@2a
    aget v6, v6, v1

    #@2c
    sub-int v3, v4, v6

    #@2e
    .local v3, "result":I
    if-eqz v3, :cond_9

    #@30
    .line 4463
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@32
    aget v4, v4, v1

    #@34
    if-ne v4, v9, :cond_5

    #@36
    .line 4464
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@38
    invoke-virtual {v4}, Ljava/util/TreeSet;->isEmpty()Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_4

    #@3e
    return v5

    #@3f
    .line 4465
    :cond_4
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@41
    invoke-virtual {v4}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Ljava/lang/String;

    #@47
    .line 4466
    .local v2, "item":Ljava/lang/String;
    iget-object v4, p1, Landroid/icu/text/UnicodeSet;->list:[I

    #@49
    aget v4, v4, v1

    #@4b
    invoke-static {v2, v4}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/CharSequence;I)I

    #@4e
    move-result v4

    #@4f
    return v4

    #@50
    .line 4468
    .end local v2    # "item":Ljava/lang/String;
    :cond_5
    iget-object v4, p1, Landroid/icu/text/UnicodeSet;->list:[I

    #@52
    aget v4, v4, v1

    #@54
    if-ne v4, v9, :cond_7

    #@56
    .line 4469
    iget-object v4, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@58
    invoke-virtual {v4}, Ljava/util/TreeSet;->isEmpty()Z

    #@5b
    move-result v4

    #@5c
    if-eqz v4, :cond_6

    #@5e
    return v7

    #@5f
    .line 4470
    :cond_6
    iget-object v4, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@61
    invoke-virtual {v4}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    #@64
    move-result-object v2

    #@65
    check-cast v2, Ljava/lang/String;

    #@67
    .line 4471
    .restart local v2    # "item":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@69
    aget v4, v4, v1

    #@6b
    invoke-static {v2, v4}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/CharSequence;I)I

    #@6e
    move-result v4

    #@6f
    neg-int v4, v4

    #@70
    return v4

    #@71
    .line 4474
    .end local v2    # "item":Ljava/lang/String;
    :cond_7
    and-int/lit8 v4, v1, 0x1

    #@73
    if-nez v4, :cond_8

    #@75
    .end local v3    # "result":I
    :goto_2
    return v3

    #@76
    .restart local v3    # "result":I
    :cond_8
    neg-int v3, v3

    #@77
    goto :goto_2

    #@78
    .line 4476
    :cond_9
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@7a
    aget v4, v4, v1

    #@7c
    if-ne v4, v9, :cond_a

    #@7e
    .line 4480
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@80
    iget-object v5, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@82
    invoke-static {v4, v5}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    #@85
    move-result v4

    #@86
    return v4

    #@87
    .line 4460
    :cond_a
    add-int/lit8 v1, v1, 0x1

    #@89
    goto :goto_1
.end method

.method public compareTo(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 4487
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4444
    check-cast p1, Landroid/icu/text/UnicodeSet;

    #@2
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->compareTo(Landroid/icu/text/UnicodeSet;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public complement()Landroid/icu/text/UnicodeSet;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1615
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@5
    .line 1616
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@7
    aget v0, v0, v3

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1617
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@d
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@f
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@11
    add-int/lit8 v2, v2, -0x1

    #@13
    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@16
    .line 1618
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@18
    add-int/lit8 v0, v0, -0x1

    #@1a
    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@1c
    .line 1625
    :goto_0
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@1f
    .line 1626
    return-object p0

    #@20
    .line 1620
    :cond_0
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->ensureCapacity(I)V

    #@27
    .line 1621
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@29
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@2b
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@2d
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@30
    .line 1622
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@32
    aput v3, v0, v3

    #@34
    .line 1623
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@36
    add-int/lit8 v0, v0, 0x1

    #@38
    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@3a
    goto :goto_0
.end method

.method public final complement(I)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1606
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public complement(II)Landroid/icu/text/UnicodeSet;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const v0, 0x10ffff

    #@3
    const/4 v4, 0x6

    #@4
    const/4 v2, 0x0

    #@5
    .line 1585
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@8
    .line 1586
    if-ltz p1, :cond_0

    #@a
    if-le p1, v0, :cond_1

    #@c
    .line 1587
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Invalid code point U+"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    int-to-long v2, p1

    #@1b
    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 1589
    :cond_1
    if-ltz p2, :cond_2

    #@2d
    if-le p2, v0, :cond_3

    #@2f
    .line 1590
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@31
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v2, "Invalid code point U+"

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    int-to-long v2, p2

    #@3e
    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0

    #@4e
    .line 1592
    :cond_3
    if-gt p1, p2, :cond_4

    #@50
    .line 1593
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    #@53
    move-result-object v0

    #@54
    const/4 v1, 0x2

    #@55
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->xor([III)Landroid/icu/text/UnicodeSet;

    #@58
    .line 1595
    :cond_4
    const/4 v0, 0x0

    #@59
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@5b
    .line 1596
    return-object p0
.end method

.method public final complement(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1639
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 1640
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    #@6
    move-result v0

    #@7
    .line 1641
    .local v0, "cp":I
    if-gez v0, :cond_1

    #@9
    .line 1642
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 1643
    .local v1, "s2":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@f
    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 1644
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@17
    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    #@1a
    .line 1648
    :goto_0
    const/4 v2, 0x0

    #@1b
    iput-object v2, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@1d
    .line 1652
    .end local v1    # "s2":Ljava/lang/String;
    :goto_1
    return-object p0

    #@1e
    .line 1646
    .restart local v1    # "s2":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@20
    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_0

    #@24
    .line 1650
    .end local v1    # "s2":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    #@27
    goto :goto_1
.end method

.method public complementAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .param p1, "c"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 2240
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 2241
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    #@5
    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->xor([III)Landroid/icu/text/UnicodeSet;

    #@b
    .line 2242
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@d
    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@f
    const/4 v2, 0x5

    #@10
    invoke-static {v0, v2, v1}, Landroid/icu/impl/SortedSetRelation;->doOperation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Ljava/util/SortedSet;

    #@13
    .line 2243
    return-object p0
.end method

.method public final complementAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1399
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->complementAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public contains(I)Z
    .locals 6
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1662
    if-ltz p1, :cond_0

    #@3
    const v2, 0x10ffff

    #@6
    if-le p1, v2, :cond_1

    #@8
    .line 1663
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Invalid code point U+"

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    int-to-long v4, p1

    #@17
    const/4 v3, 0x6

    #@18
    invoke-static {v4, v5, v3}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 1665
    :cond_1
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 1666
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    #@2e
    invoke-virtual {v1, p1}, Landroid/icu/impl/BMPSet;->contains(I)Z

    #@31
    move-result v1

    #@32
    return v1

    #@33
    .line 1668
    :cond_2
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@35
    if-eqz v2, :cond_3

    #@37
    .line 1669
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@39
    invoke-virtual {v1, p1}, Landroid/icu/impl/UnicodeSetStringSpan;->contains(I)Z

    #@3c
    move-result v1

    #@3d
    return v1

    #@3e
    .line 1681
    :cond_3
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->findCodePoint(I)I

    #@41
    move-result v0

    #@42
    .line 1683
    .local v0, "i":I
    and-int/lit8 v2, v0, 0x1

    #@44
    if-eqz v2, :cond_4

    #@46
    const/4 v1, 0x1

    #@47
    :cond_4
    return v1
.end method

.method public contains(II)Z
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const v2, 0x10ffff

    #@3
    const/4 v6, 0x6

    #@4
    const/4 v1, 0x0

    #@5
    .line 1851
    if-ltz p1, :cond_0

    #@7
    if-le p1, v2, :cond_1

    #@9
    .line 1852
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Invalid code point U+"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    int-to-long v4, p1

    #@18
    invoke-static {v4, v5, v6}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 1854
    :cond_1
    if-ltz p2, :cond_2

    #@2a
    if-le p2, v2, :cond_3

    #@2c
    .line 1855
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2e
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "Invalid code point U+"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    int-to-long v4, p2

    #@3b
    invoke-static {v4, v5, v6}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v1

    #@4b
    .line 1861
    :cond_3
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->findCodePoint(I)I

    #@4e
    move-result v0

    #@4f
    .line 1862
    .local v0, "i":I
    and-int/lit8 v2, v0, 0x1

    #@51
    if-eqz v2, :cond_4

    #@53
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@55
    aget v2, v2, v0

    #@57
    if-ge p2, v2, :cond_4

    #@59
    const/4 v1, 0x1

    #@5a
    :cond_4
    return v1
.end method

.method public final contains(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1874
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    #@3
    move-result v0

    #@4
    .line 1875
    .local v0, "cp":I
    if-gez v0, :cond_0

    #@6
    .line 1876
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 1878
    :cond_0
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public containsAll(Landroid/icu/text/UnicodeSet;)Z
    .locals 16
    .param p1, "b"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 1894
    move-object/from16 v0, p1

    #@2
    iget-object v9, v0, Landroid/icu/text/UnicodeSet;->list:[I

    #@4
    .line 1895
    .local v9, "listB":[I
    const/4 v10, 0x1

    #@5
    .line 1896
    .local v10, "needA":Z
    const/4 v11, 0x1

    #@6
    .line 1897
    .local v11, "needB":Z
    const/4 v2, 0x0

    #@7
    .line 1898
    .local v2, "aPtr":I
    const/4 v5, 0x0

    #@8
    .line 1899
    .local v5, "bPtr":I
    move-object/from16 v0, p0

    #@a
    iget v14, v0, Landroid/icu/text/UnicodeSet;->len:I

    #@c
    add-int/lit8 v1, v14, -0x1

    #@e
    .line 1900
    .local v1, "aLen":I
    move-object/from16 v0, p1

    #@10
    iget v14, v0, Landroid/icu/text/UnicodeSet;->len:I

    #@12
    add-int/lit8 v4, v14, -0x1

    #@14
    .line 1901
    .local v4, "bLen":I
    const/4 v12, 0x0

    #@15
    .local v12, "startA":I
    const/4 v13, 0x0

    #@16
    .local v13, "startB":I
    const/4 v7, 0x0

    #@17
    .local v7, "limitA":I
    const/4 v8, 0x0

    #@18
    .local v8, "limitB":I
    move v6, v5

    #@19
    .end local v5    # "bPtr":I
    .local v6, "bPtr":I
    move v3, v2

    #@1a
    .line 1904
    .end local v2    # "aPtr":I
    .local v3, "aPtr":I
    :goto_0
    if-eqz v10, :cond_7

    #@1c
    .line 1905
    if-lt v3, v1, :cond_2

    #@1e
    .line 1907
    if-eqz v11, :cond_1

    #@20
    if-lt v6, v4, :cond_1

    #@22
    move v2, v3

    #@23
    .line 1939
    .end local v3    # "aPtr":I
    .restart local v2    # "aPtr":I
    :cond_0
    move-object/from16 v0, p0

    #@25
    iget-object v14, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@27
    move-object/from16 v0, p1

    #@29
    iget-object v15, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@2b
    invoke-virtual {v14, v15}, Ljava/util/TreeSet;->containsAll(Ljava/util/Collection;)Z

    #@2e
    move-result v14

    #@2f
    if-nez v14, :cond_5

    #@31
    const/4 v14, 0x0

    #@32
    return v14

    #@33
    .line 1910
    .end local v2    # "aPtr":I
    .restart local v3    # "aPtr":I
    :cond_1
    const/4 v14, 0x0

    #@34
    return v14

    #@35
    .line 1912
    :cond_2
    move-object/from16 v0, p0

    #@37
    iget-object v14, v0, Landroid/icu/text/UnicodeSet;->list:[I

    #@39
    add-int/lit8 v2, v3, 0x1

    #@3b
    .end local v3    # "aPtr":I
    .restart local v2    # "aPtr":I
    aget v12, v14, v3

    #@3d
    .line 1913
    move-object/from16 v0, p0

    #@3f
    iget-object v14, v0, Landroid/icu/text/UnicodeSet;->list:[I

    #@41
    add-int/lit8 v3, v2, 0x1

    #@43
    .end local v2    # "aPtr":I
    .restart local v3    # "aPtr":I
    aget v7, v14, v2

    #@45
    move v2, v3

    #@46
    .line 1915
    .end local v3    # "aPtr":I
    .restart local v2    # "aPtr":I
    :goto_1
    if-eqz v11, :cond_6

    #@48
    .line 1916
    if-ge v6, v4, :cond_0

    #@4a
    .line 1920
    add-int/lit8 v5, v6, 0x1

    #@4c
    .end local v6    # "bPtr":I
    .restart local v5    # "bPtr":I
    aget v13, v9, v6

    #@4e
    .line 1921
    add-int/lit8 v6, v5, 0x1

    #@50
    .end local v5    # "bPtr":I
    .restart local v6    # "bPtr":I
    aget v8, v9, v5

    #@52
    move v5, v6

    #@53
    .line 1924
    .end local v6    # "bPtr":I
    .restart local v5    # "bPtr":I
    :goto_2
    if-lt v13, v7, :cond_3

    #@55
    .line 1925
    const/4 v10, 0x1

    #@56
    .line 1926
    const/4 v11, 0x0

    #@57
    move v6, v5

    #@58
    .end local v5    # "bPtr":I
    .restart local v6    # "bPtr":I
    move v3, v2

    #@59
    .line 1927
    .end local v2    # "aPtr":I
    .restart local v3    # "aPtr":I
    goto :goto_0

    #@5a
    .line 1930
    .end local v3    # "aPtr":I
    .end local v6    # "bPtr":I
    .restart local v2    # "aPtr":I
    .restart local v5    # "bPtr":I
    :cond_3
    if-lt v13, v12, :cond_4

    #@5c
    if-gt v8, v7, :cond_4

    #@5e
    .line 1931
    const/4 v10, 0x0

    #@5f
    .line 1932
    const/4 v11, 0x1

    #@60
    move v6, v5

    #@61
    .end local v5    # "bPtr":I
    .restart local v6    # "bPtr":I
    move v3, v2

    #@62
    .line 1933
    .end local v2    # "aPtr":I
    .restart local v3    # "aPtr":I
    goto :goto_0

    #@63
    .line 1936
    .end local v3    # "aPtr":I
    .end local v6    # "bPtr":I
    .restart local v2    # "aPtr":I
    .restart local v5    # "bPtr":I
    :cond_4
    const/4 v14, 0x0

    #@64
    return v14

    #@65
    .line 1940
    .end local v5    # "bPtr":I
    .restart local v6    # "bPtr":I
    :cond_5
    const/4 v14, 0x1

    #@66
    return v14

    #@67
    :cond_6
    move v5, v6

    #@68
    .end local v6    # "bPtr":I
    .restart local v5    # "bPtr":I
    goto :goto_2

    #@69
    .end local v2    # "aPtr":I
    .end local v5    # "bPtr":I
    .restart local v3    # "aPtr":I
    .restart local v6    # "bPtr":I
    :cond_7
    move v2, v3

    #@6a
    .end local v3    # "aPtr":I
    .restart local v2    # "aPtr":I
    goto :goto_1
.end method

.method public containsAll(Ljava/lang/Iterable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4351
    .local p1, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "o$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/CharSequence;

    #@10
    .line 4352
    .local v0, "o":Ljava/lang/CharSequence;, "TT;"
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_0

    #@16
    .line 4353
    const/4 v2, 0x0

    #@17
    return v2

    #@18
    .line 4356
    .end local v0    # "o":Ljava/lang/CharSequence;, "TT;"
    :cond_1
    const/4 v2, 0x1

    #@19
    return v2
.end method

.method public containsAll(Ljava/lang/String;)Z
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1975
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-ge v1, v2, :cond_2

    #@8
    .line 1976
    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    .line 1977
    .local v0, "cp":I
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_1

    #@12
    .line 1978
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@14
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 1979
    return v3

    #@1b
    .line 1981
    :cond_0
    invoke-direct {p0, p1, v3}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    #@1e
    move-result v2

    #@1f
    return v2

    #@20
    .line 1975
    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@23
    move-result v2

    #@24
    add-int/2addr v1, v2

    #@25
    goto :goto_0

    #@26
    .line 1984
    .end local v0    # "cp":I
    :cond_2
    const/4 v2, 0x1

    #@27
    return v2
.end method

.method public containsNone(II)Z
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const v2, 0x10ffff

    #@3
    const/4 v6, 0x6

    #@4
    const/4 v1, 0x0

    #@5
    .line 2039
    if-ltz p1, :cond_0

    #@7
    if-le p1, v2, :cond_1

    #@9
    .line 2040
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Invalid code point U+"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    int-to-long v4, p1

    #@18
    invoke-static {v4, v5, v6}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 2042
    :cond_1
    if-ltz p2, :cond_2

    #@2a
    if-le p2, v2, :cond_3

    #@2c
    .line 2043
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2e
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "Invalid code point U+"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    int-to-long v4, p2

    #@3b
    invoke-static {v4, v5, v6}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v1

    #@4b
    .line 2045
    :cond_3
    const/4 v0, -0x1

    #@4c
    .line 2047
    .local v0, "i":I
    :cond_4
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@4e
    add-int/lit8 v0, v0, 0x1

    #@50
    aget v2, v2, v0

    #@52
    if-ge p1, v2, :cond_4

    #@54
    .line 2049
    and-int/lit8 v2, v0, 0x1

    #@56
    if-nez v2, :cond_5

    #@58
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@5a
    aget v2, v2, v0

    #@5c
    if-ge p2, v2, :cond_5

    #@5e
    const/4 v1, 0x1

    #@5f
    :cond_5
    return v1
.end method

.method public containsNone(Landroid/icu/text/UnicodeSet;)Z
    .locals 17
    .param p1, "b"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 2064
    move-object/from16 v0, p1

    #@2
    iget-object v9, v0, Landroid/icu/text/UnicodeSet;->list:[I

    #@4
    .line 2065
    .local v9, "listB":[I
    const/4 v10, 0x1

    #@5
    .line 2066
    .local v10, "needA":Z
    const/4 v11, 0x1

    #@6
    .line 2067
    .local v11, "needB":Z
    const/4 v2, 0x0

    #@7
    .line 2068
    .local v2, "aPtr":I
    const/4 v5, 0x0

    #@8
    .line 2069
    .local v5, "bPtr":I
    move-object/from16 v0, p0

    #@a
    iget v14, v0, Landroid/icu/text/UnicodeSet;->len:I

    #@c
    add-int/lit8 v1, v14, -0x1

    #@e
    .line 2070
    .local v1, "aLen":I
    move-object/from16 v0, p1

    #@10
    iget v14, v0, Landroid/icu/text/UnicodeSet;->len:I

    #@12
    add-int/lit8 v4, v14, -0x1

    #@14
    .line 2071
    .local v4, "bLen":I
    const/4 v12, 0x0

    #@15
    .local v12, "startA":I
    const/4 v13, 0x0

    #@16
    .local v13, "startB":I
    const/4 v7, 0x0

    #@17
    .local v7, "limitA":I
    const/4 v8, 0x0

    #@18
    .local v8, "limitB":I
    move v6, v5

    #@19
    .end local v5    # "bPtr":I
    .local v6, "bPtr":I
    move v3, v2

    #@1a
    .line 2074
    .end local v2    # "aPtr":I
    .local v3, "aPtr":I
    :goto_0
    if-eqz v10, :cond_6

    #@1c
    .line 2075
    if-lt v3, v1, :cond_1

    #@1e
    move v2, v3

    #@1f
    .line 2106
    .end local v3    # "aPtr":I
    .restart local v2    # "aPtr":I
    :cond_0
    move-object/from16 v0, p0

    #@21
    iget-object v14, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@23
    move-object/from16 v0, p1

    #@25
    iget-object v15, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@27
    const/16 v16, 0x5

    #@29
    move/from16 v0, v16

    #@2b
    invoke-static {v14, v0, v15}, Landroid/icu/impl/SortedSetRelation;->hasRelation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Z

    #@2e
    move-result v14

    #@2f
    if-nez v14, :cond_4

    #@31
    const/4 v14, 0x0

    #@32
    return v14

    #@33
    .line 2079
    .end local v2    # "aPtr":I
    .restart local v3    # "aPtr":I
    :cond_1
    move-object/from16 v0, p0

    #@35
    iget-object v14, v0, Landroid/icu/text/UnicodeSet;->list:[I

    #@37
    add-int/lit8 v2, v3, 0x1

    #@39
    .end local v3    # "aPtr":I
    .restart local v2    # "aPtr":I
    aget v12, v14, v3

    #@3b
    .line 2080
    move-object/from16 v0, p0

    #@3d
    iget-object v14, v0, Landroid/icu/text/UnicodeSet;->list:[I

    #@3f
    add-int/lit8 v3, v2, 0x1

    #@41
    .end local v2    # "aPtr":I
    .restart local v3    # "aPtr":I
    aget v7, v14, v2

    #@43
    move v2, v3

    #@44
    .line 2082
    .end local v3    # "aPtr":I
    .restart local v2    # "aPtr":I
    :goto_1
    if-eqz v11, :cond_5

    #@46
    .line 2083
    if-ge v6, v4, :cond_0

    #@48
    .line 2087
    add-int/lit8 v5, v6, 0x1

    #@4a
    .end local v6    # "bPtr":I
    .restart local v5    # "bPtr":I
    aget v13, v9, v6

    #@4c
    .line 2088
    add-int/lit8 v6, v5, 0x1

    #@4e
    .end local v5    # "bPtr":I
    .restart local v6    # "bPtr":I
    aget v8, v9, v5

    #@50
    move v5, v6

    #@51
    .line 2091
    .end local v6    # "bPtr":I
    .restart local v5    # "bPtr":I
    :goto_2
    if-lt v13, v7, :cond_2

    #@53
    .line 2092
    const/4 v10, 0x1

    #@54
    .line 2093
    const/4 v11, 0x0

    #@55
    move v6, v5

    #@56
    .end local v5    # "bPtr":I
    .restart local v6    # "bPtr":I
    move v3, v2

    #@57
    .line 2094
    .end local v2    # "aPtr":I
    .restart local v3    # "aPtr":I
    goto :goto_0

    #@58
    .line 2097
    .end local v3    # "aPtr":I
    .end local v6    # "bPtr":I
    .restart local v2    # "aPtr":I
    .restart local v5    # "bPtr":I
    :cond_2
    if-lt v12, v8, :cond_3

    #@5a
    .line 2098
    const/4 v10, 0x0

    #@5b
    .line 2099
    const/4 v11, 0x1

    #@5c
    move v6, v5

    #@5d
    .end local v5    # "bPtr":I
    .restart local v6    # "bPtr":I
    move v3, v2

    #@5e
    .line 2100
    .end local v2    # "aPtr":I
    .restart local v3    # "aPtr":I
    goto :goto_0

    #@5f
    .line 2103
    .end local v3    # "aPtr":I
    .end local v6    # "bPtr":I
    .restart local v2    # "aPtr":I
    .restart local v5    # "bPtr":I
    :cond_3
    const/4 v14, 0x0

    #@60
    return v14

    #@61
    .line 2107
    .end local v5    # "bPtr":I
    .restart local v6    # "bPtr":I
    :cond_4
    const/4 v14, 0x1

    #@62
    return v14

    #@63
    :cond_5
    move v5, v6

    #@64
    .end local v6    # "bPtr":I
    .restart local v5    # "bPtr":I
    goto :goto_2

    #@65
    .end local v2    # "aPtr":I
    .end local v5    # "bPtr":I
    .restart local v3    # "aPtr":I
    .restart local v6    # "bPtr":I
    :cond_6
    move v2, v3

    #@66
    .end local v3    # "aPtr":I
    .restart local v2    # "aPtr":I
    goto :goto_1
.end method

.method public containsNone(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2141
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    #@5
    move-result v0

    #@6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v1

    #@a
    if-ne v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public containsNone(Ljava/lang/Iterable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4364
    .local p1, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "o$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/CharSequence;

    #@10
    .line 4365
    .local v0, "o":Ljava/lang/CharSequence;, "TT;"
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 4366
    const/4 v2, 0x0

    #@17
    return v2

    #@18
    .line 4369
    .end local v0    # "o":Ljava/lang/CharSequence;, "TT;"
    :cond_1
    const/4 v2, 0x1

    #@19
    return v2
.end method

.method public final containsSome(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 2153
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->containsNone(II)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public final containsSome(Landroid/icu/text/UnicodeSet;)Z
    .locals 1
    .param p1, "s"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 2164
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->containsNone(Landroid/icu/text/UnicodeSet;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public final containsSome(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2175
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->containsNone(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public final containsSome(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4377
    .local p1, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->containsNone(Ljava/lang/Iterable;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 2326
    if-nez p1, :cond_0

    #@4
    .line 2327
    return v6

    #@5
    .line 2329
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 2330
    return v7

    #@8
    .line 2333
    :cond_1
    :try_start_0
    move-object v0, p1

    #@9
    check-cast v0, Landroid/icu/text/UnicodeSet;

    #@b
    move-object v3, v0

    #@c
    .line 2334
    .local v3, "that":Landroid/icu/text/UnicodeSet;
    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@e
    iget v5, v3, Landroid/icu/text/UnicodeSet;->len:I

    #@10
    if-eq v4, v5, :cond_2

    #@12
    return v6

    #@13
    .line 2335
    :cond_2
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@16
    if-ge v2, v4, :cond_4

    #@18
    .line 2336
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@1a
    aget v4, v4, v2

    #@1c
    iget-object v5, v3, Landroid/icu/text/UnicodeSet;->list:[I

    #@1e
    aget v5, v5, v2

    #@20
    if-eq v4, v5, :cond_3

    #@22
    return v6

    #@23
    .line 2335
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 2338
    :cond_4
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@28
    iget-object v5, v3, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@2a
    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    move-result v4

    #@2e
    if-nez v4, :cond_5

    #@30
    return v6

    #@31
    .line 2339
    .end local v2    # "i":I
    .end local v3    # "that":Landroid/icu/text/UnicodeSet;
    :catch_0
    move-exception v1

    #@32
    .line 2340
    .local v1, "e":Ljava/lang/Exception;
    return v6

    #@33
    .line 2342
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    .restart local v3    # "that":Landroid/icu/text/UnicodeSet;
    :cond_5
    return v7
.end method

.method public findIn(Ljava/lang/CharSequence;IZ)I
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "findNot"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4645
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v1

    #@4
    if-ge p2, v1, :cond_0

    #@6
    .line 4646
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    #@9
    move-result v0

    #@a
    .line 4647
    .local v0, "cp":I
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@d
    move-result v1

    #@e
    if-eq v1, p3, :cond_1

    #@10
    .line 4651
    .end local v0    # "cp":I
    :cond_0
    return p2

    #@11
    .line 4645
    .restart local v0    # "cp":I
    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@14
    move-result v1

    #@15
    add-int/2addr p2, v1

    #@16
    goto :goto_0
.end method

.method public findLastIn(Ljava/lang/CharSequence;IZ)I
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "findNot"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4666
    add-int/lit8 p2, p2, -0x1

    #@2
    .line 4667
    :goto_0
    if-ltz p2, :cond_0

    #@4
    .line 4668
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    #@7
    move-result v0

    #@8
    .line 4669
    .local v0, "cp":I
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@b
    move-result v1

    #@c
    if-eq v1, p3, :cond_2

    #@e
    .line 4673
    .end local v0    # "cp":I
    :cond_0
    if-gez p2, :cond_1

    #@10
    const/4 p2, -0x1

    #@11
    .end local p2    # "fromIndex":I
    :cond_1
    return p2

    #@12
    .line 4667
    .restart local v0    # "cp":I
    .restart local p2    # "fromIndex":I
    :cond_2
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@15
    move-result v1

    #@16
    sub-int/2addr p2, v1

    #@17
    goto :goto_0
.end method

.method public freeze()Landroid/icu/text/UnicodeSet;
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3938
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_3

    #@7
    .line 3944
    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    #@9
    .line 3945
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@b
    array-length v4, v4

    #@c
    iget v5, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@e
    add-int/lit8 v5, v5, 0x10

    #@10
    if-le v4, v5, :cond_1

    #@12
    .line 3948
    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@14
    if-nez v4, :cond_0

    #@16
    const/4 v0, 0x1

    #@17
    .line 3949
    .local v0, "capacity":I
    :goto_0
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@19
    .line 3950
    .local v3, "oldList":[I
    new-array v4, v0, [I

    #@1b
    iput-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@1d
    .line 3951
    move v1, v0

    #@1e
    .local v1, "i":I
    move v2, v1

    #@1f
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    #@21
    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_1

    #@23
    .line 3952
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@25
    aget v5, v3, v1

    #@27
    aput v5, v4, v1

    #@29
    move v2, v1

    #@2a
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@2b
    .line 3948
    .end local v0    # "capacity":I
    .end local v2    # "i":I
    .end local v3    # "oldList":[I
    :cond_0
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@2d
    .restart local v0    # "capacity":I
    goto :goto_0

    #@2e
    .line 3957
    .end local v0    # "capacity":I
    :cond_1
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@30
    invoke-virtual {v4}, Ljava/util/TreeSet;->isEmpty()Z

    #@33
    move-result v4

    #@34
    if-nez v4, :cond_2

    #@36
    .line 3958
    new-instance v4, Landroid/icu/impl/UnicodeSetStringSpan;

    #@38
    new-instance v5, Ljava/util/ArrayList;

    #@3a
    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@3c
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@3f
    const/16 v6, 0x7f

    #@41
    invoke-direct {v4, p0, v5, v6}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    #@44
    iput-object v4, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@46
    .line 3960
    :cond_2
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@48
    if-eqz v4, :cond_4

    #@4a
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@4c
    invoke-virtual {v4}, Landroid/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_4

    #@52
    .line 3970
    :cond_3
    :goto_2
    return-object p0

    #@53
    .line 3967
    :cond_4
    new-instance v4, Landroid/icu/impl/BMPSet;

    #@55
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@57
    iget v6, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@59
    invoke-direct {v4, v5, v6}, Landroid/icu/impl/BMPSet;-><init>([II)V

    #@5c
    iput-object v4, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    #@5e
    goto :goto_2
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 3937
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getRangeCount()I
    .locals 1

    #@0
    .prologue
    .line 2268
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@2
    div-int/lit8 v0, v0, 0x2

    #@4
    return v0
.end method

.method public getRangeEnd(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 2294
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@2
    mul-int/lit8 v1, p1, 0x2

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    aget v0, v0, v1

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    return v0
.end method

.method public getRangeStart(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 2281
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@2
    mul-int/lit8 v1, p1, 0x2

    #@4
    aget v0, v0, v1

    #@6
    return v0
.end method

.method public getRegexEquivalent()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2018
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@4
    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 2019
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->toString()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    return-object v3

    #@f
    .line 2021
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    const-string/jumbo v3, "(?:"

    #@14
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    .line 2022
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, v5, v4}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    #@1a
    .line 2023
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@1c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v2

    #@20
    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_1

    #@26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Ljava/lang/String;

    #@2c
    .line 2024
    .local v1, "s":Ljava/lang/String;
    const/16 v3, 0x7c

    #@2e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 2025
    invoke-static {v0, v1, v5}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    #@34
    goto :goto_0

    #@35
    .line 2027
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, ")"

    #@38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    return-object v3
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 2353
    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@2
    .line 2354
    .local v1, "result":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 2355
    const v2, 0xf4243

    #@a
    mul-int/2addr v1, v2

    #@b
    .line 2356
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@d
    aget v2, v2, v0

    #@f
    add-int/2addr v1, v2

    #@10
    .line 2354
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 2358
    :cond_0
    return v1
.end method

.method public indexOf(I)I
    .locals 10
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1111
    if-ltz p1, :cond_0

    #@2
    const v5, 0x10ffff

    #@5
    if-le p1, v5, :cond_1

    #@7
    .line 1112
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v6, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v7, "Invalid code point U+"

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    int-to-long v8, p1

    #@16
    const/4 v7, 0x6

    #@17
    invoke-static {v8, v9, v7}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v5

    #@27
    .line 1114
    :cond_1
    const/4 v0, 0x0

    #@28
    .line 1115
    .local v0, "i":I
    const/4 v3, 0x0

    #@29
    .line 1117
    .local v3, "n":I
    :goto_0
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@2b
    add-int/lit8 v1, v0, 0x1

    #@2d
    .end local v0    # "i":I
    .local v1, "i":I
    aget v4, v5, v0

    #@2f
    .line 1118
    .local v4, "start":I
    if-ge p1, v4, :cond_2

    #@31
    .line 1119
    const/4 v5, -0x1

    #@32
    return v5

    #@33
    .line 1121
    :cond_2
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@35
    add-int/lit8 v0, v1, 0x1

    #@37
    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v2, v5, v1

    #@39
    .line 1122
    .local v2, "limit":I
    if-ge p1, v2, :cond_3

    #@3b
    .line 1123
    add-int v5, v3, p1

    #@3d
    sub-int/2addr v5, v4

    #@3e
    return v5

    #@3f
    .line 1125
    :cond_3
    sub-int v5, v2, v4

    #@41
    add-int/2addr v3, v5

    #@42
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 854
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@4
    if-ne v2, v0, :cond_0

    #@6
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@8
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3928
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4266
    new-instance v0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@5
    return-object v0
.end method

.method public matches(Landroid/icu/text/Replaceable;[IIZ)I
    .locals 10
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offset"    # [I
    .param p3, "limit"    # I
    .param p4, "incremental"    # Z

    #@0
    .prologue
    .line 910
    const/4 v8, 0x0

    #@1
    aget v8, p2, v8

    #@3
    if-ne v8, p3, :cond_2

    #@5
    .line 914
    const v8, 0xffff

    #@8
    invoke-virtual {p0, v8}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@b
    move-result v8

    #@c
    if-eqz v8, :cond_1

    #@e
    .line 915
    if-eqz p4, :cond_0

    #@10
    const/4 v8, 0x1

    #@11
    :goto_0
    return v8

    #@12
    :cond_0
    const/4 v8, 0x2

    #@13
    goto :goto_0

    #@14
    .line 917
    :cond_1
    const/4 v8, 0x0

    #@15
    return v8

    #@16
    .line 920
    :cond_2
    iget-object v8, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@18
    invoke-virtual {v8}, Ljava/util/TreeSet;->size()I

    #@1b
    move-result v8

    #@1c
    if-eqz v8, :cond_c

    #@1e
    .line 929
    const/4 v8, 0x0

    #@1f
    aget v8, p2, v8

    #@21
    if-ge v8, p3, :cond_5

    #@23
    const/4 v2, 0x1

    #@24
    .line 934
    .local v2, "forward":Z
    :goto_1
    const/4 v8, 0x0

    #@25
    aget v8, p2, v8

    #@27
    invoke-interface {p1, v8}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@2a
    move-result v1

    #@2b
    .line 938
    .local v1, "firstChar":C
    const/4 v3, 0x0

    #@2c
    .line 940
    .local v3, "highWaterLength":I
    iget-object v8, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@2e
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v7

    #@32
    .local v7, "trial$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v8

    #@36
    if-eqz v8, :cond_4

    #@38
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v6

    #@3c
    check-cast v6, Ljava/lang/String;

    #@3e
    .line 946
    .local v6, "trial":Ljava/lang/String;
    if-eqz v2, :cond_6

    #@40
    const/4 v8, 0x0

    #@41
    :goto_2
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@44
    move-result v0

    #@45
    .line 950
    .local v0, "c":C
    if-eqz v2, :cond_7

    #@47
    if-le v0, v1, :cond_7

    #@49
    .line 979
    .end local v0    # "c":C
    .end local v6    # "trial":Ljava/lang/String;
    :cond_4
    :goto_3
    if-eqz v3, :cond_c

    #@4b
    .line 980
    const/4 v8, 0x0

    #@4c
    aget v9, p2, v8

    #@4e
    if-eqz v2, :cond_b

    #@50
    .end local v3    # "highWaterLength":I
    :goto_4
    add-int/2addr v9, v3

    #@51
    aput v9, p2, v8

    #@53
    .line 981
    const/4 v8, 0x2

    #@54
    return v8

    #@55
    .line 929
    .end local v1    # "firstChar":C
    .end local v2    # "forward":Z
    .end local v7    # "trial$iterator":Ljava/util/Iterator;
    :cond_5
    const/4 v2, 0x0

    #@56
    .restart local v2    # "forward":Z
    goto :goto_1

    #@57
    .line 946
    .restart local v1    # "firstChar":C
    .restart local v3    # "highWaterLength":I
    .restart local v6    # "trial":Ljava/lang/String;
    .restart local v7    # "trial$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@5a
    move-result v8

    #@5b
    add-int/lit8 v8, v8, -0x1

    #@5d
    goto :goto_2

    #@5e
    .line 951
    .restart local v0    # "c":C
    :cond_7
    if-ne v0, v1, :cond_3

    #@60
    .line 953
    const/4 v8, 0x0

    #@61
    aget v8, p2, v8

    #@63
    invoke-static {p1, v8, p3, v6}, Landroid/icu/text/UnicodeSet;->matchRest(Landroid/icu/text/Replaceable;IILjava/lang/String;)I

    #@66
    move-result v4

    #@67
    .line 955
    .local v4, "length":I
    if-eqz p4, :cond_9

    #@69
    .line 956
    if-eqz v2, :cond_8

    #@6b
    const/4 v8, 0x0

    #@6c
    aget v8, p2, v8

    #@6e
    sub-int v5, p3, v8

    #@70
    .line 957
    .local v5, "maxLen":I
    :goto_5
    if-ne v4, v5, :cond_9

    #@72
    .line 959
    const/4 v8, 0x1

    #@73
    return v8

    #@74
    .line 956
    .end local v5    # "maxLen":I
    :cond_8
    const/4 v8, 0x0

    #@75
    aget v8, p2, v8

    #@77
    sub-int v5, v8, p3

    #@79
    .restart local v5    # "maxLen":I
    goto :goto_5

    #@7a
    .line 963
    .end local v5    # "maxLen":I
    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@7d
    move-result v8

    #@7e
    if-ne v4, v8, :cond_3

    #@80
    .line 965
    if-le v4, v3, :cond_a

    #@82
    .line 966
    move v3, v4

    #@83
    .line 970
    :cond_a
    if-eqz v2, :cond_3

    #@85
    if-ge v4, v3, :cond_3

    #@87
    goto :goto_3

    #@88
    .line 980
    .end local v0    # "c":C
    .end local v4    # "length":I
    .end local v6    # "trial":Ljava/lang/String;
    :cond_b
    neg-int v3, v3

    #@89
    goto :goto_4

    #@8a
    .line 984
    .end local v1    # "firstChar":C
    .end local v2    # "forward":Z
    .end local v3    # "highWaterLength":I
    .end local v7    # "trial$iterator":Ljava/util/Iterator;
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeFilter;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    #@8d
    move-result v8

    #@8e
    return v8
.end method

.method public matchesAt(Ljava/lang/CharSequence;I)I
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1036
    const/4 v4, -0x1

    #@2
    .line 1038
    .local v4, "lastLen":I
    iget-object v7, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@4
    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    #@7
    move-result v7

    #@8
    if-eqz v7, :cond_1

    #@a
    .line 1039
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@d
    move-result v1

    #@e
    .line 1040
    .local v1, "firstChar":C
    const/4 v6, 0x0

    #@f
    .line 1042
    .local v6, "trial":Ljava/lang/String;
    iget-object v7, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@11
    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v3

    #@15
    .line 1043
    .end local v6    # "trial":Ljava/lang/String;
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v7

    #@19
    if-eqz v7, :cond_4

    #@1b
    .line 1044
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Ljava/lang/String;

    #@21
    .line 1045
    .local v6, "trial":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v2

    #@25
    .line 1046
    .local v2, "firstStringChar":C
    if-lt v2, v1, :cond_0

    #@27
    .line 1047
    if-le v2, v1, :cond_0

    #@29
    .line 1060
    .end local v1    # "firstChar":C
    .end local v2    # "firstStringChar":C
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "trial":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v7, 0x2

    #@2a
    if-ge v4, v7, :cond_2

    #@2c
    .line 1061
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    #@2f
    move-result v0

    #@30
    .line 1062
    .local v0, "cp":I
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_2

    #@36
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@39
    move-result v4

    #@3a
    .line 1065
    .end local v0    # "cp":I
    :cond_2
    add-int v7, p2, v4

    #@3c
    return v7

    #@3d
    .line 1056
    .restart local v1    # "firstChar":C
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v5, "tempLen":I
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v6

    #@41
    check-cast v6, Ljava/lang/String;

    #@43
    .line 1052
    .end local v5    # "tempLen":I
    :cond_4
    invoke-static {p1, p2, v6}, Landroid/icu/text/UnicodeSet;->matchesAt(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)I

    #@46
    move-result v5

    #@47
    .line 1053
    .restart local v5    # "tempLen":I
    if-gt v4, v5, :cond_1

    #@49
    .line 1054
    move v4, v5

    #@4a
    .line 1055
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v7

    #@4e
    if-nez v7, :cond_3

    #@50
    goto :goto_0
.end method

.method public matchesIndexValue(I)Z
    .locals 10
    .param p1, "v"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 873
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    #@6
    move-result v6

    #@7
    if-ge v2, v6, :cond_3

    #@9
    .line 874
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    #@c
    move-result v3

    #@d
    .line 875
    .local v3, "low":I
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    #@10
    move-result v1

    #@11
    .line 876
    .local v1, "high":I
    and-int/lit16 v6, v3, -0x100

    #@13
    and-int/lit16 v7, v1, -0x100

    #@15
    if-ne v6, v7, :cond_0

    #@17
    .line 877
    and-int/lit16 v6, v3, 0xff

    #@19
    if-gt v6, p1, :cond_2

    #@1b
    and-int/lit16 v6, v1, 0xff

    #@1d
    if-gt p1, v6, :cond_2

    #@1f
    .line 878
    return v9

    #@20
    .line 880
    :cond_0
    and-int/lit16 v6, v3, 0xff

    #@22
    if-le v6, p1, :cond_1

    #@24
    and-int/lit16 v6, v1, 0xff

    #@26
    if-gt p1, v6, :cond_2

    #@28
    .line 881
    :cond_1
    return v9

    #@29
    .line 873
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 884
    .end local v1    # "high":I
    .end local v3    # "low":I
    :cond_3
    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@2e
    invoke-virtual {v6}, Ljava/util/TreeSet;->size()I

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_5

    #@34
    .line 885
    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@36
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v5

    #@3a
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v6

    #@3e
    if-eqz v6, :cond_5

    #@40
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Ljava/lang/String;

    #@46
    .line 891
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4, v8}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@49
    move-result v0

    #@4a
    .line 892
    .local v0, "c":I
    and-int/lit16 v6, v0, 0xff

    #@4c
    if-ne v6, p1, :cond_4

    #@4e
    .line 893
    return v9

    #@4f
    .line 897
    .end local v0    # "c":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :cond_5
    return v8
.end method

.method public ranges()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/icu/text/UnicodeSet$EntryRange;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4227
    new-instance v0, Landroid/icu/text/UnicodeSet$EntryRangeIterable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/icu/text/UnicodeSet$EntryRangeIterable;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$EntryRangeIterable;)V

    #@6
    return-object v0
.end method

.method public final remove(I)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1550
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove(II)Landroid/icu/text/UnicodeSet;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const v0, 0x10ffff

    #@3
    const/4 v4, 0x6

    #@4
    const/4 v1, 0x2

    #@5
    .line 1528
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@8
    .line 1529
    if-ltz p1, :cond_0

    #@a
    if-le p1, v0, :cond_1

    #@c
    .line 1530
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Invalid code point U+"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    int-to-long v2, p1

    #@1b
    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 1532
    :cond_1
    if-ltz p2, :cond_2

    #@2d
    if-le p2, v0, :cond_3

    #@2f
    .line 1533
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@31
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v2, "Invalid code point U+"

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    int-to-long v2, p2

    #@3e
    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0

    #@4e
    .line 1535
    :cond_3
    if-gt p1, p2, :cond_4

    #@50
    .line 1536
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    #@53
    move-result-object v0

    #@54
    invoke-direct {p0, v0, v1, v1}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    #@57
    .line 1538
    :cond_4
    return-object p0
.end method

.method public final remove(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1562
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    #@3
    move-result v0

    #@4
    .line 1563
    .local v0, "cp":I
    if-gez v0, :cond_0

    #@6
    .line 1564
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    #@f
    .line 1565
    const/4 v1, 0x0

    #@10
    iput-object v1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@12
    .line 1569
    :goto_0
    return-object p0

    #@13
    .line 1567
    :cond_0
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    #@16
    goto :goto_0
.end method

.method public removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .param p1, "c"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 2224
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 2225
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    #@5
    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    #@7
    const/4 v2, 0x2

    #@8
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    #@b
    .line 2226
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@d
    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    #@12
    .line 2227
    return-object p0
.end method

.method public final removeAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1410
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public removeAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    #@0
    .prologue
    .line 4399
    .local p1, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 4400
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "o$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/CharSequence;

    #@13
    .line 4401
    .local v0, "o":Ljava/lang/CharSequence;, "TT;"
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->remove(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@16
    goto :goto_0

    #@17
    .line 4403
    .end local v0    # "o":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    return-object p0
.end method

.method public final removeAllStrings()Landroid/icu/text/UnicodeSet;
    .locals 1

    #@0
    .prologue
    .line 1419
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 1420
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@5
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1421
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@d
    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    #@10
    .line 1422
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@13
    .line 1424
    :cond_0
    return-object p0
.end method

.method public final retain(I)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1486
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UnicodeSet;->retain(II)Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public retain(II)Landroid/icu/text/UnicodeSet;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const v0, 0x10ffff

    #@3
    const/4 v4, 0x6

    #@4
    const/4 v2, 0x0

    #@5
    .line 1462
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@8
    .line 1463
    if-ltz p1, :cond_0

    #@a
    if-le p1, v0, :cond_1

    #@c
    .line 1464
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Invalid code point U+"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    int-to-long v2, p1

    #@1b
    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 1466
    :cond_1
    if-ltz p2, :cond_2

    #@2d
    if-le p2, v0, :cond_3

    #@2f
    .line 1467
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@31
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v2, "Invalid code point U+"

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    int-to-long v2, p2

    #@3e
    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0

    #@4e
    .line 1469
    :cond_3
    if-gt p1, p2, :cond_4

    #@50
    .line 1470
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    #@53
    move-result-object v0

    #@54
    const/4 v1, 0x2

    #@55
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    #@58
    .line 1474
    :goto_0
    return-object p0

    #@59
    .line 1472
    :cond_4
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@5c
    goto :goto_0
.end method

.method public final retain(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 5
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1499
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    #@3
    move-result v0

    #@4
    .line 1500
    .local v0, "cp":I
    if-gez v0, :cond_1

    #@6
    .line 1501
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 1502
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@c
    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    .line 1503
    .local v1, "isIn":Z
    if-eqz v1, :cond_0

    #@12
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    #@15
    move-result v3

    #@16
    const/4 v4, 0x1

    #@17
    if-ne v3, v4, :cond_0

    #@19
    .line 1504
    return-object p0

    #@1a
    .line 1506
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@1d
    .line 1507
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@1f
    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@22
    .line 1508
    const/4 v3, 0x0

    #@23
    iput-object v3, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@25
    .line 1512
    .end local v1    # "isIn":Z
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    #@26
    .line 1510
    :cond_1
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->retain(II)Landroid/icu/text/UnicodeSet;

    #@29
    goto :goto_0
.end method

.method public retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .param p1, "c"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 2207
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 2208
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    #@5
    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    #@b
    .line 2209
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@d
    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->retainAll(Ljava/util/Collection;)Z

    #@12
    .line 2210
    return-object p0
.end method

.method public final retainAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1388
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public retainAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    #@0
    .prologue
    .line 4411
    .local p1, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 4413
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@5
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@8
    .line 4414
    .local v0, "toRetain":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;

    #@b
    .line 4415
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@e
    .line 4416
    return-object p0
.end method

.method public set(II)Landroid/icu/text/UnicodeSet;
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 527
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 528
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@6
    .line 529
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    #@9
    .line 530
    return-object p0
.end method

.method public set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 2
    .param p1, "other"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 540
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    #@3
    .line 541
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [I

    #@b
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    #@d
    .line 542
    iget v0, p1, Landroid/icu/text/UnicodeSet;->len:I

    #@f
    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    #@11
    .line 543
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@13
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@15
    .line 544
    new-instance v0, Ljava/util/TreeSet;

    #@17
    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@19
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    #@1c
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@1e
    .line 545
    return-object p0
.end method

.method public size()I
    .locals 5

    #@0
    .prologue
    .line 839
    const/4 v2, 0x0

    #@1
    .line 840
    .local v2, "n":I
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    #@4
    move-result v0

    #@5
    .line 841
    .local v0, "count":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@8
    .line 842
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    #@b
    move-result v3

    #@c
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    #@f
    move-result v4

    #@10
    sub-int/2addr v3, v4

    #@11
    add-int/lit8 v3, v3, 0x1

    #@13
    add-int/2addr v2, v3

    #@14
    .line 841
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 844
    :cond_0
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@19
    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    #@1c
    move-result v3

    #@1d
    add-int/2addr v3, v2

    #@1e
    return v3
.end method

.method public span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3997
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v0

    #@5
    .line 3998
    .local v0, "end":I
    if-gez p2, :cond_1

    #@7
    .line 3999
    const/4 p2, 0x0

    #@8
    .line 4003
    :cond_0
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    #@a
    if-eqz v3, :cond_2

    #@c
    .line 4005
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    #@e
    invoke-virtual {v3, p1, p2, p3, v5}, Landroid/icu/impl/BMPSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    #@11
    move-result v3

    #@12
    return v3

    #@13
    .line 4000
    :cond_1
    if-lt p2, v0, :cond_0

    #@15
    .line 4001
    return v0

    #@16
    .line 4007
    :cond_2
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@18
    if-eqz v3, :cond_3

    #@1a
    .line 4008
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@1c
    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@1f
    move-result v3

    #@20
    return v3

    #@21
    .line 4009
    :cond_3
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@23
    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_5

    #@29
    .line 4010
    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2b
    if-ne p3, v3, :cond_4

    #@2d
    const/16 v2, 0x21

    #@2f
    .line 4012
    .local v2, "which":I
    :goto_0
    new-instance v1, Landroid/icu/impl/UnicodeSetStringSpan;

    #@31
    new-instance v3, Ljava/util/ArrayList;

    #@33
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@35
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@38
    invoke-direct {v1, p0, v3, v2}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    #@3b
    .line 4013
    .local v1, "strSpan":Landroid/icu/impl/UnicodeSetStringSpan;
    invoke-virtual {v1}, Landroid/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_5

    #@41
    .line 4014
    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@44
    move-result v3

    #@45
    return v3

    #@46
    .line 4011
    .end local v1    # "strSpan":Landroid/icu/impl/UnicodeSetStringSpan;
    .end local v2    # "which":I
    :cond_4
    const/16 v2, 0x22

    #@48
    .restart local v2    # "which":I
    goto :goto_0

    #@49
    .line 4018
    .end local v2    # "which":I
    :cond_5
    invoke-direct {p0, p1, p2, p3, v5}, Landroid/icu/text/UnicodeSet;->spanCodePointsAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    #@4c
    move-result v3

    #@4d
    return v3
.end method

.method public span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    #@0
    .prologue
    .line 3982
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;
    .param p4, "outCount"    # Landroid/icu/util/OutputInt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4031
    if-nez p4, :cond_0

    #@2
    .line 4032
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "outCount must not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 4034
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@e
    move-result v0

    #@f
    .line 4035
    .local v0, "end":I
    if-gez p2, :cond_2

    #@11
    .line 4036
    const/4 p2, 0x0

    #@12
    .line 4040
    :cond_1
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@14
    if-eqz v3, :cond_3

    #@16
    .line 4043
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@18
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    #@1b
    move-result v3

    #@1c
    return v3

    #@1d
    .line 4037
    :cond_2
    if-lt p2, v0, :cond_1

    #@1f
    .line 4038
    return v0

    #@20
    .line 4044
    :cond_3
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    #@22
    if-eqz v3, :cond_4

    #@24
    .line 4045
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    #@26
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/icu/impl/BMPSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    #@29
    move-result v3

    #@2a
    return v3

    #@2b
    .line 4046
    :cond_4
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@2d
    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_6

    #@33
    .line 4047
    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@35
    if-ne p3, v3, :cond_5

    #@37
    const/16 v2, 0x21

    #@39
    .line 4049
    .local v2, "which":I
    :goto_0
    or-int/lit8 v2, v2, 0x40

    #@3b
    .line 4050
    new-instance v1, Landroid/icu/impl/UnicodeSetStringSpan;

    #@3d
    new-instance v3, Ljava/util/ArrayList;

    #@3f
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@41
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@44
    invoke-direct {v1, p0, v3, v2}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    #@47
    .line 4051
    .local v1, "strSpan":Landroid/icu/impl/UnicodeSetStringSpan;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    #@4a
    move-result v3

    #@4b
    return v3

    #@4c
    .line 4048
    .end local v1    # "strSpan":Landroid/icu/impl/UnicodeSetStringSpan;
    .end local v2    # "which":I
    :cond_5
    const/16 v2, 0x22

    #@4e
    .restart local v2    # "which":I
    goto :goto_0

    #@4f
    .line 4054
    .end local v2    # "which":I
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeSet;->spanCodePointsAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    #@52
    move-result v3

    #@53
    return v3
.end method

.method public spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4102
    if-gtz p2, :cond_0

    #@3
    .line 4103
    return v5

    #@4
    .line 4105
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v5

    #@8
    if-le p2, v5, :cond_1

    #@a
    .line 4106
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@d
    move-result p2

    #@e
    .line 4108
    :cond_1
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    #@10
    if-eqz v5, :cond_2

    #@12
    .line 4110
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    #@14
    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/impl/BMPSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@17
    move-result v5

    #@18
    return v5

    #@19
    .line 4112
    :cond_2
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@1b
    if-eqz v5, :cond_3

    #@1d
    .line 4113
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    #@1f
    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@22
    move-result v5

    #@23
    return v5

    #@24
    .line 4114
    :cond_3
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@26
    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    #@29
    move-result v5

    #@2a
    if-nez v5, :cond_5

    #@2c
    .line 4115
    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2e
    if-ne p3, v5, :cond_4

    #@30
    .line 4116
    const/16 v4, 0x11

    #@32
    .line 4118
    .local v4, "which":I
    :goto_0
    new-instance v3, Landroid/icu/impl/UnicodeSetStringSpan;

    #@34
    new-instance v5, Ljava/util/ArrayList;

    #@36
    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@38
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@3b
    invoke-direct {v3, p0, v5, v4}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    #@3e
    .line 4119
    .local v3, "strSpan":Landroid/icu/impl/UnicodeSetStringSpan;
    invoke-virtual {v3}, Landroid/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_5

    #@44
    .line 4120
    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@47
    move-result v5

    #@48
    return v5

    #@49
    .line 4117
    .end local v3    # "strSpan":Landroid/icu/impl/UnicodeSetStringSpan;
    .end local v4    # "which":I
    :cond_4
    const/16 v4, 0x12

    #@4b
    .restart local v4    # "which":I
    goto :goto_0

    #@4c
    .line 4125
    .end local v4    # "which":I
    :cond_5
    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@4e
    if-eq p3, v5, :cond_7

    #@50
    const/4 v2, 0x1

    #@51
    .line 4128
    .local v2, "spanContained":Z
    :goto_1
    move v1, p2

    #@52
    .line 4130
    .local v1, "prev":I
    :goto_2
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@55
    move-result v0

    #@56
    .line 4131
    .local v0, "c":I
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@59
    move-result v5

    #@5a
    if-eq v2, v5, :cond_8

    #@5c
    .line 4136
    :cond_6
    return v1

    #@5d
    .line 4125
    .end local v0    # "c":I
    .end local v1    # "prev":I
    .end local v2    # "spanContained":Z
    :cond_7
    const/4 v2, 0x0

    #@5e
    .restart local v2    # "spanContained":Z
    goto :goto_1

    #@5f
    .line 4134
    .restart local v0    # "c":I
    .restart local v1    # "prev":I
    :cond_8
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@62
    move-result v5

    #@63
    sub-int/2addr v1, v5

    #@64
    .line 4135
    if-lez v1, :cond_6

    #@66
    goto :goto_2
.end method

.method public spanBack(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    #@0
    .prologue
    .line 4087
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public strings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4601
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public stripFrom(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "matches"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4686
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 4687
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@6
    .local v1, "pos":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v3

    #@a
    if-ge v1, v3, :cond_1

    #@c
    .line 4688
    if-eqz p2, :cond_0

    #@e
    const/4 v3, 0x0

    #@f
    :goto_1
    invoke-virtual {p0, p1, v1, v3}, Landroid/icu/text/UnicodeSet;->findIn(Ljava/lang/CharSequence;IZ)I

    #@12
    move-result v0

    #@13
    .line 4689
    .local v0, "inside":I
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1a
    .line 4690
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/text/UnicodeSet;->findIn(Ljava/lang/CharSequence;IZ)I

    #@1d
    move-result v1

    #@1e
    goto :goto_0

    #@1f
    .line 4688
    .end local v0    # "inside":I
    :cond_0
    const/4 v3, 0x1

    #@20
    goto :goto_1

    #@21
    .line 4692
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    return-object v3
.end method

.method public toPattern(Z)Ljava/lang/String;
    .locals 2
    .param p1, "escapeUnprintable"    # Z

    #@0
    .prologue
    .line 695
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    if-eqz p1, :cond_1

    #@6
    .line 698
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 699
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p1}, Landroid/icu/text/UnicodeSet;->_toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/StringBuilder;

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 696
    .end local v0    # "result":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    #@18
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2366
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
