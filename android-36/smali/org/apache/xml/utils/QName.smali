.class public Lorg/apache/xml/utils/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final greylist S_XMLNAMESPACEURI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field static final whitelist serialVersionUID:J = 0x67ca946832676e0L


# instance fields
.field protected greylist _localName:Ljava/lang/String;

.field protected greylist _namespaceURI:Ljava/lang/String;

.field protected greylist _prefix:Ljava/lang/String;

.field private greylist m_hashCode:I


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    if-eqz p4, :cond_2f

    .line 163
    invoke-static {p3}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_23

    if-eqz p2, :cond_2f

    .line 169
    invoke-static {p2}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_17

    goto :goto_2f

    .line 171
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_PREFIX_INVALID"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_2f
    :goto_2f
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    .line 178
    iput-object p3, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    return-void

    .line 158
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_NULL"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    if-eqz p3, :cond_1b

    .line 116
    invoke-static {p2}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    goto :goto_1b

    .line 118
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_1b
    :goto_1b
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    return-void

    .line 111
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_NULL"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/util/Stack;)V
    .registers 4

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/util/Stack;Z)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/util/Stack;Z)V
    .registers 12

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5f

    const/4 v2, 0x0

    .line 256
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 258
    const-string v3, "xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 260
    const-string p2, "http://www.w3.org/XML/1998/namespace"

    goto :goto_4c

    .line 263
    :cond_1c
    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    return-void

    .line 269
    :cond_25
    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    move-object v3, v1

    :goto_2d
    if-ltz v4, :cond_4b

    .line 273
    invoke-virtual {p2, v4}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xml/utils/NameSpace;

    :goto_35
    const/4 v6, -0x1

    if-eqz v5, :cond_49

    .line 277
    iget-object v7, v5, Lorg/apache/xml/utils/NameSpace;->m_prefix:Ljava/lang/String;

    if-eqz v7, :cond_46

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 279
    iget-object v3, v5, Lorg/apache/xml/utils/NameSpace;->m_uri:Ljava/lang/String;

    move v4, v6

    goto :goto_49

    .line 285
    :cond_46
    iget-object v5, v5, Lorg/apache/xml/utils/NameSpace;->m_next:Lorg/apache/xml/utils/NameSpace;

    goto :goto_35

    :cond_49
    :goto_49
    add-int/2addr v4, v6

    goto :goto_2d

    :cond_4b
    move-object p2, v3

    :goto_4c
    if-eqz p2, :cond_4f

    goto :goto_61

    .line 292
    :cond_4f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_PREFIX_MUST_RESOLVE"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    .line 293
    invoke-static {p1, p2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5f
    move-object p2, v1

    move-object v2, p2

    :goto_61
    if-gez v0, :cond_64

    goto :goto_6a

    :cond_64
    add-int/lit8 v0, v0, 0x1

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_6a
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    if-eqz p3, :cond_83

    if-eqz p1, :cond_77

    .line 304
    invoke-static {p1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_77

    goto :goto_83

    .line 306
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {p1, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 310
    :cond_83
    :goto_83
    iput-object p2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 311
    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 4

    const/4 v0, 0x0

    .line 414
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V
    .registers 8

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 431
    iput-object v0, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    const/16 v1, 0x3a

    .line 433
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_43

    const/4 v2, 0x0

    .line 437
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 439
    const-string v3, "xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 441
    const-string p2, "http://www.w3.org/XML/1998/namespace"

    iput-object p2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    goto :goto_26

    .line 445
    :cond_20
    invoke-interface {p2, v2}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 448
    :goto_26
    iget-object p2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    if-eqz p2, :cond_33

    add-int/lit8 v1, v1, 0x1

    .line 455
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    goto :goto_48

    .line 450
    :cond_33
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_PREFIX_MUST_RESOLVE"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    .line 451
    invoke-static {p1, p2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    if-eqz v1, :cond_6e

    .line 466
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    move-object v2, v0

    :goto_48
    if-eqz p3, :cond_61

    .line 471
    iget-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    if-eqz p1, :cond_55

    invoke-static {p1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    goto :goto_61

    .line 473
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 479
    :cond_61
    :goto_61
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    .line 480
    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    return-void

    .line 459
    :cond_6e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NAME_CANT_START_WITH_COLON"

    .line 460
    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor greylist <init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 5

    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/apache/xml/utils/PrefixResolver;Z)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/apache/xml/utils/PrefixResolver;Z)V
    .registers 9

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    const/16 v1, 0x3a

    .line 347
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_48

    if-eqz p2, :cond_48

    const/4 v2, 0x0

    .line 353
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 355
    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    .line 357
    const-string v3, "xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 359
    const-string p2, "http://www.w3.org/XML/1998/namespace"

    iput-object p2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    goto :goto_33

    .line 363
    :cond_24
    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    return-void

    .line 369
    :cond_2d
    invoke-interface {p3, v2, p2}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 373
    :goto_33
    iget-object p2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    if-eqz p2, :cond_38

    goto :goto_48

    .line 375
    :cond_38
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_PREFIX_MUST_RESOLVE"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    .line 376
    invoke-static {p1, p2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    :goto_48
    if-gez v1, :cond_4b

    goto :goto_51

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    .line 389
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_51
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    if-eqz p4, :cond_6a

    if-eqz p1, :cond_5e

    .line 393
    invoke-static {p1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_6a

    .line 395
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 400
    :cond_6a
    :goto_6a
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Z)V
    .registers 4

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_1b

    .line 213
    invoke-static {p1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_1b

    .line 215
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_INVALID"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :cond_1b
    :goto_1b
    iput-object v0, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    return-void

    .line 208
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_ARG_LOCALNAME_NULL"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist getLocalPart(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x3a

    .line 690
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_9

    return-object p0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 692
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getPrefixFromXMLNSDecl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x3a

    .line 675
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_f

    add-int/lit8 v0, v0, 0x1

    .line 677
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, ""

    return-object p0
.end method

.method public static greylist getPrefixPart(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x3a

    .line 705
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_e

    const/4 v1, 0x0

    .line 707
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    const-string p0, ""

    return-object p0
.end method

.method public static greylist getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;
    .registers 4

    .line 635
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "{}"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 637
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 638
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_18
    move-object v0, v2

    :goto_19
    if-nez v0, :cond_21

    .line 641
    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, v2, p0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 643
    :cond_21
    new-instance v1, Lorg/apache/xml/utils/QName;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static greylist isXMLNSDecl(Ljava/lang/String;)Z
    .registers 3

    .line 659
    const-string v0, "xmlns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 660
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "xmlns:"

    .line 661
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 610
    :cond_4
    instance-of v1, p1, Lorg/apache/xml/utils/QName;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 611
    check-cast p1, Lorg/apache/xml/utils/QName;

    .line 612
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 615
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    if-eqz v1, :cond_2c

    if-eqz v3, :cond_2c

    .line 617
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_30

    :cond_2c
    if-nez v1, :cond_31

    if-nez v3, :cond_31

    :goto_30
    return v0

    :cond_31
    return v2
.end method

.method public greylist equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 589
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    .line 593
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_1d

    :cond_19
    if-nez v0, :cond_1f

    if-nez p1, :cond_1f

    :goto_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getLocalName()Ljava/lang/String;
    .registers 1

    .line 512
    iget-object p0, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getLocalPart()Ljava/lang/String;
    .registers 1

    .line 563
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespace()Ljava/lang/String;
    .registers 1

    .line 553
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceURI()Ljava/lang/String;
    .registers 1

    .line 491
    iget-object p0, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getPrefix()Ljava/lang/String;
    .registers 1

    .line 502
    iget-object p0, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 573
    iget p0, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    return p0
.end method

.method public greylist toNamespacedString()Ljava/lang/String;
    .registers 3

    .line 541
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    iget-object p0, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 525
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 527
    :cond_1d
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3f
    iget-object p0, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    return-object p0
.end method
