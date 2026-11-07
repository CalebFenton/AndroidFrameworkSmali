.class public Lorg/apache/xpath/objects/XStringForChars;
.super Lorg/apache/xpath/objects/XString;
.source "XStringForChars.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x1f0533052362cf23L


# instance fields
.field greylist m_length:I

.field greylist m_start:I

.field protected greylist m_strCache:Ljava/lang/String;


# direct methods
.method private constructor greylist <init>(Ljava/lang/String;)V
    .registers 3

    .line 67
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    .line 68
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ER_XSTRINGFORCHARS_CANNOT_TAKE_STRING"

    .line 69
    invoke-static {v0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor greylist <init>([CII)V
    .registers 5

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    .line 52
    iput p2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    .line 53
    iput p3, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    if-eqz p1, :cond_d

    return-void

    .line 55
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_FASTSTRINGBUFFER_CANNOT_BE_NULL"

    .line 56
    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public greylist appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 4

    .line 89
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    iget v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    iget p0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    invoke-virtual {p1, v0, v1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    return-void
.end method

.method public greylist charAt(I)C
    .registers 3

    .line 187
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    iget p0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    add-int/2addr p1, p0

    aget-char p0, v0, p1

    return p0
.end method

.method public greylist dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    iget v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    iget p0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

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

    .line 143
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    iget v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    iget p0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    invoke-interface {p1, v0, v1, p0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public greylist fsb()Lorg/apache/xml/utils/FastStringBuffer;
    .registers 3

    .line 79
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_FSB_NOT_SUPPORTED_XSTRINGFORCHARS"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist getChars(II[CI)V
    .registers 6

    .line 213
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    iget p0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    add-int/2addr p0, p1

    invoke-static {v0, p0, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public greylist hasString()Z
    .registers 1

    .line 100
    iget-object p0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public greylist length()I
    .registers 1

    .line 169
    iget p0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    return p0
.end method

.method public greylist object()Ljava/lang/Object;
    .registers 1

    .line 126
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForChars;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist str()Ljava/lang/String;
    .registers 5

    .line 111
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 112
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v1, [C

    iget v2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    iget v3, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    .line 114
    :cond_13
    iget-object p0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    return-object p0
.end method
