.class public final Lorg/apache/xml/serializer/AttributesImplSerializer;
.super Lorg/xml/sax/helpers/AttributesImpl;
.source "AttributesImplSerializer.java"


# static fields
.field private static final MAX:I = 0xc

.field private static final MAXMinus1:I = 0xb


# instance fields
.field private final m_buff:Ljava/lang/StringBuffer;

.field private final m_indexFromQName:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    #@3
    .line 49
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    #@a
    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@f
    iput-object v0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    #@11
    .line 39
    return-void
.end method

.method private switchOverToHash(I)V
    .locals 8
    .param p1, "numAtts"    # I

    #@0
    .prologue
    .line 149
    const/4 v1, 0x0

    #@1
    .local v1, "index":I
    :goto_0
    if-ge v1, p1, :cond_0

    #@3
    .line 151
    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 152
    .local v4, "qName":Ljava/lang/String;
    new-instance v0, Ljava/lang/Integer;

    #@9
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@c
    .line 153
    .local v0, "i":Ljava/lang/Integer;
    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    #@e
    invoke-virtual {v6, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 156
    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getURI(I)Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 157
    .local v5, "uri":Ljava/lang/String;
    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getLocalName(I)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 158
    .local v3, "local":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    #@1b
    const/4 v7, 0x0

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    #@1f
    .line 159
    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    #@21
    const/16 v7, 0x7b

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    move-result-object v6

    #@2b
    const/16 v7, 0x7d

    #@2d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    .line 160
    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    #@36
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 161
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    #@3c
    invoke-virtual {v6, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 149
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .line 147
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "local":Ljava/lang/String;
    .end local v4    # "qName":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public final addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "val"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0xb

    #@2
    .line 110
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    #@5
    move-result v1

    #@6
    .line 111
    .local v1, "index":I
    invoke-super/range {p0 .. p5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 115
    if-ge v1, v3, :cond_0

    #@b
    .line 117
    return-void

    #@c
    .line 119
    :cond_0
    if-ne v1, v3, :cond_1

    #@e
    .line 121
    const/16 v3, 0xc

    #@10
    invoke-direct {p0, v3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->switchOverToHash(I)V

    #@13
    .line 136
    :goto_0
    return-void

    #@14
    .line 127
    :cond_1
    new-instance v0, Ljava/lang/Integer;

    #@16
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@19
    .line 128
    .local v0, "i":Ljava/lang/Integer;
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    #@1b
    invoke-virtual {v3, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 131
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    #@20
    const/4 v4, 0x0

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    #@24
    .line 132
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    #@26
    const/16 v4, 0x7b

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    move-result-object v3

    #@30
    const/16 v4, 0x7d

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    .line 133
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 134
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    #@41
    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    goto :goto_0
.end method

.method public final clear()V
    .locals 2

    #@0
    .prologue
    .line 173
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    #@3
    move-result v0

    #@4
    .line 174
    .local v0, "len":I
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    #@7
    .line 175
    const/16 v1, 0xc

    #@9
    if-gt v1, v0, :cond_0

    #@b
    .line 179
    iget-object v1, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    #@d
    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    #@10
    .line 170
    :cond_0
    return-void
.end method

.method public final getIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "qname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    #@3
    move-result v2

    #@4
    const/16 v3, 0xc

    #@6
    if-ge v2, v3, :cond_0

    #@8
    .line 79
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;)I

    #@b
    move-result v1

    #@c
    .line 80
    .local v1, "index":I
    return v1

    #@d
    .line 84
    .end local v1    # "index":I
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    #@f
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/Integer;

    #@15
    .line 85
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@17
    .line 86
    const/4 v1, -0x1

    #@18
    .line 89
    .restart local v1    # "index":I
    :goto_0
    return v1

    #@19
    .line 88
    .end local v1    # "index":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v1

    #@1d
    .restart local v1    # "index":I
    goto :goto_0
.end method

.method public final getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    #@3
    move-result v3

    #@4
    const/16 v4, 0xc

    #@6
    if-ge v3, v4, :cond_0

    #@8
    .line 221
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    move-result v1

    #@c
    .line 222
    .local v1, "index":I
    return v1

    #@d
    .line 227
    .end local v1    # "index":I
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    #@f
    const/4 v4, 0x0

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    #@13
    .line 228
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    #@15
    const/16 v4, 0x7b

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v3

    #@1f
    const/16 v4, 0x7d

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    .line 229
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 230
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    #@30
    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Ljava/lang/Integer;

    #@36
    .line 231
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@38
    .line 232
    const/4 v1, -0x1

    #@39
    .line 235
    .restart local v1    # "index":I
    :goto_0
    return v1

    #@3a
    .line 234
    .end local v1    # "index":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@3d
    move-result v1

    #@3e
    .restart local v1    # "index":I
    goto :goto_0
.end method

.method public final setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 195
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    #@3
    .line 200
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    #@6
    move-result v0

    #@7
    .line 201
    .local v0, "numAtts":I
    const/16 v1, 0xc

    #@9
    if-gt v1, v0, :cond_0

    #@b
    .line 202
    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->switchOverToHash(I)V

    #@e
    .line 192
    :cond_0
    return-void
.end method
