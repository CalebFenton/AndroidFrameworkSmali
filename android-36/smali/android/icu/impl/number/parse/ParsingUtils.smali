.class public Landroid/icu/impl/number/parse/ParsingUtils;
.super Ljava/lang/Object;
.source "ParsingUtils.java"


# static fields
.field public static final blacklist PARSE_FLAG_ALLOW_INFINITE_RECURSION:I = 0x4000

.field public static final blacklist PARSE_FLAG_EXACT_AFFIX:I = 0x200

.field public static final blacklist PARSE_FLAG_FORCE_BIG_DECIMAL:I = 0x1000

.field public static final blacklist PARSE_FLAG_GROUPING_DISABLED:I = 0x20

.field public static final blacklist PARSE_FLAG_IGNORE_CASE:I = 0x1

.field public static final blacklist PARSE_FLAG_INCLUDE_UNPAIRED_AFFIXES:I = 0x80

.field public static final blacklist PARSE_FLAG_INTEGER_ONLY:I = 0x10

.field public static final blacklist PARSE_FLAG_JAVA_COMPATIBILITY_IGNORABLES:I = 0x10000

.field public static final blacklist PARSE_FLAG_MONETARY_SEPARATORS:I = 0x2

.field public static final blacklist PARSE_FLAG_NO_FOREIGN_CURRENCIES:I = 0x2000

.field public static final blacklist PARSE_FLAG_PLUS_SIGN_ALLOWED:I = 0x400

.field public static final blacklist PARSE_FLAG_STRICT_GROUPING_SIZE:I = 0x8

.field public static final blacklist PARSE_FLAG_STRICT_IGNORABLES:I = 0x8000

.field public static final blacklist PARSE_FLAG_STRICT_SEPARATORS:I = 0x4

.field public static final blacklist PARSE_FLAG_USE_FULL_AFFIXES:I = 0x100


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist putLeadCodePoint(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "output"    # Landroid/icu/text/UnicodeSet;

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 48
    :cond_e
    return-void
.end method

.method public static blacklist putLeadCodePoints(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 6
    .param p0, "input"    # Landroid/icu/text/UnicodeSet;
    .param p1, "output"    # Landroid/icu/text/UnicodeSet;

    .line 34
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->ranges()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UnicodeSet$EntryRange;

    .line 35
    .local v1, "range":Landroid/icu/text/UnicodeSet$EntryRange;
    iget v2, v1, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    iget v3, v1, Landroid/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    invoke-virtual {p1, v2, v3}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 36
    .end local v1    # "range":Landroid/icu/text/UnicodeSet$EntryRange;
    goto :goto_8

    .line 37
    :cond_1c
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->strings()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 39
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 41
    .end local v1    # "str":Ljava/lang/String;
    :cond_3e
    goto :goto_24

    .line 42
    :cond_3f
    return-void
.end method
