.class Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;
.super Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LENIENT"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4808
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder-IA;)V

    .line 4809
    return-void
.end method

.method private greylist-max-o isLenientChar(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 4817
    const/16 v0, 0x20

    if-eq p1, v0, :cond_f

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_f

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method


# virtual methods
.method public greylist-max-o match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 4840
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 4841
    .local v0, "off":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4842
    .local v1, "end":I
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4843
    .local v2, "len":I
    const/4 v3, 0x0

    .line 4844
    .local v3, "koff":I
    :goto_f
    const/4 v4, 0x0

    if-ge v3, v2, :cond_39

    if-ge v0, v1, :cond_39

    .line 4845
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 4846
    add-int/lit8 v0, v0, 0x1

    .line 4847
    goto :goto_f

    .line 4849
    :cond_21
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->key:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "koff":I
    .local v6, "koff":I
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "off":I
    .local v5, "off":I
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v3, v0}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isEqual(CC)Z

    move-result v0

    if-nez v0, :cond_36

    .line 4850
    return-object v4

    .line 4849
    :cond_36
    move v0, v5

    move v3, v6

    goto :goto_f

    .line 4853
    .end local v5    # "off":I
    .end local v6    # "koff":I
    .restart local v0    # "off":I
    .restart local v3    # "koff":I
    :cond_39
    if-eq v3, v2, :cond_3c

    .line 4854
    return-object v4

    .line 4856
    :cond_3c
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v4, :cond_70

    if-eq v0, v1, :cond_70

    .line 4857
    move v4, v0

    .line 4858
    .local v4, "off0":I
    :goto_43
    if-ge v4, v1, :cond_52

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 4859
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 4861
    :cond_52
    if-ge v4, v1, :cond_70

    .line 4862
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4864
    .local v5, "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_56
    iget-char v6, v5, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isEqual(CC)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 4865
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4866
    invoke-virtual {v5, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v6

    .line 4867
    .local v6, "found":Ljava/lang/String;
    if-eqz v6, :cond_70

    .line 4868
    return-object v6

    .line 4872
    .end local v6    # "found":Ljava/lang/String;
    :cond_6c
    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4873
    if-nez v5, :cond_56

    .line 4876
    .end local v4    # "off0":I
    .end local v5    # "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_70
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4877
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->value:Ljava/lang/String;

    return-object v4
.end method

.method protected greylist-max-o newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4813
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected bridge synthetic blacklist newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 4805
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o toKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "k"    # Ljava/lang/String;

    .line 4821
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 4822
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 4823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4824
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 4825
    add-int/lit8 v0, v0, 0x1

    .line 4826
    :goto_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 4827
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v2

    if-nez v2, :cond_37

    .line 4828
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4830
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 4832
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4821
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4835
    .end local v0    # "i":I
    :cond_42
    return-object p1
.end method
