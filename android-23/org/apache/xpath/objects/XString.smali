.class public Lorg/apache/xpath/objects/XString;
.super Lorg/apache/xpath/objects/XObject;
.source "XString.java"

# interfaces
.implements Lorg/apache/xml/utils/XMLString;


# static fields
.field public static final EMPTYSTRING:Lorg/apache/xpath/objects/XString;

.field static final serialVersionUID:J = 0x1c0a273b4816c5fdL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 43
    new-instance v0, Lorg/apache/xpath/objects/XString;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@a
    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 60
    return-void
.end method

.method private static isSpace(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 1008
    invoke-static {p0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    #@3
    move-result v0

    #@4
    return v0
.end method


# virtual methods
.method public bool()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 149
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    if-lez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 0
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 1119
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitStringLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XString;)Z

    #@3
    .line 1117
    return-void
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compareTo(Lorg/apache/xml/utils/XMLString;)I
    .locals 9
    .param p1, "xstr"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 429
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->length()I

    #@3
    move-result v4

    #@4
    .line 430
    .local v4, "len1":I
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    #@7
    move-result v5

    #@8
    .line 431
    .local v5, "len2":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v6

    #@c
    .line 432
    .local v6, "n":I
    const/4 v2, 0x0

    #@d
    .line 433
    .local v2, "i":I
    const/4 v3, 0x0

    #@e
    .local v3, "j":I
    move v7, v6

    #@f
    .line 435
    .end local v6    # "n":I
    .local v7, "n":I
    :goto_0
    add-int/lit8 v6, v7, -0x1

    #@11
    .end local v7    # "n":I
    .restart local v6    # "n":I
    if-eqz v7, :cond_1

    #@13
    .line 437
    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XString;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 438
    .local v0, "c1":C
    invoke-interface {p1, v3}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    #@1a
    move-result v1

    #@1b
    .line 440
    .local v1, "c2":C
    if-eq v0, v1, :cond_0

    #@1d
    .line 442
    sub-int v8, v0, v1

    #@1f
    return v8

    #@20
    .line 445
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@22
    .line 446
    add-int/lit8 v3, v3, 0x1

    #@24
    move v7, v6

    #@25
    .end local v6    # "n":I
    .restart local v7    # "n":I
    goto :goto_0

    #@26
    .line 449
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v7    # "n":I
    .restart local v6    # "n":I
    :cond_1
    sub-int v8, v4, v5

    #@28
    return v8
.end method

.method public compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
    .locals 3
    .param p1, "str"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 480
    new-instance v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@2
    .line 481
    new-instance v1, Ljava/lang/NoSuchMethodException;

    #@4
    .line 482
    const-string/jumbo v2, "Java 1.2 method, not yet implemented"

    #@7
    .line 481
    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    #@a
    .line 480
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@d
    throw v0
.end method

.method public concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 913
    new-instance v0, Lorg/apache/xpath/objects/XString;

    #@2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 4
    .param p1, "lh"    # Lorg/xml/sax/ext/LexicalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 224
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    const/4 v3, 0x0

    #@d
    invoke-interface {p1, v1, v3, v2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    #@10
    .line 219
    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 206
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    const/4 v3, 0x0

    #@d
    invoke-interface {p1, v1, v3, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@10
    .line 201
    return-void
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 609
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 379
    if-nez p1, :cond_0

    #@2
    .line 380
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 385
    :cond_0
    instance-of v0, p1, Lorg/apache/xpath/objects/XNodeSet;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 386
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 387
    :cond_1
    instance-of v0, p1, Lorg/apache/xpath/objects/XNumber;

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 388
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    return v0

    #@16
    .line 390
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    return v0
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 1
    .param p1, "obj2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public equals(Lorg/apache/xml/utils/XMLString;)Z
    .locals 2
    .param p1, "obj2"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 353
    if-eqz p1, :cond_1

    #@2
    .line 354
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->hasString()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 355
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-interface {p1, v0}, Lorg/apache/xml/utils/XMLString;->equals(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 357
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    .line 360
    :cond_1
    const/4 v0, 0x0

    #@1f
    return v0
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 8
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 297
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@5
    move-result v0

    #@6
    .line 300
    .local v0, "t":I
    const/4 v4, 0x4

    #@7
    if-ne v4, v0, :cond_0

    #@9
    .line 301
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    #@c
    move-result v2

    #@d
    return v2

    #@e
    .line 305
    :cond_0
    if-ne v2, v0, :cond_2

    #@10
    .line 306
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    #@13
    move-result v4

    #@14
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->bool()Z

    #@17
    move-result v5

    #@18
    if-ne v4, v5, :cond_1

    #@1a
    :goto_0
    return v2

    #@1b
    :cond_1
    move v2, v3

    #@1c
    goto :goto_0

    #@1d
    .line 309
    :cond_2
    const/4 v4, 0x2

    #@1e
    if-ne v4, v0, :cond_4

    #@20
    .line 310
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@23
    move-result-wide v4

    #@24
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->num()D
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    move-result-wide v6

    #@28
    cmpl-double v4, v4, v6

    #@2a
    if-nez v4, :cond_3

    #@2c
    :goto_1
    return v2

    #@2d
    :cond_3
    move v2, v3

    #@2e
    goto :goto_1

    #@2f
    .line 313
    :catch_0
    move-exception v1

    #@30
    .line 314
    .local v1, "te":Ljavax/xml/transform/TransformerException;
    new-instance v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@32
    invoke-direct {v2, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@35
    throw v2

    #@36
    .line 319
    .end local v1    # "te":Ljavax/xml/transform/TransformerException;
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->xstr()Lorg/apache/xml/utils/XMLString;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@3d
    move-result-object v3

    #@3e
    invoke-interface {v2, v3}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    #@41
    move-result v2

    #@42
    return v2
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "anotherString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 410
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
    .locals 13
    .param p1, "trimHead"    # Z
    .param p2, "trimTail"    # Z
    .param p3, "doublePunctuationSpaces"    # Z

    #@0
    .prologue
    .line 1030
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->length()I

    #@3
    move-result v5

    #@4
    .line 1031
    .local v5, "len":I
    new-array v0, v5, [C

    #@6
    .line 1033
    .local v0, "buf":[C
    const/4 v11, 0x0

    #@7
    const/4 v12, 0x0

    #@8
    invoke-virtual {p0, v11, v5, v0, v12}, Lorg/apache/xpath/objects/XString;->getChars(II[CI)V

    #@b
    .line 1035
    const/4 v4, 0x0

    #@c
    .line 1038
    .local v4, "edit":Z
    const/4 v8, 0x0

    #@d
    .local v8, "s":I
    :goto_0
    if-ge v8, v5, :cond_0

    #@f
    .line 1040
    aget-char v11, v0, v8

    #@11
    invoke-static {v11}, Lorg/apache/xpath/objects/XString;->isSpace(C)Z

    #@14
    move-result v11

    #@15
    if-eqz v11, :cond_3

    #@17
    .line 1047
    :cond_0
    move v2, v8

    #@18
    .line 1048
    .local v2, "d":I
    const/4 v6, 0x0

    #@19
    .local v6, "pres":Z
    move v3, v2

    #@1a
    .line 1050
    .end local v2    # "d":I
    .local v3, "d":I
    :goto_1
    if-ge v8, v5, :cond_7

    #@1c
    .line 1052
    aget-char v1, v0, v8

    #@1e
    .line 1054
    .local v1, "c":C
    invoke-static {v1}, Lorg/apache/xpath/objects/XString;->isSpace(C)Z

    #@21
    move-result v11

    #@22
    if-eqz v11, :cond_6

    #@24
    .line 1056
    if-nez v6, :cond_5

    #@26
    .line 1058
    const/16 v11, 0x20

    #@28
    if-eq v11, v1, :cond_1

    #@2a
    .line 1060
    const/4 v4, 0x1

    #@2b
    .line 1063
    :cond_1
    add-int/lit8 v2, v3, 0x1

    #@2d
    .end local v3    # "d":I
    .restart local v2    # "d":I
    const/16 v11, 0x20

    #@2f
    aput-char v11, v0, v3

    #@31
    .line 1065
    if-eqz p3, :cond_4

    #@33
    if-eqz v8, :cond_4

    #@35
    .line 1067
    add-int/lit8 v11, v8, -0x1

    #@37
    aget-char v7, v0, v11

    #@39
    .line 1069
    .local v7, "prevChar":C
    const/16 v11, 0x2e

    #@3b
    if-eq v7, v11, :cond_2

    #@3d
    const/16 v11, 0x21

    #@3f
    if-eq v7, v11, :cond_2

    #@41
    .line 1070
    const/16 v11, 0x3f

    #@43
    if-eq v7, v11, :cond_2

    #@45
    .line 1072
    const/4 v6, 0x1

    #@46
    .line 1050
    .end local v7    # "prevChar":C
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@48
    move v3, v2

    #@49
    .end local v2    # "d":I
    .restart local v3    # "d":I
    goto :goto_1

    #@4a
    .line 1038
    .end local v1    # "c":C
    .end local v3    # "d":I
    .end local v6    # "pres":Z
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 1077
    .restart local v1    # "c":C
    .restart local v2    # "d":I
    .restart local v6    # "pres":Z
    :cond_4
    const/4 v6, 0x1

    #@4e
    goto :goto_2

    #@4f
    .line 1082
    .end local v2    # "d":I
    .restart local v3    # "d":I
    :cond_5
    const/4 v4, 0x1

    #@50
    .line 1083
    const/4 v6, 0x1

    #@51
    move v2, v3

    #@52
    .end local v3    # "d":I
    .restart local v2    # "d":I
    goto :goto_2

    #@53
    .line 1088
    .end local v2    # "d":I
    .restart local v3    # "d":I
    :cond_6
    add-int/lit8 v2, v3, 0x1

    #@55
    .end local v3    # "d":I
    .restart local v2    # "d":I
    aput-char v1, v0, v3

    #@57
    .line 1089
    const/4 v6, 0x0

    #@58
    goto :goto_2

    #@59
    .line 1093
    .end local v1    # "c":C
    .end local v2    # "d":I
    .restart local v3    # "d":I
    :cond_7
    if-eqz p2, :cond_a

    #@5b
    const/4 v11, 0x1

    #@5c
    if-gt v11, v3, :cond_a

    #@5e
    add-int/lit8 v11, v3, -0x1

    #@60
    aget-char v11, v0, v11

    #@62
    const/16 v12, 0x20

    #@64
    if-ne v12, v11, :cond_a

    #@66
    .line 1095
    const/4 v4, 0x1

    #@67
    .line 1097
    add-int/lit8 v2, v3, -0x1

    #@69
    .line 1100
    .end local v3    # "d":I
    .restart local v2    # "d":I
    :goto_3
    const/4 v9, 0x0

    #@6a
    .line 1102
    .local v9, "start":I
    if-eqz p1, :cond_8

    #@6c
    if-lez v2, :cond_8

    #@6e
    const/4 v11, 0x0

    #@6f
    aget-char v11, v0, v11

    #@71
    const/16 v12, 0x20

    #@73
    if-ne v12, v11, :cond_8

    #@75
    .line 1104
    const/4 v4, 0x1

    #@76
    .line 1106
    const/4 v9, 0x1

    #@77
    .line 1109
    :cond_8
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    #@7a
    move-result-object v10

    #@7b
    .line 1111
    .local v10, "xsf":Lorg/apache/xml/utils/XMLStringFactory;
    if-eqz v4, :cond_9

    #@7d
    new-instance v11, Ljava/lang/String;

    #@7f
    sub-int v12, v2, v9

    #@81
    invoke-direct {v11, v0, v9, v12}, Ljava/lang/String;-><init>([CII)V

    #@84
    invoke-virtual {v10, v11}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    #@87
    move-result-object p0

    #@88
    .end local p0    # "this":Lorg/apache/xpath/objects/XString;
    :cond_9
    return-object p0

    #@89
    .end local v2    # "d":I
    .end local v9    # "start":I
    .end local v10    # "xsf":Lorg/apache/xml/utils/XMLStringFactory;
    .restart local v3    # "d":I
    .restart local p0    # "this":Lorg/apache/xpath/objects/XString;
    :cond_a
    move v2, v3

    #@8a
    .line 1094
    .end local v3    # "d":I
    .restart local v2    # "d":I
    goto :goto_3
.end method

.method public getChars(II[CI)V
    .locals 1
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    #@0
    .prologue
    .line 279
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    #@7
    .line 277
    return-void
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 72
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 83
    const-string/jumbo v0, "#STRING"

    #@3
    return-object v0
.end method

.method public hasString()Z
    .locals 1

    #@0
    .prologue
    .line 93
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 627
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public indexOf(I)I
    .locals 1
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 649
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public indexOf(II)I
    .locals 1
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    .line 682
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 752
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    .line 805
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public indexOf(Lorg/apache/xml/utils/XMLString;)I
    .locals 2
    .param p1, "str"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 774
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public lastIndexOf(I)I
    .locals 1
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 702
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public lastIndexOf(II)I
    .locals 1
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    .line 730
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 828
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    .line 853
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 235
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public num()D
    .locals 2

    #@0
    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->toDouble()D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public rtf(Lorg/apache/xpath/XPathContext;)I
    .locals 2
    .param p1, "support"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 182
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    #@3
    move-result-object v0

    #@4
    .line 184
    .local v0, "frag":Lorg/apache/xml/dtm/DTM;
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    #@b
    .line 186
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 525
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XString;->startsWith(Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "toffset"    # I

    #@0
    .prologue
    .line 506
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;)Z
    .locals 1
    .param p1, "prefix"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 591
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XString;->startsWith(Lorg/apache/xml/utils/XMLString;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public startsWith(Lorg/apache/xml/utils/XMLString;I)Z
    .locals 7
    .param p1, "prefix"    # Lorg/apache/xml/utils/XMLString;
    .param p2, "toffset"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 550
    move v3, p2

    #@2
    .line 551
    .local v3, "to":I
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->length()I

    #@5
    move-result v2

    #@6
    .line 552
    .local v2, "tlim":I
    const/4 v1, 0x0

    #@7
    .line 553
    .local v1, "po":I
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    #@a
    move-result v0

    #@b
    .line 556
    .local v0, "pc":I
    if-ltz p2, :cond_0

    #@d
    sub-int v4, v2, v0

    #@f
    if-le p2, v4, :cond_2

    #@11
    .line 558
    :cond_0
    return v6

    #@12
    .line 568
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@14
    .line 569
    add-int/lit8 v1, v1, 0x1

    #@16
    .line 561
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@18
    if-ltz v0, :cond_3

    #@1a
    .line 563
    invoke-virtual {p0, v3}, Lorg/apache/xpath/objects/XString;->charAt(I)C

    #@1d
    move-result v4

    #@1e
    invoke-interface {p1, v1}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    #@21
    move-result v5

    #@22
    if-eq v4, v5, :cond_1

    #@24
    .line 565
    return v6

    #@25
    .line 572
    :cond_3
    const/4 v4, 0x1

    #@26
    return v4
.end method

.method public str()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/xpath/objects/XString;->m_obj:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xpath/objects/XString;->m_obj:Ljava/lang/Object;

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    const-string/jumbo v0, ""

    #@c
    goto :goto_0
.end method

.method public substring(I)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "beginIndex"    # I

    #@0
    .prologue
    .line 875
    new-instance v0, Lorg/apache/xpath/objects/XString;

    #@2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method public substring(II)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    .line 896
    new-instance v0, Lorg/apache/xpath/objects/XString;

    #@2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method public toDouble()D
    .locals 7

    #@0
    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->trim()Lorg/apache/xml/utils/XMLString;

    #@3
    move-result-object v3

    #@4
    .line 123
    .local v3, "s":Lorg/apache/xml/utils/XMLString;
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    #@6
    .line 124
    .local v4, "result":D
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/apache/xml/utils/XMLString;->length()I

    #@a
    move-result v6

    #@b
    if-ge v2, v6, :cond_2

    #@d
    .line 126
    invoke-interface {v3, v2}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    #@10
    move-result v0

    #@11
    .line 127
    .local v0, "c":C
    const/16 v6, 0x2d

    #@13
    if-eq v0, v6, :cond_1

    #@15
    const/16 v6, 0x2e

    #@17
    if-eq v0, v6, :cond_1

    #@19
    const/16 v6, 0x30

    #@1b
    if-lt v0, v6, :cond_0

    #@1d
    const/16 v6, 0x39

    #@1f
    if-le v0, v6, :cond_1

    #@21
    .line 130
    :cond_0
    return-wide v4

    #@22
    .line 124
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 135
    .end local v0    # "c":C
    :cond_2
    :try_start_0
    invoke-interface {v3}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-wide v4

    #@2d
    .line 138
    :goto_1
    return-wide v4

    #@2e
    .line 136
    :catch_0
    move-exception v1

    #@2f
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method public toLowerCase()Lorg/apache/xml/utils/XMLString;
    .locals 2

    #@0
    .prologue
    .line 942
    new-instance v0, Lorg/apache/xpath/objects/XString;

    #@2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 927
    new-instance v0, Lorg/apache/xpath/objects/XString;

    #@2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method public toUpperCase()Lorg/apache/xml/utils/XMLString;
    .locals 2

    #@0
    .prologue
    .line 986
    new-instance v0, Lorg/apache/xpath/objects/XString;

    #@2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Lorg/apache/xml/utils/XMLString;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 955
    new-instance v0, Lorg/apache/xpath/objects/XString;

    #@2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method public trim()Lorg/apache/xml/utils/XMLString;
    .locals 2

    #@0
    .prologue
    .line 996
    new-instance v0, Lorg/apache/xpath/objects/XString;

    #@2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XString;->str()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 0

    #@0
    .prologue
    .line 159
    return-object p0
.end method
