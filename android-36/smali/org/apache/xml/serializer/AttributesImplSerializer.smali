.class public final Lorg/apache/xml/serializer/AttributesImplSerializer;
.super Lorg/xml/sax/helpers/AttributesImpl;
.source "AttributesImplSerializer.java"


# static fields
.field private static final greylist MAX:I = 0xc

.field private static final greylist MAXMinus1:I = 0xb


# instance fields
.field private final greylist m_buff:Ljava/lang/StringBuffer;

.field private final greylist m_indexFromQName:Ljava/util/Hashtable;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    return-void
.end method

.method private greylist switchOverToHash(I)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_3f

    .line 151
    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 153
    iget-object v4, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getURI(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 158
    iget-object v5, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 159
    iget-object v5, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x7d

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v2, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    iget-object v4, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3f
    return-void
.end method


# virtual methods
.method public final whitelist test-api addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 110
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    .line 111
    invoke-super/range {p0 .. p5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p4, 0xb

    if-ge v0, p4, :cond_c

    return-void

    :cond_c
    if-ne v0, p4, :cond_14

    const/16 p1, 0xc

    .line 121
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/AttributesImplSerializer;->switchOverToHash(I)V

    return-void

    .line 127
    :cond_14
    new-instance p4, Ljava/lang/Integer;

    invoke-direct {p4, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 128
    iget-object p5, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {p5, p3, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/4 p5, 0x0

    invoke-virtual {p3, p5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 132
    iget-object p3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/16 p5, 0x7b

    invoke-virtual {p3, p5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x7d

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget-object p1, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    iget-object p0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final whitelist test-api clear()V
    .registers 3

    .line 173
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    .line 174
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    const/16 v1, 0xc

    if-gt v1, v0, :cond_10

    .line 179
    iget-object p0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    :cond_10
    return-void
.end method

.method public final whitelist test-api getIndex(Ljava/lang/String;)I
    .registers 4

    .line 75
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_d

    .line 79
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 84
    :cond_d
    iget-object p0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_19

    const/4 p0, -0x1

    return p0

    .line 88
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final whitelist test-api getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 217
    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_d

    .line 221
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 227
    :cond_d
    iget-object v0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 228
    iget-object v0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x7d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iget-object p1, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    iget-object p0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_37

    const/4 p0, -0x1

    return p0

    .line 234
    :cond_37
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final whitelist test-api setAttributes(Lorg/xml/sax/Attributes;)V
    .registers 3

    .line 195
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 200
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    const/16 v0, 0xc

    if-gt v0, p1, :cond_e

    .line 202
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/AttributesImplSerializer;->switchOverToHash(I)V

    :cond_e
    return-void
.end method
