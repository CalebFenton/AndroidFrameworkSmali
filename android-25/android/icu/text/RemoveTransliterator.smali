.class Landroid/icu/text/RemoveTransliterator;
.super Landroid/icu/text/Transliterator;
.source "RemoveTransliterator.java"


# static fields
.field private static final _ID:Ljava/lang/String; = "Any-Remove"


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, "Any-Remove"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@7
    .line 37
    return-void
.end method

.method static register()V
    .locals 3

    #@0
    .prologue
    .line 26
    const-string/jumbo v0, "Any-Remove"

    #@3
    new-instance v1, Landroid/icu/text/RemoveTransliterator$1;

    #@5
    invoke-direct {v1}, Landroid/icu/text/RemoveTransliterator$1;-><init>()V

    #@8
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@b
    .line 31
    const-string/jumbo v0, "Remove"

    #@e
    const-string/jumbo v1, "Null"

    #@11
    const/4 v2, 0x0

    #@12
    invoke-static {v0, v1, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    #@15
    .line 25
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v0

    #@4
    .line 61
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@7
    .line 58
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 4
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    #@0
    .prologue
    .line 48
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@2
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@4
    const-string/jumbo v3, ""

    #@7
    invoke-interface {p1, v1, v2, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@a
    .line 49
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@c
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@e
    sub-int v0, v1, v2

    #@10
    .line 50
    .local v0, "len":I
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@12
    sub-int/2addr v1, v0

    #@13
    iput v1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@15
    .line 51
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@17
    sub-int/2addr v1, v0

    #@18
    iput v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@1a
    .line 45
    return-void
.end method
