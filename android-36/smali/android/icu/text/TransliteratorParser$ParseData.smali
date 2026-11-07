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
.field final synthetic blacklist this$0:Landroid/icu/text/TransliteratorParser;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/text/TransliteratorParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 203
    iput-object p1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/TransliteratorParser;Landroid/icu/text/TransliteratorParser-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/TransliteratorParser$ParseData;-><init>(Landroid/icu/text/TransliteratorParser;)V

    return-void
.end method


# virtual methods
.method public blacklist isMatcher(I)Z
    .registers 4
    .param p1, "ch"    # I

    .line 257
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v0}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetcurData(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v0

    iget-char v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int v0, p1, v0

    .line 258
    .local v0, "i":I
    if-ltz v0, :cond_25

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetvariablesVector(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 259
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetvariablesVector(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/icu/text/UnicodeMatcher;

    return v1

    .line 261
    :cond_25
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist isReplacer(I)Z
    .registers 4
    .param p1, "ch"    # I

    .line 271
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v0}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetcurData(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v0

    iget-char v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int v0, p1, v0

    .line 272
    .local v0, "i":I
    if-ltz v0, :cond_25

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetvariablesVector(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 273
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetvariablesVector(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/icu/text/UnicodeReplacer;

    return v1

    .line 275
    :cond_25
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api lookup(Ljava/lang/String;)[C
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v0}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetvariableNames(Landroid/icu/text/TransliteratorParser;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public whitelist test-api lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .registers 4
    .param p1, "ch"    # I

    .line 220
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v0}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetcurData(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v0

    iget-char v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int v0, p1, v0

    .line 221
    .local v0, "i":I
    if-ltz v0, :cond_25

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetvariablesVector(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 222
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-$$Nest$fgetvariablesVector(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UnicodeMatcher;

    return-object v1

    .line 224
    :cond_25
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "limit"    # I

    .line 233
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 234
    .local v0, "start":I
    move v1, v0

    .line 235
    .local v1, "i":I
    :goto_5
    if-ge v1, p3, :cond_1e

    .line 236
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 237
    .local v2, "c":C
    if-ne v1, v0, :cond_13

    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 238
    :cond_13
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 239
    goto :goto_1e

    .line 241
    :cond_1a
    nop

    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    .line 242
    goto :goto_5

    .line 243
    :cond_1e
    :goto_1e
    if-ne v1, v0, :cond_22

    .line 244
    const/4 v2, 0x0

    return-object v2

    .line 246
    :cond_22
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 247
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
