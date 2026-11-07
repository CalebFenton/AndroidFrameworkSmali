.class public Lorg/apache/xml/serializer/NamespaceMappings;
.super Ljava/lang/Object;
.source "NamespaceMappings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/NamespaceMappings$Stack;,
        Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    }
.end annotation


# static fields
.field private static final greylist EMPTYSTRING:Ljava/lang/String; = ""

.field private static final greylist XML_PREFIX:Ljava/lang/String; = "xml"


# instance fields
.field private greylist count:I

.field private greylist m_namespaces:Ljava/util/Hashtable;

.field private greylist m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    .line 80
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    .line 95
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    .line 106
    invoke-direct {p0}, Lorg/apache/xml/serializer/NamespaceMappings;->initNamespaces()V

    return-void
.end method

.method private greylist createPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    .registers 3

    .line 469
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;)V

    .line 470
    iget-object p0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private greylist getPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    .registers 2

    .line 459
    iget-object p0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    return-object p0
.end method

.method private greylist initNamespaces()V
    .registers 5

    .line 121
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    const-string v1, ""

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v1, v2}, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    invoke-direct {p0, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->createPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    const-string v3, "xml"

    invoke-direct {v0, p0, v3, v1, v2}, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    invoke-direct {p0, v3}, Lorg/apache/xml/serializer/NamespaceMappings;->createPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    move-result-object p0

    .line 128
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 332
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    .line 333
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-virtual {v1}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    iput-object v1, v0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    .line 334
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    iput v1, v0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    .line 335
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    .line 337
    iget p0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    iput p0, v0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    return-object v0
.end method

.method public greylist generateNextPrefix()Ljava/lang/String;
    .registers 4

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method greylist getMappingFromPrefix(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    .registers 2

    .line 152
    iget-object p0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    if-eqz p0, :cond_17

    .line 153
    invoke-virtual {p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_17

    .line 154
    invoke-virtual {p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method greylist getMappingFromURI(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    .registers 5

    .line 185
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 186
    :cond_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 188
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->getMappingFromPrefix(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 190
    iget-object v2, v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist lookupAllPrefixes(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 487
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 489
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 490
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 491
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 493
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 496
    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 497
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method public greylist lookupNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 141
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->getPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 142
    invoke-virtual {p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    .line 143
    invoke-virtual {p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    iget-object p0, p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    if-nez p0, :cond_1a

    .line 146
    const-string p0, ""

    :cond_1a
    return-object p0
.end method

.method public greylist lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 168
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 169
    :cond_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 171
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 173
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method greylist popNamespace(Ljava/lang/String;)Z
    .registers 4

    .line 205
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 211
    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->getPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 213
    invoke-virtual {p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->pop()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_15
    return v1
.end method

.method greylist popNamespaces(ILorg/xml/sax/ContentHandler;)V
    .registers 7

    .line 269
    :catch_0
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_38

    .line 271
    :cond_9
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    .line 272
    iget v1, v0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    const/4 v2, 0x1

    if-lt p1, v2, :cond_38

    if-ge v1, p1, :cond_19

    goto :goto_38

    .line 279
    :cond_19
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-virtual {v1}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    .line 281
    iget-object v0, v0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_prefix:Ljava/lang/String;

    .line 283
    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/NamespaceMappings;->getPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    if-ne v1, v3, :cond_0

    .line 300
    invoke-virtual {v2}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->pop()Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 305
    :try_start_34
    invoke-interface {p2, v0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_37
    .catch Lorg/xml/sax/SAXException; {:try_start_34 .. :try_end_37} :catch_0

    goto :goto_0

    :cond_38
    :goto_38
    return-void
.end method

.method public greylist pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    .line 228
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 235
    :cond_a
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    if-nez v0, :cond_1f

    .line 237
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    new-instance v2, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-direct {v2, p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 240
    :cond_1f
    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_38

    .line 242
    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    .line 243
    iget-object v3, v2, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    iget v2, v2, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    if-ne p3, v2, :cond_38

    :cond_37
    return v1

    .line 251
    :cond_38
    new-instance v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object p0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method final greylist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 344
    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    .line 345
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 346
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->clear()V

    .line 348
    invoke-direct {p0}, Lorg/apache/xml/serializer/NamespaceMappings;->initNamespaces()V

    return-void
.end method
