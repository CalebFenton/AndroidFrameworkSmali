.class Landroid/icu/text/EscapeTransliterator;
.super Landroid/icu/text/Transliterator;
.source "EscapeTransliterator.java"


# instance fields
.field private blacklist grokSupplementals:Z

.field private blacklist minDigits:I

.field private blacklist prefix:Ljava/lang/String;

.field private blacklist radix:I

.field private blacklist suffix:Ljava/lang/String;

.field private blacklist supplementalHandler:Landroid/icu/text/EscapeTransliterator;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/icu/text/EscapeTransliterator;)V
    .registers 9
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "radix"    # I
    .param p5, "minDigits"    # I
    .param p6, "grokSupplementals"    # Z
    .param p7, "supplementalHandler"    # Landroid/icu/text/EscapeTransliterator;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 167
    iput-object p2, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    .line 169
    iput p4, p0, Landroid/icu/text/EscapeTransliterator;->radix:I

    .line 170
    iput p5, p0, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    .line 171
    iput-boolean p6, p0, Landroid/icu/text/EscapeTransliterator;->grokSupplementals:Z

    .line 172
    iput-object p7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    .line 173
    return-void
.end method

.method static blacklist register()V
    .registers 2

    .line 85
    new-instance v0, Landroid/icu/text/EscapeTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$1;-><init>()V

    const-string v1, "Any-Hex/Unicode"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 94
    new-instance v0, Landroid/icu/text/EscapeTransliterator$2;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$2;-><init>()V

    const-string v1, "Any-Hex/Java"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 103
    new-instance v0, Landroid/icu/text/EscapeTransliterator$3;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$3;-><init>()V

    const-string v1, "Any-Hex/C"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 113
    new-instance v0, Landroid/icu/text/EscapeTransliterator$4;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$4;-><init>()V

    const-string v1, "Any-Hex/XML"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 122
    new-instance v0, Landroid/icu/text/EscapeTransliterator$5;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$5;-><init>()V

    const-string v1, "Any-Hex/XML10"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 131
    new-instance v0, Landroid/icu/text/EscapeTransliterator$6;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$6;-><init>()V

    const-string v1, "Any-Hex/Perl"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 140
    new-instance v0, Landroid/icu/text/EscapeTransliterator$7;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$7;-><init>()V

    const-string v1, "Any-Hex/Plain"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 149
    new-instance v0, Landroid/icu/text/EscapeTransliterator$8;

    invoke-direct {v0}, Landroid/icu/text/EscapeTransliterator$8;-><init>()V

    const-string v1, "Any-Hex"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 156
    return-void
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 9
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 226
    invoke-virtual {p0, p1}, Landroid/icu/text/EscapeTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 227
    move-object v0, p0

    .local v0, "it":Landroid/icu/text/EscapeTransliterator;
    :goto_8
    if-eqz v0, :cond_38

    .line 228
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v1

    if-eqz v1, :cond_35

    .line 229
    iget-object v1, v0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 230
    iget-object v1, v0, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    iget v3, v0, Landroid/icu/text/EscapeTransliterator;->radix:I

    if-ge v2, v3, :cond_2e

    .line 233
    iget v3, v0, Landroid/icu/text/EscapeTransliterator;->radix:I

    iget v4, v0, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    invoke-static {v1, v2, v3, v4}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 235
    .end local v2    # "i":I
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 227
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    :cond_35
    iget-object v0, v0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    goto :goto_8

    .line 238
    .end local v0    # "it":Landroid/icu/text/EscapeTransliterator;
    :cond_38
    return-void
.end method

.method protected blacklist handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 13
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    .line 181
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 182
    .local v0, "start":I
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 184
    .local v1, "limit":I
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 186
    .local v3, "prefixLen":I
    const/4 v4, 0x0

    .line 188
    .local v4, "redoPrefix":Z
    :goto_12
    if-ge v0, v1, :cond_83

    .line 189
    iget-boolean v5, p0, Landroid/icu/text/EscapeTransliterator;->grokSupplementals:Z

    if-eqz v5, :cond_1d

    invoke-interface {p1, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v5

    goto :goto_21

    :cond_1d
    invoke-interface {p1, v0}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v5

    .line 190
    .local v5, "c":I
    :goto_21
    iget-boolean v6, p0, Landroid/icu/text/EscapeTransliterator;->grokSupplementals:Z

    if-eqz v6, :cond_2a

    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    goto :goto_2b

    :cond_2a
    const/4 v6, 0x1

    .line 192
    .local v6, "charLen":I
    :goto_2b
    const/high16 v7, -0x10000

    and-int/2addr v7, v5

    const/4 v8, 0x0

    if-eqz v7, :cond_53

    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    if-eqz v7, :cond_53

    .line 193
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 194
    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    iget-object v7, v7, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    iget v7, v7, Landroid/icu/text/EscapeTransliterator;->radix:I

    iget-object v8, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    iget v8, v8, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    invoke-static {v2, v5, v7, v8}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    .line 197
    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    iget-object v7, v7, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const/4 v4, 0x1

    goto :goto_6e

    .line 200
    :cond_53
    if-eqz v4, :cond_5f

    .line 201
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 202
    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const/4 v4, 0x0

    goto :goto_62

    .line 205
    :cond_5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 207
    :goto_62
    iget v7, p0, Landroid/icu/text/EscapeTransliterator;->radix:I

    iget v8, p0, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    invoke-static {v2, v5, v7, v8}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    .line 208
    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :goto_6e
    add-int v7, v0, v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v0, v7, v8}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v0, v7

    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v6

    add-int/2addr v1, v7

    .line 214
    .end local v5    # "c":I
    .end local v6    # "charLen":I
    goto :goto_12

    .line 216
    :cond_83
    iget v5, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int v6, v1, v6

    add-int/2addr v5, v6

    iput v5, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 217
    iput v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 218
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 219
    return-void
.end method
