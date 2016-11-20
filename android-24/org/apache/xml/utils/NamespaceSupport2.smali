.class public Lorg/apache/xml/utils/NamespaceSupport2;
.super Lorg/xml/sax/helpers/NamespaceSupport;
.source "NamespaceSupport2.java"


# static fields
.field public static final XMLNS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private currentContext:Lorg/apache/xml/utils/Context2;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    #@3
    .line 79
    invoke-virtual {p0}, Lorg/apache/xml/utils/NamespaceSupport2;->reset()V

    #@6
    .line 77
    return-void
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 197
    const-string/jumbo v0, "xml"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, "xmlns"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 198
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0

    #@14
    .line 200
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@16
    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/utils/Context2;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 201
    const/4 v0, 0x1

    #@1a
    return v0
.end method

.method public getDeclaredPrefixes()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/Context2;->getDeclaredPrefixes()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/Context2;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrefixes()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/Context2;->getPrefixes()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 351
    new-instance v0, Lorg/apache/xml/utils/PrefixForUriEnumerator;

    #@2
    invoke-virtual {p0}, Lorg/apache/xml/utils/NamespaceSupport2;->getPrefixes()Ljava/util/Enumeration;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, p1, v1}, Lorg/apache/xml/utils/PrefixForUriEnumerator;-><init>(Lorg/apache/xml/utils/NamespaceSupport2;Ljava/lang/String;Ljava/util/Enumeration;)V

    #@9
    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/Context2;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public popContext()V
    .locals 2

    #@0
    .prologue
    .line 153
    iget-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@2
    invoke-virtual {v1}, Lorg/apache/xml/utils/Context2;->getParent()Lorg/apache/xml/utils/Context2;

    #@5
    move-result-object v0

    #@6
    .line 154
    .local v0, "parentContext":Lorg/apache/xml/utils/Context2;
    if-nez v0, :cond_0

    #@8
    .line 155
    new-instance v1, Ljava/util/EmptyStackException;

    #@a
    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    #@d
    throw v1

    #@e
    .line 157
    :cond_0
    iput-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@10
    .line 151
    return-void
.end method

.method public processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 4
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "parts"    # [Ljava/lang/String;
    .param p3, "isAttribute"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 247
    iget-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@4
    invoke-virtual {v1, p1, p3}, Lorg/apache/xml/utils/Context2;->processName(Ljava/lang/String;Z)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 248
    .local v0, "name":[Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .line 249
    return-object v3

    #@b
    .line 253
    :cond_0
    const/4 v1, 0x3

    #@c
    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@f
    .line 254
    return-object p2
.end method

.method public pushContext()V
    .locals 2

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@2
    .line 126
    .local v0, "parentContext":Lorg/apache/xml/utils/Context2;
    invoke-virtual {v0}, Lorg/apache/xml/utils/Context2;->getChild()Lorg/apache/xml/utils/Context2;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@8
    .line 127
    iget-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@a
    if-nez v1, :cond_0

    #@c
    .line 128
    new-instance v1, Lorg/apache/xml/utils/Context2;

    #@e
    invoke-direct {v1, v0}, Lorg/apache/xml/utils/Context2;-><init>(Lorg/apache/xml/utils/Context2;)V

    #@11
    iput-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@13
    .line 118
    :goto_0
    return-void

    #@14
    .line 133
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@16
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/Context2;->setParent(Lorg/apache/xml/utils/Context2;)V

    #@19
    goto :goto_0
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    .line 99
    new-instance v0, Lorg/apache/xml/utils/Context2;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/Context2;-><init>(Lorg/apache/xml/utils/Context2;)V

    #@6
    iput-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@8
    .line 100
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    #@a
    const-string/jumbo v1, "xml"

    #@d
    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    #@10
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/utils/Context2;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 94
    return-void
.end method
