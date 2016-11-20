.class Landroid/icu/text/TransliteratorParser$ParseData;
.super Ljava/lang/Object;
.source "TransliteratorParser.java"

# interfaces
.implements Landroid/icu/text/SymbolTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseData"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/TransliteratorParser;


# direct methods
.method private constructor <init>(Landroid/icu/text/TransliteratorParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/text/TransliteratorParser;

    #@0
    .prologue
    .line 201
    iput-object p1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/TransliteratorParser;Landroid/icu/text/TransliteratorParser$ParseData;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/text/TransliteratorParser;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/TransliteratorParser$ParseData;-><init>(Landroid/icu/text/TransliteratorParser;)V

    #@3
    return-void
.end method


# virtual methods
.method public isMatcher(I)Z
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 252
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    #@2
    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    #@5
    move-result-object v1

    #@6
    iget-char v1, v1, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    #@8
    sub-int v0, p1, v1

    #@a
    .line 253
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@c
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    #@e
    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@15
    move-result v1

    #@16
    if-ge v0, v1, :cond_0

    #@18
    .line 254
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    #@1a
    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    instance-of v1, v1, Landroid/icu/text/UnicodeMatcher;

    #@24
    return v1

    #@25
    .line 256
    :cond_0
    const/4 v1, 0x1

    #@26
    return v1
.end method

.method public isReplacer(I)Z
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 266
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    #@2
    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    #@5
    move-result-object v1

    #@6
    iget-char v1, v1, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    #@8
    sub-int v0, p1, v1

    #@a
    .line 267
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@c
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    #@e
    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@15
    move-result v1

    #@16
    if-ge v0, v1, :cond_0

    #@18
    .line 268
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    #@1a
    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    instance-of v1, v1, Landroid/icu/text/UnicodeReplacer;

    #@24
    return v1

    #@25
    .line 270
    :cond_0
    const/4 v1, 0x1

    #@26
    return v1
.end method

.method public lookup(Ljava/lang/String;)[C
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    #@2
    invoke-static {v0}, Landroid/icu/text/TransliteratorParser;->-get5(Landroid/icu/text/TransliteratorParser;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [C

    #@c
    return-object v0
.end method

.method public lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 216
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    #@2
    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    #@5
    move-result-object v1

    #@6
    iget-char v1, v1, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    #@8
    sub-int v0, p1, v1

    #@a
    .line 217
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@c
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    #@e
    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@15
    move-result v1

    #@16
    if-ge v0, v1, :cond_0

    #@18
    .line 218
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    #@1a
    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/icu/text/UnicodeMatcher;

    #@24
    return-object v1

    #@25
    .line 220
    :cond_0
    const/4 v1, 0x0

    #@26
    return-object v1
.end method

.method public parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 228
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v2

    #@4
    .line 229
    .local v2, "start":I
    move v1, v2

    #@5
    .line 230
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    #@7
    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 232
    .local v0, "c":C
    if-ne v1, v2, :cond_0

    #@d
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 233
    :cond_0
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 236
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 238
    .end local v0    # "c":C
    :cond_1
    if-ne v1, v2, :cond_2

    #@1e
    .line 239
    const/4 v3, 0x0

    #@1f
    return-object v3

    #@20
    .line 241
    :cond_2
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@23
    .line 242
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    return-object v3
.end method
