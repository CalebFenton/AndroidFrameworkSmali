.class public Lorg/apache/xml/serializer/NamespaceMappings;
.super Ljava/lang/Object;
.source "NamespaceMappings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;,
        Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    }
.end annotation


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field private static final XML_PREFIX:Ljava/lang/String; = "xml"


# instance fields
.field private count:I

.field private m_namespaces:Ljava/util/Hashtable;

.field private m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    #@6
    .line 80
    new-instance v0, Ljava/util/Hashtable;

    #@8
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@b
    iput-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    #@d
    .line 95
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@f
    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;)V

    #@12
    iput-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@14
    .line 106
    invoke-direct {p0}, Lorg/apache/xml/serializer/NamespaceMappings;->initNamespaces()V

    #@17
    .line 104
    return-void
.end method

.method private createPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 469
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;)V

    #@5
    .line 470
    .local v0, "fs":Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 471
    return-object v0
.end method

.method private getPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 459
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@8
    .line 460
    .local v0, "fs":Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    return-object v0
.end method

.method private initNamespaces()V
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 121
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    #@3
    const-string/jumbo v2, ""

    #@6
    const-string/jumbo v3, ""

    #@9
    invoke-direct {v0, p0, v2, v3, v4}, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V

    #@c
    .line 122
    .local v0, "nn":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    const-string/jumbo v2, ""

    #@f
    invoke-direct {p0, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->createPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@12
    move-result-object v1

    #@13
    .line 123
    .local v1, "stack":Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 126
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    #@18
    .end local v0    # "nn":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    const-string/jumbo v2, "xml"

    #@1b
    const-string/jumbo v3, "http://www.w3.org/XML/1998/namespace"

    #@1e
    invoke-direct {v0, p0, v2, v3, v4}, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V

    #@21
    .line 127
    .restart local v0    # "nn":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    const-string/jumbo v2, "xml"

    #@24
    invoke-direct {p0, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->createPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@27
    move-result-object v1

    #@28
    .line 128
    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 113
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 332
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    #@2
    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    #@5
    .line 333
    .local v0, "clone":Lorg/apache/xml/serializer/NamespaceMappings;
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@7
    invoke-virtual {v1}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->clone()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@d
    iput-object v1, v0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@f
    .line 334
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    #@11
    iput v1, v0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    #@13
    .line 335
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    #@15
    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/util/Hashtable;

    #@1b
    iput-object v1, v0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    #@1d
    .line 337
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    #@1f
    iput v1, v0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    #@21
    .line 338
    return-object v0
.end method

.method public generateNextPrefix()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ns"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    #@e
    add-int/lit8 v2, v1, 0x1

    #@10
    iput v2, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method getMappingFromPrefix(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 152
    iget-object v2, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@9
    .line 153
    .local v0, "stack":Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->isEmpty()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    :cond_0
    :goto_0
    return-object v1

    #@12
    .line 154
    :cond_1
    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    #@18
    goto :goto_0
.end method

.method getMappingFromURI(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 184
    const/4 v0, 0x0

    #@1
    .line 185
    .local v0, "foundMap":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    iget-object v4, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@6
    move-result-object v3

    #@7
    .line 186
    .local v3, "prefixes":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 188
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Ljava/lang/String;

    #@13
    .line 189
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/NamespaceMappings;->getMappingFromPrefix(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    #@16
    move-result-object v1

    #@17
    .line 190
    .local v1, "map2":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    if-eqz v1, :cond_0

    #@19
    iget-object v4, v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    #@1b
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 192
    move-object v0, v1

    #@22
    .line 196
    .end local v0    # "foundMap":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    .end local v1    # "map2":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public lookupAllPrefixes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 485
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 486
    .local v0, "foundPrefixes":Ljava/util/ArrayList;
    iget-object v5, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@a
    move-result-object v3

    #@b
    .line 487
    .local v3, "prefixes":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    .line 489
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/lang/String;

    #@17
    .line 490
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    .line 491
    .local v4, "uri2":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@1d
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_0

    #@23
    .line 493
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_0

    #@27
    .line 496
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v4    # "uri2":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v5

    #@2b
    new-array v2, v5, [Ljava/lang/String;

    #@2d
    .line 497
    .local v2, "prefixArray":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@30
    .line 498
    return-object v2
.end method

.method public lookupNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 140
    const/4 v1, 0x0

    #@1
    .line 141
    .local v1, "uri":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->getPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@4
    move-result-object v0

    #@5
    .line 142
    .local v0, "stack":Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->isEmpty()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 145
    .end local v1    # "uri":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    #@f
    .line 146
    const-string/jumbo v1, ""

    #@12
    .line 147
    :cond_1
    return-object v1

    #@13
    .line 143
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    #@19
    iget-object v1, v2, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    #@1b
    .local v1, "uri":Ljava/lang/String;
    goto :goto_0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 167
    const/4 v0, 0x0

    #@1
    .line 168
    .local v0, "foundPrefix":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@6
    move-result-object v2

    #@7
    .line 169
    .local v2, "prefixes":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 171
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/lang/String;

    #@13
    .line 172
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 173
    .local v3, "uri2":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 175
    move-object v0, v1

    #@20
    .line 179
    .end local v0    # "foundPrefix":Ljava/lang/String;
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v3    # "uri2":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method popNamespace(Ljava/lang/String;)Z
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 205
    const-string/jumbo v1, "xml"

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 207
    return v2

    #@b
    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->getPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@e
    move-result-object v0

    #@f
    .local v0, "stack":Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    if-eqz v0, :cond_1

    #@11
    .line 213
    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->pop()Ljava/lang/Object;

    #@14
    .line 214
    const/4 v1, 0x1

    #@15
    return v1

    #@16
    .line 216
    :cond_1
    return v2
.end method

.method popNamespaces(ILorg/xml/sax/ContentHandler;)V
    .locals 8
    .param p1, "elemDepth"    # I
    .param p2, "saxHandler"    # Lorg/xml/sax/ContentHandler;

    #@0
    .prologue
    .line 269
    :cond_0
    :goto_0
    iget-object v7, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@2
    invoke-virtual {v7}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->isEmpty()Z

    #@5
    move-result v7

    #@6
    if-eqz v7, :cond_1

    #@8
    .line 270
    return-void

    #@9
    .line 271
    :cond_1
    iget-object v7, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@b
    invoke-virtual {v7}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    #@11
    .line 272
    .local v2, "map":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    iget v0, v2, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    #@13
    .line 273
    .local v0, "depth":I
    const/4 v7, 0x1

    #@14
    if-lt p1, v7, :cond_2

    #@16
    iget v7, v2, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    #@18
    if-ge v7, p1, :cond_3

    #@1a
    .line 265
    :cond_2
    return-void

    #@1b
    .line 279
    :cond_3
    iget-object v7, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@1d
    invoke-virtual {v7}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->pop()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    #@23
    .line 281
    .local v3, "nm1":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    iget-object v5, v2, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_prefix:Ljava/lang/String;

    #@25
    .line 283
    .local v5, "prefix":Ljava/lang/String;
    invoke-direct {p0, v5}, Lorg/apache/xml/serializer/NamespaceMappings;->getPrefixStack(Ljava/lang/String;)Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@28
    move-result-object v6

    #@29
    .line 284
    .local v6, "prefixStack":Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    invoke-virtual {v6}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    #@2f
    .line 285
    .local v4, "nm2":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    if-ne v3, v4, :cond_0

    #@31
    .line 300
    invoke-virtual {v6}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->pop()Ljava/lang/Object;

    #@34
    .line 301
    if-eqz p2, :cond_0

    #@36
    .line 305
    :try_start_0
    invoke-interface {p2, v5}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    goto :goto_0

    #@3a
    .line 308
    :catch_0
    move-exception v1

    #@3b
    .local v1, "e":Lorg/xml/sax/SAXException;
    goto :goto_0
.end method

.method public pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "elemDepth"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 228
    const-string/jumbo v3, "xml"

    #@4
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 230
    return v4

    #@b
    .line 235
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    #@d
    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@13
    .local v2, "stack":Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    if-nez v2, :cond_1

    #@15
    .line 237
    iget-object v3, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    #@17
    new-instance v2, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@19
    .end local v2    # "stack":Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    invoke-direct {v2, p0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;)V

    #@1c
    .restart local v2    # "stack":Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    invoke-virtual {v3, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 240
    :cond_1
    invoke-virtual {v2}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->empty()Z

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_3

    #@25
    .line 242
    invoke-virtual {v2}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->peek()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    #@2b
    .line 243
    .local v1, "mr":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    iget-object v3, v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    #@2d
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_2

    #@33
    iget v3, v1, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    #@35
    if-ne p3, v3, :cond_3

    #@37
    .line 248
    :cond_2
    return v4

    #@38
    .line 251
    .end local v1    # "mr":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    :cond_3
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;

    #@3a
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V

    #@3d
    .line 252
    .local v0, "map":Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
    invoke-virtual {v2, v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 253
    iget-object v3, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@42
    invoke-virtual {v3, v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 254
    const/4 v3, 0x1

    #@46
    return v3
.end method

.method final reset()V
    .locals 1

    #@0
    .prologue
    .line 344
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->count:I

    #@3
    .line 345
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_namespaces:Ljava/util/Hashtable;

    #@5
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@8
    .line 346
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings;->m_nodeStack:Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@a
    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->clear()V

    #@d
    .line 348
    invoke-direct {p0}, Lorg/apache/xml/serializer/NamespaceMappings;->initNamespaces()V

    #@10
    .line 342
    return-void
.end method
