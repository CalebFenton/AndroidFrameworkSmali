.class public Lorg/apache/xpath/objects/XStringForChars;
.super Lorg/apache/xpath/objects/XString;
.source "XStringForChars.java"


# static fields
.field static final serialVersionUID:J = -0x1f0533052362cf23L


# instance fields
.field m_length:I

.field m_start:I

.field protected m_strCache:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 67
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@4
    .line 40
    iput-object v2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    #@6
    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 69
    const-string/jumbo v1, "ER_XSTRINGFORCHARS_CANNOT_TAKE_STRING"

    #@b
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method

.method public constructor <init>([CII)V
    .locals 3
    .param p1, "val"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/Object;)V

    #@4
    .line 40
    iput-object v2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    #@6
    .line 52
    iput p2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    #@8
    .line 53
    iput p3, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    #@a
    .line 54
    if-nez p1, :cond_0

    #@c
    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    .line 56
    const-string/jumbo v1, "ER_FASTSTRINGBUFFER_CANNOT_BE_NULL"

    #@11
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 3
    .param p1, "fsb"    # Lorg/apache/xml/utils/FastStringBuffer;

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_obj:Ljava/lang/Object;

    #@2
    check-cast v0, [C

    #@4
    iget v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    #@6
    iget v2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    #@8
    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    #@b
    .line 87
    return-void
.end method

.method public charAt(I)C
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_obj:Ljava/lang/Object;

    #@2
    check-cast v0, [C

    #@4
    iget v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    #@6
    add-int/2addr v1, p1

    #@7
    aget-char v0, v0, v1

    #@9
    return v0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 3
    .param p1, "lh"    # Lorg/xml/sax/ext/LexicalHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_obj:Ljava/lang/Object;

    #@2
    check-cast v0, [C

    #@4
    iget v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    #@6
    iget v2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    #@8
    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    #@b
    .line 156
    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 3
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_obj:Ljava/lang/Object;

    #@2
    check-cast v0, [C

    #@4
    iget v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    #@6
    iget v2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    #@8
    invoke-interface {p1, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@b
    .line 141
    return-void
.end method

.method public fsb()Lorg/apache/xml/utils/FastStringBuffer;
    .locals 3

    #@0
    .prologue
    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "ER_FSB_NOT_SUPPORTED_XSTRINGFORCHARS"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_obj:Ljava/lang/Object;

    #@2
    check-cast v0, [C

    #@4
    iget v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    #@6
    add-int/2addr v1, p1

    #@7
    invoke-static {v0, v1, p3, p4, p2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@a
    .line 211
    return-void
.end method

.method public hasString()Z
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 169
    iget v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    #@2
    return v0
.end method

.method public object()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XStringForChars;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public str()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 112
    new-instance v1, Ljava/lang/String;

    #@6
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_obj:Ljava/lang/Object;

    #@8
    check-cast v0, [C

    #@a
    iget v2, p0, Lorg/apache/xpath/objects/XStringForChars;->m_start:I

    #@c
    iget v3, p0, Lorg/apache/xpath/objects/XStringForChars;->m_length:I

    #@e
    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    #@11
    iput-object v1, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    #@13
    .line 114
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    #@15
    return-object v0
.end method
