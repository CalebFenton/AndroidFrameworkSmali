.class Landroid/icu/text/FunctionReplacer;
.super Ljava/lang/Object;
.source "FunctionReplacer.java"

# interfaces
.implements Landroid/icu/text/UnicodeReplacer;


# instance fields
.field private blacklist replacer:Landroid/icu/text/UnicodeReplacer;

.field private blacklist translit:Landroid/icu/text/Transliterator;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeReplacer;)V
    .registers 3
    .param p1, "theTranslit"    # Landroid/icu/text/Transliterator;
    .param p2, "theReplacer"    # Landroid/icu/text/UnicodeReplacer;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    .line 44
    iput-object p2, p0, Landroid/icu/text/FunctionReplacer;->replacer:Landroid/icu/text/UnicodeReplacer;

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "toUnionTo"    # Landroid/icu/text/UnicodeSet;

    .line 86
    iget-object v0, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    invoke-virtual {v0}, Landroid/icu/text/Transliterator;->getTargetSet()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 87
    return-void
.end method

.method public blacklist replace(Landroid/icu/text/Replaceable;II[I)I
    .registers 7
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "cursor"    # [I

    .line 57
    iget-object v0, p0, Landroid/icu/text/FunctionReplacer;->replacer:Landroid/icu/text/UnicodeReplacer;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeReplacer;->replace(Landroid/icu/text/Replaceable;II[I)I

    move-result v0

    .line 58
    .local v0, "len":I
    add-int p3, p2, v0

    .line 61
    iget-object v1, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;II)I

    move-result p3

    .line 63
    sub-int v1, p3, p2

    return v1
.end method

.method public blacklist toReplacerPattern(Z)Ljava/lang/String;
    .registers 4
    .param p1, "escapeUnprintable"    # Z

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "rule":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    invoke-virtual {v1}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Landroid/icu/text/FunctionReplacer;->replacer:Landroid/icu/text/UnicodeReplacer;

    invoke-interface {v1, p1}, Landroid/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
