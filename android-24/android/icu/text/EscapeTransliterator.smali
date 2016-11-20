.class Landroid/icu/text/EscapeTransliterator;
.super Landroid/icu/text/Transliterator;
.source "EscapeTransliterator.java"


# instance fields
.field private grokSupplementals:Z

.field private minDigits:I

.field private prefix:Ljava/lang/String;

.field private radix:I

.field private suffix:Ljava/lang/String;

.field private supplementalHandler:Landroid/icu/text/EscapeTransliterator;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/icu/text/EscapeTransliterator;)V
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "radix"    # I
    .param p5, "minDigits"    # I
    .param p6, "grokSupplementals"    # Z
    .param p7, "supplementalHandler"    # Landroid/icu/text/EscapeTransliterator;

    #@0
    .prologue
    .line 156
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@4
    .line 157
    iput-object p2, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    #@6
    .line 158
    iput-object p3, p0, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    #@8
    .line 159
    iput p4, p0, Landroid/icu/text/EscapeTransliterator;->radix:I

    #@a
    .line 160
    iput p5, p0, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    #@c
    .line 161
    iput-boolean p6, p0, Landroid/icu/text/EscapeTransliterator;->grokSupplementals:Z

    #@e
    .line 162
    iput-object p7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    #@10
    .line 155
    return-void
.end method

.method static register()V
    .locals 2

    #@0
    .prologue
    .line 83
    const-string/jumbo v0, "Any-Hex/Unicode"

    #@3
    new-instance v1, Landroid/icu/text/EscapeTransliterator$1;

    #@5
    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$1;-><init>()V

    #@8
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@b
    .line 91
    const-string/jumbo v0, "Any-Hex/Java"

    #@e
    new-instance v1, Landroid/icu/text/EscapeTransliterator$2;

    #@10
    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$2;-><init>()V

    #@13
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@16
    .line 99
    const-string/jumbo v0, "Any-Hex/C"

    #@19
    new-instance v1, Landroid/icu/text/EscapeTransliterator$3;

    #@1b
    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$3;-><init>()V

    #@1e
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@21
    .line 108
    const-string/jumbo v0, "Any-Hex/XML"

    #@24
    new-instance v1, Landroid/icu/text/EscapeTransliterator$4;

    #@26
    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$4;-><init>()V

    #@29
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@2c
    .line 116
    const-string/jumbo v0, "Any-Hex/XML10"

    #@2f
    new-instance v1, Landroid/icu/text/EscapeTransliterator$5;

    #@31
    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$5;-><init>()V

    #@34
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@37
    .line 124
    const-string/jumbo v0, "Any-Hex/Perl"

    #@3a
    new-instance v1, Landroid/icu/text/EscapeTransliterator$6;

    #@3c
    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$6;-><init>()V

    #@3f
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@42
    .line 132
    const-string/jumbo v0, "Any-Hex/Plain"

    #@45
    new-instance v1, Landroid/icu/text/EscapeTransliterator$7;

    #@47
    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$7;-><init>()V

    #@4a
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@4d
    .line 140
    const-string/jumbo v0, "Any-Hex"

    #@50
    new-instance v1, Landroid/icu/text/EscapeTransliterator$8;

    #@52
    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$8;-><init>()V

    #@55
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    #@58
    .line 81
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 5
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 215
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {p2, v3}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@7
    .line 216
    move-object v2, p0

    #@8
    .local v2, "it":Landroid/icu/text/EscapeTransliterator;
    :goto_0
    if-eqz v2, :cond_2

    #@a
    .line 217
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->size()I

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 218
    iget-object v3, v2, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    #@12
    invoke-virtual {p3, v3}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@15
    .line 219
    iget-object v3, v2, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    #@17
    invoke-virtual {p3, v3}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@1a
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    .line 221
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@20
    .local v1, "i":I
    :goto_1
    iget v3, v2, Landroid/icu/text/EscapeTransliterator;->radix:I

    #@22
    if-ge v1, v3, :cond_0

    #@24
    .line 222
    iget v3, v2, Landroid/icu/text/EscapeTransliterator;->radix:I

    #@26
    iget v4, v2, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    #@28
    invoke-static {v0, v1, v3, v4}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    #@2b
    .line 221
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 224
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {p3, v3}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@35
    .line 216
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, v2, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    #@37
    goto :goto_0

    #@38
    .line 214
    :cond_2
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 10
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 170
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@3
    .line 171
    .local v6, "start":I
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@5
    .line 173
    .local v3, "limit":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    #@9
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    .line 174
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    #@e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@11
    move-result v4

    #@12
    .line 175
    .local v4, "prefixLen":I
    const/4 v5, 0x0

    #@13
    .line 177
    .local v5, "redoPrefix":Z
    :goto_0
    if-ge v6, v3, :cond_4

    #@15
    .line 178
    iget-boolean v7, p0, Landroid/icu/text/EscapeTransliterator;->grokSupplementals:Z

    #@17
    if-eqz v7, :cond_0

    #@19
    invoke-interface {p1, v6}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@1c
    move-result v1

    #@1d
    .line 179
    .local v1, "c":I
    :goto_1
    iget-boolean v7, p0, Landroid/icu/text/EscapeTransliterator;->grokSupplementals:Z

    #@1f
    if-eqz v7, :cond_1

    #@21
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@24
    move-result v2

    #@25
    .line 181
    .local v2, "charLen":I
    :goto_2
    const/high16 v7, -0x10000

    #@27
    and-int/2addr v7, v1

    #@28
    if-eqz v7, :cond_2

    #@2a
    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    #@2c
    if-eqz v7, :cond_2

    #@2e
    .line 182
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    #@31
    .line 183
    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    #@33
    iget-object v7, v7, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    #@35
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 184
    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    #@3a
    iget v7, v7, Landroid/icu/text/EscapeTransliterator;->radix:I

    #@3c
    .line 185
    iget-object v8, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    #@3e
    iget v8, v8, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    #@40
    .line 184
    invoke-static {v0, v1, v7, v8}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    #@43
    .line 186
    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    #@45
    iget-object v7, v7, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    #@47
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 187
    const/4 v5, 0x1

    #@4b
    .line 200
    :goto_3
    add-int v7, v6, v2

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v8

    #@51
    invoke-interface {p1, v6, v7, v8}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@54
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@57
    move-result v7

    #@58
    add-int/2addr v6, v7

    #@59
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@5c
    move-result v7

    #@5d
    sub-int/2addr v7, v2

    #@5e
    add-int/2addr v3, v7

    #@5f
    goto :goto_0

    #@60
    .line 178
    .end local v1    # "c":I
    .end local v2    # "charLen":I
    :cond_0
    invoke-interface {p1, v6}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@63
    move-result v1

    #@64
    .restart local v1    # "c":I
    goto :goto_1

    #@65
    .line 179
    :cond_1
    const/4 v2, 0x1

    #@66
    .restart local v2    # "charLen":I
    goto :goto_2

    #@67
    .line 189
    :cond_2
    if-eqz v5, :cond_3

    #@69
    .line 190
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6c
    .line 191
    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    #@6e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 192
    const/4 v5, 0x0

    #@72
    .line 196
    :goto_4
    iget v7, p0, Landroid/icu/text/EscapeTransliterator;->radix:I

    #@74
    iget v8, p0, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    #@76
    invoke-static {v0, v1, v7, v8}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    #@79
    .line 197
    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    #@7b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    goto :goto_3

    #@7f
    .line 194
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@82
    goto :goto_4

    #@83
    .line 205
    .end local v1    # "c":I
    .end local v2    # "charLen":I
    :cond_4
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@85
    iget v8, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@87
    sub-int v8, v3, v8

    #@89
    add-int/2addr v7, v8

    #@8a
    iput v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@8c
    .line 206
    iput v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@8e
    .line 207
    iput v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@90
    .line 169
    return-void
.end method
