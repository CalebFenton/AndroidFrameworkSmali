.class public Lorg/apache/xpath/objects/XStringForFSB;
.super Lorg/apache/xpath/objects/XString;
.source "XStringForFSB.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x154673048d1b5474L


# instance fields
.field protected greylist m_hash:I

.field greylist m_length:I

.field greylist m_start:I

.field protected greylist m_strCache:Ljava/lang/String;


# direct methods
.method private constructor greylist <init>(Ljava/lang/String;)V
    .registers 3

    .line 77
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_hash:I

    .line 79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ER_FSB_CANNOT_TAKE_STRING"

    .line 80
    invoke-static {v0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor greylist <init>(Lorg/apache/xml/utils/FastStringBuffer;II)V
    .registers 6

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_hash:I

    .line 61
    iput p2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    .line 62
    iput p3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-eqz p1, :cond_10

    return-void

    .line 65
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_FASTSTRINGBUFFER_CANNOT_BE_NULL"

    .line 66
    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist isSpace(C)Z
    .registers 1

    .line 837
    invoke-static {p0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public greylist appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 2

    .line 101
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public greylist charAt(I)C
    .registers 3

    .line 228
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result p0

    return p0
.end method

.method public greylist compareTo(Lorg/apache/xml/utils/XMLString;)I
    .registers 9

    .line 475
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    .line 476
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v1

    .line 477
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 478
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v3

    .line 479
    iget p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    const/4 v4, 0x0

    :goto_11
    add-int/lit8 v5, v2, -0x1

    if-eqz v2, :cond_27

    .line 484
    invoke-virtual {v3, p0}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v2

    .line 485
    invoke-interface {p1, v4}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v6

    if-eq v2, v6, :cond_21

    sub-int/2addr v2, v6

    return v2

    :cond_21
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_11

    :cond_27
    sub-int/2addr v0, v1

    return v0
.end method

.method public greylist compareToIgnoreCase(Lorg/apache/xml/utils/XMLString;)I
    .registers 9

    .line 521
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    .line 522
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v1

    .line 523
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 524
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v3

    .line 525
    iget p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    const/4 v4, 0x0

    :goto_11
    add-int/lit8 v5, v2, -0x1

    if-eqz v2, :cond_2f

    .line 530
    invoke-virtual {v3, p0}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 531
    invoke-interface {p1, v4}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-eq v2, v6, :cond_29

    sub-int/2addr v2, v6

    return v2

    :cond_29
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_11

    :cond_2f
    sub-int/2addr v0, v1

    return v0
.end method

.method public greylist concat(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;
    .registers 3

    .line 815
    new-instance v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

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

    .line 199
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, p1, v1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXComment(Lorg/xml/sax/ext/LexicalHandler;II)V

    return-void
.end method

.method public greylist dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, p1, v1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 424
    :cond_4
    instance-of v0, p1, Lorg/apache/xpath/objects/XNumber;

    if-eqz v0, :cond_d

    .line 425
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 430
    :cond_d
    instance-of v0, p1, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v0, :cond_16

    .line 431
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 432
    :cond_16
    instance-of v0, p1, Lorg/apache/xpath/objects/XStringForFSB;

    if-eqz v0, :cond_21

    .line 433
    check-cast p1, Lorg/apache/xml/utils/XMLString;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XStringForFSB;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result p0

    return p0

    .line 435
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XStringForFSB;->equals(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist equals(Ljava/lang/String;)Z
    .registers 8

    .line 379
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    .line 381
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_27

    .line 383
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v1

    .line 384
    iget p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    move v3, v2

    :goto_10
    add-int/lit8 v4, v0, -0x1

    if-eqz v0, :cond_25

    .line 389
    invoke-virtual {v1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v0, v5, :cond_1f

    return v2

    :cond_1f
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_10

    :cond_25
    const/4 p0, 0x1

    return p0

    :cond_27
    return v2
.end method

.method public greylist equals(Lorg/apache/xml/utils/XMLString;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 297
    :cond_4
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    .line 299
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2a

    .line 301
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v2

    .line 302
    iget p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    move v4, v3

    :goto_14
    add-int/lit8 v5, v1, -0x1

    if-eqz v1, :cond_29

    .line 307
    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v1

    invoke-interface {p1, v4}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v6

    if-eq v1, v6, :cond_23

    return v3

    :cond_23
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_14

    :cond_29
    return v0

    :cond_2a
    return v3
.end method

.method public greylist equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 338
    :cond_4
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 339
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    return p0

    .line 341
    :cond_10
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p1

    .line 342
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3a

    .line 346
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v2

    .line 347
    iget p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    move v4, v3

    :goto_24
    add-int/lit8 v5, v1, -0x1

    if-eqz v1, :cond_39

    .line 352
    invoke-virtual {v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v1, v6, :cond_33

    return v3

    :cond_33
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_24

    :cond_39
    return v0

    :cond_3a
    return v3
.end method

.method public greylist equalsIgnoreCase(Ljava/lang/String;)Z
    .registers 4

    .line 455
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 456
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public greylist fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;
    .registers 16

    .line 858
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int/2addr v1, v0

    .line 859
    new-array v0, v0, [C

    .line 860
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v2

    .line 867
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_11
    const/16 v8, 0x20

    const/4 v9, 0x1

    if-ge v3, v1, :cond_4c

    .line 869
    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v10

    .line 871
    invoke-static {v10}, Lorg/apache/xpath/objects/XStringForFSB;->isSpace(C)Z

    move-result v11

    if-eqz v11, :cond_43

    if-nez v6, :cond_40

    if-eq v8, v10, :cond_25

    move v7, v9

    :cond_25
    add-int/lit8 v10, v5, 0x1

    .line 880
    aput-char v8, v0, v5

    if-eqz p3, :cond_3e

    if-eqz v10, :cond_3e

    .line 884
    aget-char v5, v0, v5

    const/16 v8, 0x2e

    if-eq v5, v8, :cond_3c

    const/16 v8, 0x21

    if-eq v5, v8, :cond_3c

    const/16 v8, 0x3f

    if-eq v5, v8, :cond_3c

    goto :goto_3e

    :cond_3c
    :goto_3c
    move v5, v10

    goto :goto_49

    :cond_3e
    :goto_3e
    move v6, v9

    goto :goto_3c

    :cond_40
    move v6, v9

    move v7, v6

    goto :goto_49

    :cond_43
    add-int/lit8 v6, v5, 0x1

    .line 905
    aput-char v10, v0, v5

    move v5, v6

    move v6, v4

    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_4c
    if-eqz p2, :cond_59

    if-gt v9, v5, :cond_59

    add-int/lit8 p2, v5, -0x1

    .line 910
    aget-char p2, v0, p2

    if-ne v8, p2, :cond_59

    add-int/lit8 v5, v5, -0x1

    move v7, v9

    :cond_59
    if-eqz p1, :cond_63

    if-lez v5, :cond_63

    .line 919
    aget-char p1, v0, v4

    if-ne v8, p1, :cond_63

    move v4, v9

    goto :goto_64

    :cond_63
    move v9, v7

    .line 926
    :goto_64
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object p1

    if-eqz v9, :cond_6f

    sub-int/2addr v5, v4

    .line 928
    invoke-virtual {p1, v0, v4, v5}, Lorg/apache/xml/utils/XMLStringFactory;->newstr([CII)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    :cond_6f
    return-object p0
.end method

.method public greylist fsb()Lorg/apache/xml/utils/FastStringBuffer;
    .registers 1

    .line 90
    iget-object p0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast p0, Lorg/apache/xml/utils/FastStringBuffer;

    return-object p0
.end method

.method public greylist getChars(II[CI)V
    .registers 7

    sub-int/2addr p2, p1

    .line 259
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-le p2, v0, :cond_6

    move p2, v0

    .line 262
    :cond_6
    array-length v0, p3

    sub-int/2addr v0, p4

    if-le p2, v0, :cond_c

    .line 263
    array-length p2, p3

    sub-int/2addr p2, p4

    .line 265
    :cond_c
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    .line 267
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object p2

    .line 269
    iget p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int/2addr p1, p0

    :goto_17
    if-ge p1, v0, :cond_25

    add-int/lit8 p0, p4, 0x1

    .line 271
    invoke-virtual {p2, p1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result v1

    aput-char v1, p3, p4

    add-int/lit8 p1, p1, 0x1

    move p4, p0

    goto :goto_17

    :cond_25
    return-void
.end method

.method public greylist hasString()Z
    .registers 1

    .line 111
    iget-object p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 586
    invoke-super {p0}, Lorg/apache/xpath/objects/XString;->hashCode()I

    move-result p0

    return p0
.end method

.method public greylist indexOf(I)I
    .registers 3

    const/4 v0, 0x0

    .line 676
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XStringForFSB;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public greylist indexOf(II)I
    .registers 7

    .line 710
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    add-int/2addr v0, v1

    .line 711
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v1

    const/4 v2, -0x1

    if-gez p2, :cond_e

    const/4 p2, 0x0

    goto :goto_13

    .line 717
    :cond_e
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-lt p2, v3, :cond_13

    return v2

    .line 724
    :cond_13
    :goto_13
    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int/2addr v3, p2

    :goto_16
    if-ge v3, v0, :cond_25

    .line 726
    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result p2

    if-ne p2, p1, :cond_22

    .line 728
    iget p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    sub-int/2addr v3, p0

    return v3

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_25
    return v2
.end method

.method public greylist length()I
    .registers 1

    .line 210
    iget p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    return p0
.end method

.method public greylist object()Ljava/lang/Object;
    .registers 1

    .line 128
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist startsWith(Lorg/apache/xml/utils/XMLString;)Z
    .registers 3

    const/4 v0, 0x0

    .line 654
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XStringForFSB;->startsWith(Lorg/apache/xml/utils/XMLString;I)Z

    move-result p0

    return p0
.end method

.method public greylist startsWith(Lorg/apache/xml/utils/XMLString;I)Z
    .registers 8

    .line 611
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 612
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int/2addr v1, p2

    .line 615
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ltz p2, :cond_2b

    .line 618
    iget p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    sub-int/2addr p0, v2

    if-le p2, p0, :cond_14

    goto :goto_2b

    :cond_14
    move p0, v3

    :goto_15
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_29

    .line 625
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result p2

    invoke-interface {p1, p0}, Lorg/apache/xml/utils/XMLString;->charAt(I)C

    move-result v4

    if-eq p2, v4, :cond_24

    return v3

    :cond_24
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_15

    :cond_29
    const/4 p0, 0x1

    return p0

    :cond_2b
    :goto_2b
    return v3
.end method

.method public greylist str()Ljava/lang/String;
    .registers 4

    .line 139
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 141
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v2, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    .line 167
    :cond_12
    iget-object p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    return-object p0
.end method

.method public greylist substring(I)Lorg/apache/xml/utils/XMLString;
    .registers 4

    .line 755
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    sub-int/2addr v0, p1

    if-gtz v0, :cond_8

    .line 758
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0

    .line 761
    :cond_8
    iget v1, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int/2addr v1, p1

    .line 763
    new-instance p1, Lorg/apache/xpath/objects/XStringForFSB;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object p0

    invoke-direct {p1, p0, v1, v0}, Lorg/apache/xpath/objects/XStringForFSB;-><init>(Lorg/apache/xml/utils/FastStringBuffer;II)V

    return-object p1
.end method

.method public greylist substring(II)Lorg/apache/xml/utils/XMLString;
    .registers 4

    sub-int/2addr p2, p1

    .line 788
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-le p2, v0, :cond_6

    move p2, v0

    :cond_6
    if-gtz p2, :cond_b

    .line 792
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0

    .line 795
    :cond_b
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    add-int/2addr v0, p1

    .line 797
    new-instance p1, Lorg/apache/xpath/objects/XStringForFSB;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object p0

    invoke-direct {p1, p0, v0, p2}, Lorg/apache/xpath/objects/XStringForFSB;-><init>(Lorg/apache/xml/utils/FastStringBuffer;II)V

    return-object p1
.end method

.method public greylist toDouble()D
    .registers 7

    .line 949
    iget v0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_7

    return-wide v1

    .line 953
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForFSB;->fsb()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    iget v3, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_start:I

    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 962
    :goto_14
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-ge v3, v4, :cond_26

    .line 963
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_26

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 965
    :cond_26
    :goto_26
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-ne v3, v4, :cond_2b

    return-wide v1

    .line 966
    :cond_2b
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_35

    :cond_33
    add-int/lit8 v3, v3, 0x1

    .line 968
    :cond_35
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-ge v3, v4, :cond_49

    .line 969
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_33

    const/16 v5, 0x30

    if-lt v4, v5, :cond_49

    const/16 v5, 0x39

    if-le v4, v5, :cond_33

    .line 973
    :cond_49
    :goto_49
    iget v4, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-ge v3, v4, :cond_5b

    .line 974
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_58

    goto :goto_5b

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 976
    :cond_5b
    :goto_5b
    iget p0, p0, Lorg/apache/xpath/objects/XStringForFSB;->m_length:I

    if-eq v3, p0, :cond_60

    return-wide v1

    .line 980
    :cond_60
    :try_start_60
    new-instance p0, Ljava/lang/Double;

    invoke-direct {p0, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_69} :catch_6a

    return-wide v0

    :catch_6a
    return-wide v1
.end method

.method public greylist trim()Lorg/apache/xml/utils/XMLString;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 825
    invoke-virtual {p0, v0, v0, v1}, Lorg/apache/xpath/objects/XStringForFSB;->fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0
.end method
