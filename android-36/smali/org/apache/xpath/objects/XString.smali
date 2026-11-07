.class public Lorg/apache/xpath/objects/XString;
.super Lorg/apache/xpath/objects/XObject;
.source "XString.java"

# interfaces
.implements Lorg/apache/xml/utils/XMLString;


# static fields
.field public static final greylist EMPTYSTRING:Lorg/apache/xpath/objects/XString;

.field static final whitelist serialVersionUID:J = 0x1c0a273b4816c5fdL


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lorg/apache/xpath/objects/XString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/Object;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private static greylist isSpace(C)Z
    .registers 1

    .line 1008
    invoke-static {p0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public greylist bool()Z
    .registers 1

    .line 149
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 3

    .line 1119
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitStringLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XString;)Z

    return-void
.end method

.method public greylist charAt(I)C
    .registers 2

    .line 253
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public greylist compareTo(Lorg/apache/xml/utils/XMLString;)I
    .registers 9

    .line 429
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->length()I

    move-result v0

    .line 430
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v1

    .line 431
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    add-int/lit8 v5, v2, -0x1

    if-eqz v2, :cond_24

    .line 437
    invoke-virtual {p0, v3}, Lorg/apache/xpath/objects/XString;->charAt(I)C

    move-result v2

    .line 438
    invoke-interface {p1, v4}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v6

    if-eq v2, v6, :cond_1e

    sub-int/2addr v2, v6

    return v2

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_e

    :cond_24
    sub-int/2addr v0, v1

    return v0
.end method

.method public greylist compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
    .registers 3

    .line 480
    new-instance p0, Lorg/apache/xml/utils/WrappedRuntimeException;

    new-instance p1, Ljava/lang/NoSuchMethodException;

    const-string v0, "Java 1.2 method, not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method public greylist concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .registers 3

    .line 913
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {p1, v0, v1, p0}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void
.end method

.method public greylist dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {p1, v0, v1, p0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public greylist endsWith(Ljava/lang/String;)Z
    .registers 2

    .line 609
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 385
    :cond_4
    instance-of v0, p1, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v0, :cond_d

    .line 386
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 387
    :cond_d
    instance-of v0, p1, Lorg/apache/xpath/objects/XNumber;

    if-eqz v0, :cond_16

    .line 388
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 390
    :cond_16
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public greylist equals(Ljava/lang/String;)Z
    .registers 2

    .line 335
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public greylist equals(Lorg/apache/xml/utils/XMLString;)Z
    .registers 3

    if-eqz p1, :cond_1e

    .line 354
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->hasString()Z

    move-result v0

    if-nez v0, :cond_11

    .line 355
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/xml/utils/XMLString;->equals(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 357
    :cond_11
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public greylist equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 7

    .line 297
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_c

    .line 301
    :try_start_7
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    return p0

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1c

    .line 306
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result p1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->bool()Z

    move-result p0

    if-ne p1, p0, :cond_1b

    return v2

    :cond_1b
    return v1

    :cond_1c
    const/4 v3, 0x2

    if-ne v3, v0, :cond_34

    .line 310
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->num()D

    move-result-wide p0
    :try_end_27
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_27} :catch_2d

    cmpl-double p0, v3, p0

    if-nez p0, :cond_2c

    return v2

    :cond_2c
    return v1

    :catch_2d
    move-exception p0

    .line 314
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 319
    :cond_34
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result p0

    return p0
.end method

.method public greylist equalsIgnoreCase(Ljava/lang/String;)Z
    .registers 2

    .line 410
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
    .registers 15

    .line 1030
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->length()I

    move-result v0

    .line 1031
    new-array v1, v0, [C

    const/4 v2, 0x0

    .line 1033
    invoke-virtual {p0, v2, v0, v1, v2}, Lorg/apache/xpath/objects/XString;->getChars(II[CI)V

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_19

    .line 1040
    aget-char v4, v1, v3

    invoke-static {v4}, Lorg/apache/xpath/objects/XString;->isSpace(C)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_19

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    :goto_19
    move v5, v2

    move v6, v5

    move v4, v3

    :goto_1c
    const/16 v7, 0x20

    const/4 v8, 0x1

    if-ge v3, v0, :cond_57

    .line 1052
    aget-char v9, v1, v3

    .line 1054
    invoke-static {v9}, Lorg/apache/xpath/objects/XString;->isSpace(C)Z

    move-result v10

    if-eqz v10, :cond_4e

    if-nez v5, :cond_4b

    if-eq v7, v9, :cond_2e

    move v6, v8

    :cond_2e
    add-int/lit8 v9, v4, 0x1

    .line 1063
    aput-char v7, v1, v4

    if-eqz p3, :cond_49

    if-eqz v3, :cond_49

    add-int/lit8 v4, v3, -0x1

    .line 1067
    aget-char v4, v1, v4

    const/16 v7, 0x2e

    if-eq v4, v7, :cond_47

    const/16 v7, 0x21

    if-eq v4, v7, :cond_47

    const/16 v7, 0x3f

    if-eq v4, v7, :cond_47

    goto :goto_49

    :cond_47
    :goto_47
    move v4, v9

    goto :goto_54

    :cond_49
    :goto_49
    move v5, v8

    goto :goto_47

    :cond_4b
    move v5, v8

    move v6, v5

    goto :goto_54

    :cond_4e
    add-int/lit8 v5, v4, 0x1

    .line 1088
    aput-char v9, v1, v4

    move v4, v5

    move v5, v2

    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_57
    if-eqz p2, :cond_64

    if-gt v8, v4, :cond_64

    add-int/lit8 p2, v4, -0x1

    .line 1093
    aget-char p2, v1, p2

    if-ne v7, p2, :cond_64

    add-int/lit8 v4, v4, -0x1

    move v6, v8

    :cond_64
    if-eqz p1, :cond_6e

    if-lez v4, :cond_6e

    .line 1102
    aget-char p1, v1, v2

    if-ne v7, p1, :cond_6e

    move v2, v8

    goto :goto_6f

    :cond_6e
    move v8, v6

    .line 1109
    :goto_6f
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object p1

    if-eqz v8, :cond_7f

    .line 1111
    new-instance p0, Ljava/lang/String;

    sub-int/2addr v4, v2

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, p0}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    :cond_7f
    return-object p0
.end method

.method public greylist getChars(II[CI)V
    .registers 5

    .line 279
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public greylist getType()I
    .registers 1

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public greylist getTypeString()Ljava/lang/String;
    .registers 1

    .line 83
    const-string p0, "#STRING"

    return-object p0
.end method

.method public greylist hasString()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 627
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public greylist indexOf(I)I
    .registers 2

    .line 649
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    return p0
.end method

.method public greylist indexOf(II)I
    .registers 3

    .line 682
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public greylist indexOf(Ljava/lang/String;)I
    .registers 2

    .line 752
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist indexOf(Ljava/lang/String;I)I
    .registers 3

    .line 805
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public greylist indexOf(Lorg/apache/xml/utils/XMLString;)I
    .registers 2

    .line 774
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist lastIndexOf(I)I
    .registers 2

    .line 702
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    return p0
.end method

.method public greylist lastIndexOf(II)I
    .registers 3

    .line 730
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0
.end method

.method public greylist lastIndexOf(Ljava/lang/String;)I
    .registers 2

    .line 828
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist lastIndexOf(Ljava/lang/String;I)I
    .registers 3

    .line 853
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public greylist length()I
    .registers 1

    .line 235
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public greylist num()D
    .registers 3

    .line 104
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist rtf(Lorg/apache/xpath/XPathContext;)I
    .registers 2

    .line 182
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    .line 184
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    .line 186
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result p0

    return p0
.end method

.method public greylist startsWith(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 525
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XString;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public greylist startsWith(Ljava/lang/String;I)Z
    .registers 3

    .line 506
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public greylist startsWith(Lorg/apache/xml/utils/XMLString;)Z
    .registers 3

    const/4 v0, 0x0

    .line 591
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XString;->startsWith(Lorg/apache/xml/utils/XMLString;I)Z

    move-result p0

    return p0
.end method

.method public greylist startsWith(Lorg/apache/xml/utils/XMLString;I)Z
    .registers 8

    .line 551
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->length()I

    move-result v0

    .line 553
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ltz p2, :cond_26

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_f

    goto :goto_26

    :cond_f
    move v0, v2

    :goto_10
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_24

    .line 563
    invoke-virtual {p0, p2}, Lorg/apache/xpath/objects/XString;->charAt(I)C

    move-result v3

    invoke-interface {p1, v0}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1f

    return v2

    :cond_1f
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_24
    const/4 p0, 0x1

    return p0

    :cond_26
    :goto_26
    return v2
.end method

.method public greylist str()Ljava/lang/String;
    .registers 1

    .line 169
    iget-object p0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz p0, :cond_7

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_7
    const-string p0, ""

    return-object p0
.end method

.method public greylist substring(I)Lorg/apache/xml/utils/XMLString;
    .registers 3

    .line 875
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist substring(II)Lorg/apache/xml/utils/XMLString;
    .registers 4

    .line 896
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist toDouble()D
    .registers 4

    .line 122
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->trim()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    const/4 v0, 0x0

    .line 124
    :goto_5
    invoke-interface {p0}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 126
    invoke-interface {p0, v0}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_20

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_20

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2c

    const/16 v2, 0x39

    if-le v1, v2, :cond_20

    goto :goto_2c

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 135
    :cond_23
    :try_start_23
    invoke-interface {p0}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2b} :catch_2c

    return-wide v0

    :catch_2c
    :cond_2c
    :goto_2c
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public greylist toLowerCase()Lorg/apache/xml/utils/XMLString;
    .registers 2

    .line 942
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist toLowerCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .registers 3

    .line 927
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist toUpperCase()Lorg/apache/xml/utils/XMLString;
    .registers 2

    .line 986
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist toUpperCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .registers 3

    .line 955
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist trim()Lorg/apache/xml/utils/XMLString;
    .registers 2

    .line 996
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist xstr()Lorg/apache/xml/utils/XMLString;
    .registers 1

    .line 0
    return-object p0
.end method
