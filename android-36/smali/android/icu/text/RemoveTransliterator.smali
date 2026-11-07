.class Landroid/icu/text/RemoveTransliterator;
.super Landroid/icu/text/Transliterator;
.source "RemoveTransliterator.java"


# static fields
.field private static final blacklist _ID:Ljava/lang/String; = "Any-Remove"


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 41
    const-string v0, "Any-Remove"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 42
    return-void
.end method

.method static blacklist register()V
    .registers 3

    .line 28
    new-instance v0, Landroid/icu/text/RemoveTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/RemoveTransliterator$1;-><init>()V

    const-string v1, "Any-Remove"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 34
    const-string v0, "Null"

    const/4 v1, 0x0

    const-string v2, "Remove"

    invoke-static {v2, v0, v1}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 5
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 64
    invoke-virtual {p0, p1}, Landroid/icu/text/RemoveTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 65
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 67
    return-void
.end method

.method protected blacklist handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 7
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    .line 52
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 53
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    sub-int/2addr v0, v1

    .line 54
    .local v0, "len":I
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 55
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 56
    return-void
.end method
