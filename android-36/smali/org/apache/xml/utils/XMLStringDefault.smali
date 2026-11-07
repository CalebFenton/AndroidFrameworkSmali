.class public Lorg/apache/xml/utils/XMLStringDefault;
.super Ljava/lang/Object;
.source "XMLStringDefault.java"

# interfaces
.implements Lorg/apache/xml/utils/XMLString;


# instance fields
.field private greylist m_str:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist charAt(I)C
    .registers 2

    .line 119
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public greylist compareTo(Lorg/apache/xml/utils/XMLString;)I
    .registers 2

    .line 240
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
    .registers 2

    .line 263
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .registers 3

    .line 671
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist endsWith(Ljava/lang/String;)Z
    .registers 2

    .line 369
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 203
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public greylist equals(Ljava/lang/String;)Z
    .registers 2

    .line 166
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public greylist equals(Lorg/apache/xml/utils/XMLString;)Z
    .registers 2

    .line 184
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public greylist equalsIgnoreCase(Ljava/lang/String;)Z
    .registers 2

    .line 223
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
    .registers 4

    .line 90
    new-instance p1, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public greylist getChars(II[CI)V
    .registers 7

    :goto_0
    if-ge p1, p2, :cond_10

    add-int/lit8 v0, p4, 0x1

    .line 149
    iget-object v1, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, p3, p4

    add-int/lit8 p1, p1, 0x1

    move p4, v0

    goto :goto_0

    :cond_10
    return-void
.end method

.method public greylist hasString()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 387
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public greylist indexOf(I)I
    .registers 2

    .line 409
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    return p0
.end method

.method public greylist indexOf(II)I
    .registers 3

    .line 442
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public greylist indexOf(Ljava/lang/String;)I
    .registers 2

    .line 512
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist indexOf(Ljava/lang/String;I)I
    .registers 3

    .line 565
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public greylist indexOf(Lorg/apache/xml/utils/XMLString;)I
    .registers 2

    .line 534
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist lastIndexOf(I)I
    .registers 2

    .line 462
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    return p0
.end method

.method public greylist lastIndexOf(II)I
    .registers 3

    .line 490
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0
.end method

.method public greylist lastIndexOf(Ljava/lang/String;)I
    .registers 2

    .line 588
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist lastIndexOf(Ljava/lang/String;I)I
    .registers 3

    .line 613
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public greylist length()I
    .registers 1

    .line 101
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public greylist startsWith(Ljava/lang/String;)Z
    .registers 2

    .line 331
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist startsWith(Ljava/lang/String;I)Z
    .registers 3

    .line 287
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public greylist startsWith(Lorg/apache/xml/utils/XMLString;)Z
    .registers 2

    .line 351
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist startsWith(Lorg/apache/xml/utils/XMLString;I)Z
    .registers 3

    .line 311
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public greylist substring(I)Lorg/apache/xml/utils/XMLString;
    .registers 3

    .line 635
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist substring(II)Lorg/apache/xml/utils/XMLString;
    .registers 4

    .line 656
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist toDouble()D
    .registers 3

    .line 811
    :try_start_0
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    :catch_b
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public greylist toLowerCase()Lorg/apache/xml/utils/XMLString;
    .registers 2

    .line 700
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist toLowerCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .registers 3

    .line 685
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 788
    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    return-object p0
.end method

.method public greylist toUpperCase()Lorg/apache/xml/utils/XMLString;
    .registers 2

    .line 744
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist toUpperCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .registers 3

    .line 713
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist trim()Lorg/apache/xml/utils/XMLString;
    .registers 2

    .line 778
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object p0, p0, Lorg/apache/xml/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
