.class public Lorg/apache/xml/utils/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final S_XMLNAMESPACEURI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field static final serialVersionUID:J = 0x67ca946832676e0L


# instance fields
.field protected _localName:Ljava/lang/String;

.field protected _namespaceURI:Ljava/lang/String;

.field protected _prefix:Ljava/lang/String;

.field private m_hashCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 191
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Z)V

    #@4
    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@4
    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 139
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #@4
    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "validate"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 157
    if-nez p3, :cond_0

    #@6
    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 159
    const-string/jumbo v1, "ER_ARG_LOCALNAME_NULL"

    #@b
    .line 158
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 161
    :cond_0
    if-eqz p4, :cond_2

    #@15
    .line 163
    invoke-static {p3}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    .line 166
    const-string/jumbo v1, "ER_ARG_LOCALNAME_INVALID"

    #@20
    .line 165
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 169
    :cond_1
    if-eqz p2, :cond_2

    #@2a
    invoke-static {p2}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 176
    :cond_2
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@32
    .line 177
    iput-object p2, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    #@34
    .line 178
    iput-object p3, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@36
    .line 179
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@3d
    move-result v0

    #@3e
    iput v0, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    #@40
    .line 152
    return-void

    #@41
    .line 171
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@43
    .line 172
    const-string/jumbo v1, "ER_ARG_PREFIX_INVALID"

    #@46
    .line 171
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "validate"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 110
    if-nez p2, :cond_0

    #@6
    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 112
    const-string/jumbo v1, "ER_ARG_LOCALNAME_NULL"

    #@b
    .line 111
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 114
    :cond_0
    if-eqz p3, :cond_1

    #@15
    .line 116
    invoke-static {p2}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    .line 119
    const-string/jumbo v1, "ER_ARG_LOCALNAME_INVALID"

    #@20
    .line 118
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 123
    :cond_1
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@2a
    .line 124
    iput-object p2, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@2c
    .line 125
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@33
    move-result v0

    #@34
    iput v0, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    #@36
    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Stack;)V
    .locals 1
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "namespaces"    # Ljava/util/Stack;

    #@0
    .prologue
    .line 234
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/util/Stack;Z)V

    #@4
    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Stack;Z)V
    .locals 10
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "namespaces"    # Ljava/util/Stack;
    .param p3, "validate"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 250
    const/4 v3, 0x0

    #@6
    .line 251
    .local v3, "namespace":Ljava/lang/String;
    const/4 v5, 0x0

    #@7
    .line 252
    .local v5, "prefix":Ljava/lang/String;
    const/16 v6, 0x3a

    #@9
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v2

    #@d
    .line 254
    .local v2, "indexOfNSSep":I
    if-lez v2, :cond_5

    #@f
    .line 256
    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    .line 258
    .local v5, "prefix":Ljava/lang/String;
    const-string/jumbo v6, "xml"

    #@16
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v6

    #@1a
    if-eqz v6, :cond_1

    #@1c
    .line 260
    const-string/jumbo v3, "http://www.w3.org/XML/1998/namespace"

    #@1f
    .line 290
    .end local v3    # "namespace":Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_5

    #@21
    .line 292
    new-instance v6, Ljava/lang/RuntimeException;

    #@23
    .line 294
    const-string/jumbo v7, "ER_PREFIX_MUST_RESOLVE"

    #@26
    .line 295
    const/4 v8, 0x1

    #@27
    new-array v8, v8, [Ljava/lang/Object;

    #@29
    aput-object v5, v8, v9

    #@2b
    .line 293
    invoke-static {v7, v8}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v7

    #@2f
    .line 292
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@32
    throw v6

    #@33
    .line 263
    .restart local v3    # "namespace":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "xmlns"

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_2

    #@3c
    .line 265
    return-void

    #@3d
    .line 269
    :cond_2
    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    #@40
    move-result v0

    #@41
    .line 271
    .local v0, "depth":I
    add-int/lit8 v1, v0, -0x1

    #@43
    .end local v3    # "namespace":Ljava/lang/String;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@45
    .line 273
    invoke-virtual {p2, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@48
    move-result-object v4

    #@49
    check-cast v4, Lorg/apache/xml/utils/NameSpace;

    #@4b
    .line 275
    .local v4, "ns":Lorg/apache/xml/utils/NameSpace;
    :goto_1
    if-eqz v4, :cond_3

    #@4d
    .line 277
    iget-object v6, v4, Lorg/apache/xml/utils/NameSpace;->m_prefix:Ljava/lang/String;

    #@4f
    if-eqz v6, :cond_4

    #@51
    iget-object v6, v4, Lorg/apache/xml/utils/NameSpace;->m_prefix:Ljava/lang/String;

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v6

    #@57
    if-eqz v6, :cond_4

    #@59
    .line 279
    iget-object v3, v4, Lorg/apache/xml/utils/NameSpace;->m_uri:Ljava/lang/String;

    #@5b
    .line 280
    .local v3, "namespace":Ljava/lang/String;
    const/4 v1, -0x1

    #@5c
    .line 271
    .end local v3    # "namespace":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@5e
    goto :goto_0

    #@5f
    .line 285
    :cond_4
    iget-object v4, v4, Lorg/apache/xml/utils/NameSpace;->m_next:Lorg/apache/xml/utils/NameSpace;

    #@61
    goto :goto_1

    #@62
    .line 299
    .end local v0    # "depth":I
    .end local v1    # "i":I
    .end local v4    # "ns":Lorg/apache/xml/utils/NameSpace;
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_5
    if-gez v2, :cond_7

    #@64
    .end local p1    # "qname":Ljava/lang/String;
    :goto_2
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@66
    .line 302
    if-eqz p3, :cond_6

    #@68
    .line 304
    iget-object v6, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@6a
    if-eqz v6, :cond_8

    #@6c
    iget-object v6, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@6e
    invoke-static {v6}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@71
    move-result v6

    #@72
    if-eqz v6, :cond_8

    #@74
    .line 310
    :cond_6
    iput-object v3, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@76
    .line 311
    iput-object v5, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    #@78
    .line 312
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    #@7f
    move-result v6

    #@80
    iput v6, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    #@82
    .line 247
    return-void

    #@83
    .line 300
    .restart local p1    # "qname":Ljava/lang/String;
    :cond_7
    add-int/lit8 v6, v2, 0x1

    #@85
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@88
    move-result-object p1

    #@89
    goto :goto_2

    #@8a
    .line 306
    .end local p1    # "qname":Ljava/lang/String;
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@8c
    .line 307
    const-string/jumbo v7, "ER_ARG_LOCALNAME_INVALID"

    #@8f
    .line 306
    invoke-static {v7, v8}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@92
    move-result-object v7

    #@93
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@96
    throw v6
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "resolver"    # Lorg/apache/xml/utils/PrefixResolver;

    #@0
    .prologue
    .line 414
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V

    #@4
    .line 412
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V
    .locals 6
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "resolver"    # Lorg/apache/xml/utils/PrefixResolver;
    .param p3, "validate"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 430
    const/4 v1, 0x0

    #@6
    .line 431
    .local v1, "prefix":Ljava/lang/String;
    iput-object v4, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@8
    .line 433
    const/16 v2, 0x3a

    #@a
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v0

    #@e
    .line 435
    .local v0, "indexOfNSSep":I
    if-lez v0, :cond_3

    #@10
    .line 437
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 439
    .local v1, "prefix":Ljava/lang/String;
    const-string/jumbo v2, "xml"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 441
    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    #@20
    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@22
    .line 448
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@24
    if-nez v2, :cond_1

    #@26
    .line 450
    new-instance v2, Ljava/lang/RuntimeException;

    #@28
    .line 452
    const-string/jumbo v3, "ER_PREFIX_MUST_RESOLVE"

    #@2b
    .line 453
    const/4 v4, 0x1

    #@2c
    new-array v4, v4, [Ljava/lang/Object;

    #@2e
    aput-object v1, v4, v5

    #@30
    .line 451
    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    .line 450
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2

    #@38
    .line 445
    :cond_0
    invoke-interface {p2, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@3e
    goto :goto_0

    #@3f
    .line 455
    :cond_1
    add-int/lit8 v2, v0, 0x1

    #@41
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@47
    .line 469
    .end local v1    # "prefix":Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_2

    #@49
    .line 471
    iget-object v2, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@4b
    if-eqz v2, :cond_5

    #@4d
    iget-object v2, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@4f
    invoke-static {v2}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_5

    #@55
    .line 479
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@5c
    move-result v2

    #@5d
    iput v2, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    #@5f
    .line 480
    iput-object v1, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    #@61
    .line 427
    return-void

    #@62
    .line 457
    .local v1, "prefix":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    #@64
    .line 459
    new-instance v2, Ljava/lang/RuntimeException;

    #@66
    .line 461
    const-string/jumbo v3, "ER_NAME_CANT_START_WITH_COLON"

    #@69
    .line 460
    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    .line 459
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@70
    throw v2

    #@71
    .line 466
    :cond_4
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@73
    goto :goto_1

    #@74
    .line 473
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@76
    .line 474
    const-string/jumbo v3, "ER_ARG_LOCALNAME_INVALID"

    #@79
    .line 473
    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@80
    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "namespaceContext"    # Lorg/w3c/dom/Element;
    .param p3, "resolver"    # Lorg/apache/xml/utils/PrefixResolver;

    #@0
    .prologue
    .line 327
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/apache/xml/utils/PrefixResolver;Z)V

    #@4
    .line 325
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Element;Lorg/apache/xml/utils/PrefixResolver;Z)V
    .locals 6
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "namespaceContext"    # Lorg/w3c/dom/Element;
    .param p3, "resolver"    # Lorg/apache/xml/utils/PrefixResolver;
    .param p4, "validate"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 345
    iput-object v4, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@7
    .line 347
    const/16 v2, 0x3a

    #@9
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v0

    #@d
    .line 349
    .local v0, "indexOfNSSep":I
    if-lez v0, :cond_2

    #@f
    .line 351
    if-eqz p2, :cond_2

    #@11
    .line 353
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 355
    .local v1, "prefix":Ljava/lang/String;
    iput-object v1, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    #@17
    .line 357
    const-string/jumbo v2, "xml"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 359
    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    #@23
    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@25
    .line 373
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@27
    if-nez v2, :cond_2

    #@29
    .line 375
    new-instance v2, Ljava/lang/RuntimeException;

    #@2b
    .line 377
    const-string/jumbo v3, "ER_PREFIX_MUST_RESOLVE"

    #@2e
    .line 378
    const/4 v4, 0x1

    #@2f
    new-array v4, v4, [Ljava/lang/Object;

    #@31
    aput-object v1, v4, v5

    #@33
    .line 376
    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 375
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 363
    :cond_0
    const-string/jumbo v2, "xmlns"

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_1

    #@44
    .line 365
    return-void

    #@45
    .line 369
    :cond_1
    invoke-interface {p3, v1, p2}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@4b
    goto :goto_0

    #@4c
    .line 388
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_2
    if-gez v0, :cond_4

    #@4e
    .end local p1    # "qname":Ljava/lang/String;
    :goto_1
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@50
    .line 391
    if-eqz p4, :cond_3

    #@52
    .line 393
    iget-object v2, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@54
    if-eqz v2, :cond_5

    #@56
    iget-object v2, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@58
    invoke-static {v2}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@5b
    move-result v2

    #@5c
    if-eqz v2, :cond_5

    #@5e
    .line 400
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@65
    move-result v2

    #@66
    iput v2, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    #@68
    .line 342
    return-void

    #@69
    .line 389
    .restart local p1    # "qname":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v0, 0x1

    #@6b
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6e
    move-result-object p1

    #@6f
    goto :goto_1

    #@70
    .line 395
    .end local p1    # "qname":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@72
    .line 396
    const-string/jumbo v3, "ER_ARG_LOCALNAME_INVALID"

    #@75
    .line 395
    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "validate"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 207
    if-nez p1, :cond_0

    #@6
    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 209
    const-string/jumbo v1, "ER_ARG_LOCALNAME_NULL"

    #@b
    .line 208
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 211
    :cond_0
    if-eqz p2, :cond_1

    #@15
    .line 213
    invoke-static {p1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    .line 216
    const-string/jumbo v1, "ER_ARG_LOCALNAME_INVALID"

    #@20
    .line 215
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 219
    :cond_1
    iput-object v2, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@2a
    .line 220
    iput-object p1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@2c
    .line 221
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@33
    move-result v0

    #@34
    iput v0, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    #@36
    .line 202
    return-void
.end method

.method public static getLocalPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "qname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 690
    const/16 v1, 0x3a

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    .line 692
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .end local p0    # "qname":Ljava/lang/String;
    :goto_0
    return-object p0

    #@9
    .restart local p0    # "qname":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@b
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    goto :goto_0
.end method

.method public static getPrefixFromXMLNSDecl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "attRawName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 675
    const/16 v1, 0x3a

    #@2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    .line 677
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@8
    add-int/lit8 v1, v0, 0x1

    #@a
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    :goto_0
    return-object v1

    #@f
    :cond_0
    const-string/jumbo v1, ""

    #@12
    goto :goto_0
.end method

.method public static getPrefixPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "qname"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 705
    const/16 v1, 0x3a

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 707
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@9
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    :goto_0
    return-object v1

    #@e
    :cond_0
    const-string/jumbo v1, ""

    #@11
    goto :goto_0
.end method

.method public static getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 635
    new-instance v3, Ljava/util/StringTokenizer;

    #@3
    const-string/jumbo v4, "{}"

    #@6
    const/4 v5, 0x0

    #@7
    invoke-direct {v3, p0, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@a
    .line 637
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 638
    .local v1, "s1":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 640
    :goto_0
    if-nez v2, :cond_1

    #@1a
    .line 641
    new-instance v0, Lorg/apache/xml/utils/QName;

    #@1c
    invoke-direct {v0, v6, v1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 645
    .local v0, "qname":Lorg/apache/xml/utils/QName;
    :goto_1
    return-object v0

    #@20
    .line 638
    .end local v0    # "qname":Lorg/apache/xml/utils/QName;
    :cond_0
    const/4 v2, 0x0

    #@21
    .local v2, "s2":Ljava/lang/String;
    goto :goto_0

    #@22
    .line 643
    .end local v2    # "s2":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/apache/xml/utils/QName;

    #@24
    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .restart local v0    # "qname":Lorg/apache/xml/utils/QName;
    goto :goto_1
.end method

.method public static isXMLNSDecl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "attRawName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 659
    const-string/jumbo v0, "xmlns"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 660
    const-string/jumbo v0, "xmlns"

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 661
    const-string/jumbo v0, "xmlns:"

    #@15
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    .line 659
    :goto_0
    return v0

    #@1a
    .line 660
    :cond_0
    const/4 v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 659
    :cond_1
    const/4 v0, 0x0

    #@1d
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 607
    if-ne p1, p0, :cond_0

    #@4
    .line 608
    return v3

    #@5
    .line 610
    :cond_0
    instance-of v5, p1, Lorg/apache/xml/utils/QName;

    #@7
    if-eqz v5, :cond_5

    #@9
    move-object v0, p1

    #@a
    .line 611
    check-cast v0, Lorg/apache/xml/utils/QName;

    #@c
    .line 612
    .local v0, "qname":Lorg/apache/xml/utils/QName;
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 613
    .local v2, "thisnamespace":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 615
    .local v1, "thatnamespace":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_4

    #@22
    .line 616
    if-eqz v2, :cond_2

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 617
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    .line 615
    :cond_1
    :goto_0
    return v3

    #@2b
    .line 618
    :cond_2
    if-nez v2, :cond_3

    #@2d
    if-eqz v1, :cond_1

    #@2f
    :cond_3
    move v3, v4

    #@30
    goto :goto_0

    #@31
    :cond_4
    move v3, v4

    #@32
    .line 615
    goto :goto_0

    #@33
    .line 621
    .end local v0    # "qname":Lorg/apache/xml/utils/QName;
    .end local v1    # "thatnamespace":Ljava/lang/String;
    .end local v2    # "thisnamespace":Ljava/lang/String;
    :cond_5
    return v4
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 589
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 591
    .local v0, "thisnamespace":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 592
    if-eqz v0, :cond_1

    #@11
    if-eqz p1, :cond_1

    #@13
    .line 593
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    .line 591
    :cond_0
    :goto_0
    return v1

    #@18
    .line 594
    :cond_1
    if-nez v0, :cond_0

    #@1a
    if-nez p1, :cond_0

    #@1c
    const/4 v1, 0x1

    #@1d
    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 512
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 563
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 553
    invoke-virtual {p0}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 491
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 573
    iget v0, p0, Lorg/apache/xml/utils/QName;->m_hashCode:I

    #@2
    return v0
.end method

.method public toNamespacedString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "{"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "}"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 541
    :goto_0
    return-object v0

    #@28
    .line 542
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@2a
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 525
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_prefix:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, ":"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 525
    :goto_0
    return-object v0

    #@21
    .line 527
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v1, "{"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_namespaceURI:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string/jumbo v1, "}"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget-object v1, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    goto :goto_0

    #@49
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/utils/QName;->_localName:Ljava/lang/String;

    #@4b
    goto :goto_0
.end method
