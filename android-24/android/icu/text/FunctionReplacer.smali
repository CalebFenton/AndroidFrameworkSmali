.class Landroid/icu/text/FunctionReplacer;
.super Ljava/lang/Object;
.source "FunctionReplacer.java"

# interfaces
.implements Landroid/icu/text/UnicodeReplacer;


# instance fields
.field private replacer:Landroid/icu/text/UnicodeReplacer;

.field private translit:Landroid/icu/text/Transliterator;


# direct methods
.method public constructor <init>(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeReplacer;)V
    .locals 0
    .param p1, "theTranslit"    # Landroid/icu/text/Transliterator;
    .param p2, "theReplacer"    # Landroid/icu/text/UnicodeReplacer;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    #@5
    .line 42
    iput-object p2, p0, Landroid/icu/text/FunctionReplacer;->replacer:Landroid/icu/text/UnicodeReplacer;

    #@7
    .line 40
    return-void
.end method


# virtual methods
.method public addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "toUnionTo"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/Transliterator;->getTargetSet()Landroid/icu/text/UnicodeSet;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@9
    .line 80
    return-void
.end method

.method public replace(Landroid/icu/text/Replaceable;II[I)I
    .locals 2
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "cursor"    # [I

    #@0
    .prologue
    .line 54
    iget-object v1, p0, Landroid/icu/text/FunctionReplacer;->replacer:Landroid/icu/text/UnicodeReplacer;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/icu/text/UnicodeReplacer;->replace(Landroid/icu/text/Replaceable;II[I)I

    #@5
    move-result v0

    #@6
    .line 55
    .local v0, "len":I
    add-int p3, p2, v0

    #@8
    .line 58
    iget-object v1, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    #@a
    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;II)I

    #@d
    move-result p3

    #@e
    .line 60
    sub-int v1, p3, p2

    #@10
    return v1
.end method

.method public toReplacerPattern(Z)Ljava/lang/String;
    .locals 2
    .param p1, "escapeUnprintable"    # Z

    #@0
    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "&"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 68
    .local v0, "rule":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    #@a
    invoke-virtual {v1}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 69
    const-string/jumbo v1, "( "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 70
    iget-object v1, p0, Landroid/icu/text/FunctionReplacer;->replacer:Landroid/icu/text/UnicodeReplacer;

    #@19
    invoke-interface {v1, p1}, Landroid/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 71
    const-string/jumbo v1, " )"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method
