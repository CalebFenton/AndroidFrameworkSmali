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
.field private final greylist-max-o beginMarkup:Ljava/lang/String;

.field private final greylist-max-o endMarkup:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "beginMarkup"    # Ljava/lang/String;
    .param p2, "endMarkup"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/ScientificNumberFormatter$Style;-><init>(Landroid/icu/text/ScientificNumberFormatter-IA;)V

    .line 145
    iput-object p1, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->beginMarkup:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->endMarkup:Ljava/lang/String;

    .line 147
    return-void
.end method


# virtual methods
.method greylist-max-o format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "preExponent"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "copyFromOffset":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    .line 157
    :goto_9
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v2

    const v3, 0xffff

    if-eq v2, v3, :cond_58

    .line 159
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 160
    .local v2, "attributeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 161
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    .line 164
    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    .line 161
    invoke-static {p1, v0, v3, v1}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 166
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v0

    .line 167
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 168
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v3, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->beginMarkup:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    .line 170
    :cond_39
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 171
    sget-object v3, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    .line 172
    .local v3, "limit":I
    invoke-static {p1, v0, v3, v1}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 177
    move v0, v3

    .line 178
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 179
    iget-object v4, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->endMarkup:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .end local v3    # "limit":I
    goto :goto_57

    .line 181
    :cond_54
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    .line 183
    .end local v2    # "attributeSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    :goto_57
    goto :goto_9

    .line 184
    :cond_58
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v2

    invoke-static {p1, v0, v2, v1}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
