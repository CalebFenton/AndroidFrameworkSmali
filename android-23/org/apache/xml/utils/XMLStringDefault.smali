.class public Lorg/apache/xml/utils/XMLStringDefault;
.super Ljava/lang/Object;
.source "XMLStringDefault.java"

# interfaces
.implements Lorg/apache/xml/utils/XMLString;


# instance fields
.field private m_str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@5
    .line 37
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Lorg/apache/xml/utils/XMLString;)I
    .locals 2
    .param p1, "anotherString"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
    .locals 2
    .param p1, "str"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 671
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    #@2
    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@4
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .param p1, "lh"    # Lorg/xml/sax/ext/LexicalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    return-void
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "anObject"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 1
    .param p1, "obj2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Lorg/apache/xml/utils/XMLString;)Z
    .locals 2
    .param p1, "anObject"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "anotherString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "trimHead"    # Z
    .param p2, "trimTail"    # Z
    .param p3, "doublePunctuationSpaces"    # Z

    #@0
    .prologue
    .line 90
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    #@2
    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public getChars(II[CI)V
    .locals 4
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    #@0
    .prologue
    .line 146
    move v0, p4

    #@1
    .line 147
    .local v0, "destIndex":I
    move v2, p1

    #@2
    .local v2, "i":I
    move v1, v0

    #@3
    .end local v0    # "destIndex":I
    .local v1, "destIndex":I
    :goto_0
    if-ge v2, p2, :cond_0

    #@5
    .line 149
    add-int/lit8 v0, v1, 0x1

    #@7
    .end local v1    # "destIndex":I
    .restart local v0    # "destIndex":I
    iget-object v3, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@9
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v3

    #@d
    aput-char v3, p3, v1

    #@f
    .line 147
    add-int/lit8 v2, v2, 0x1

    #@11
    move v1, v0

    #@12
    .end local v0    # "destIndex":I
    .restart local v1    # "destIndex":I
    goto :goto_0

    #@13
    .line 144
    :cond_0
    return-void
.end method

.method public hasString()Z
    .locals 1

    #@0
    .prologue
    .line 798
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOf(I)I
    .locals 1
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOf(II)I
    .locals 1
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 512
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    .line 565
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOf(Lorg/apache/xml/utils/XMLString;)I
    .locals 2
    .param p1, "str"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 534
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public lastIndexOf(I)I
    .locals 1
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 462
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lastIndexOf(II)I
    .locals 1
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 588
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    .line 613
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "toffset"    # I

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;)Z
    .locals 2
    .param p1, "prefix"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;I)Z
    .locals 2
    .param p1, "prefix"    # Lorg/apache/xml/utils/XMLString;
    .param p2, "toffset"    # I

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public substring(I)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "beginIndex"    # I

    #@0
    .prologue
    .line 635
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    #@2
    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@4
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public substring(II)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    .line 656
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    #@2
    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@4
    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public toDouble()D
    .locals 4

    #@0
    .prologue
    .line 811
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-wide v2

    #@a
    return-wide v2

    #@b
    .line 814
    :catch_0
    move-exception v0

    #@c
    .line 815
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    #@e
    return-wide v2
.end method

.method public toLowerCase()Lorg/apache/xml/utils/XMLString;
    .locals 2

    #@0
    .prologue
    .line 700
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    #@2
    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 685
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    #@2
    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@4
    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 788
    iget-object v0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toUpperCase()Lorg/apache/xml/utils/XMLString;
    .locals 2

    #@0
    .prologue
    .line 744
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    #@2
    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 713
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    #@2
    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@4
    invoke-virtual {v1, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public trim()Lorg/apache/xml/utils/XMLString;
    .locals 2

    #@0
    .prologue
    .line 778
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    #@2
    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@b
    return-object v0
.end method
