.class Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;
.super Landroid/icu/text/ScientificNumberFormatter$Style;
.source "ScientificNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ScientificNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarkupStyle"
.end annotation


# instance fields
.field private final beginMarkup:Ljava/lang/String;

.field private final endMarkup:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "beginMarkup"    # Ljava/lang/String;
    .param p2, "endMarkup"    # Ljava/lang/String;

    #@0
    .prologue
    .line 157
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/icu/text/ScientificNumberFormatter$Style;-><init>(Landroid/icu/text/ScientificNumberFormatter$Style;)V

    #@4
    .line 158
    iput-object p1, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->beginMarkup:Ljava/lang/String;

    #@6
    .line 159
    iput-object p2, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->endMarkup:Ljava/lang/String;

    #@8
    .line 157
    return-void
.end method


# virtual methods
.method format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "preExponent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    const/4 v1, 0x0

    #@1
    .line 167
    .local v1, "copyFromOffset":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 169
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    #@9
    .line 170
    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    #@c
    move-result v4

    #@d
    const v5, 0xffff

    #@10
    .line 168
    if-eq v4, v5, :cond_2

    #@12
    .line 172
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    #@15
    move-result-object v0

    #@16
    .line 173
    .local v0, "attributeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@18
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 177
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@20
    invoke-interface {p1, v4}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@23
    move-result v4

    #@24
    .line 174
    invoke-static {p1, v1, v4, v3}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    #@27
    .line 179
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    #@29
    invoke-interface {p1, v4}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@2c
    move-result v1

    #@2d
    .line 180
    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@30
    .line 181
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 182
    iget-object v4, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->beginMarkup:Ljava/lang/String;

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    goto :goto_0

    #@39
    .line 183
    :cond_0
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    #@3b
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_1

    #@41
    .line 184
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    #@43
    invoke-interface {p1, v4}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@46
    move-result v2

    #@47
    .line 185
    .local v2, "limit":I
    invoke-static {p1, v1, v2, v3}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    #@4a
    .line 190
    move v1, v2

    #@4b
    .line 191
    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@4e
    .line 192
    iget-object v4, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->endMarkup:Ljava/lang/String;

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    goto :goto_0

    #@54
    .line 194
    .end local v2    # "limit":I
    :cond_1
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    #@57
    goto :goto_0

    #@58
    .line 197
    .end local v0    # "attributeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    :cond_2
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@5b
    move-result v4

    #@5c
    invoke-static {p1, v1, v4, v3}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    #@5f
    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    return-object v4
.end method
