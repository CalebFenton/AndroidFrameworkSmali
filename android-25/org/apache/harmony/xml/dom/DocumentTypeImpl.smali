.class public final Lorg/apache/harmony/xml/dom/DocumentTypeImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "DocumentTypeImpl.java"

# interfaces
.implements Lorg/w3c/dom/DocumentType;


# instance fields
.field private publicId:Ljava/lang/String;

.field private qualifiedName:Ljava/lang/String;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "publicId"    # Ljava/lang/String;
    .param p4, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0xe

    #@2
    const/4 v4, 0x5

    #@3
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    #@6
    .line 46
    if-eqz p2, :cond_0

    #@8
    const-string/jumbo v3, ""

    #@b
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 47
    :cond_0
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@13
    invoke-direct {v3, v5, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 50
    :cond_1
    const-string/jumbo v3, ":"

    #@1a
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@1d
    move-result v2

    #@1e
    .line 51
    .local v2, "prefixSeparator":I
    const/4 v3, -0x1

    #@1f
    if-eq v2, v3, :cond_3

    #@21
    .line 52
    const/4 v3, 0x0

    #@22
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 53
    .local v1, "prefix":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    #@28
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 55
    .local v0, "localName":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    #@2f
    move-result v3

    #@30
    if-nez v3, :cond_2

    #@32
    .line 56
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@34
    invoke-direct {v3, v5, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@37
    throw v3

    #@38
    .line 59
    :cond_2
    invoke-static {v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    #@3b
    move-result v3

    #@3c
    if-nez v3, :cond_4

    #@3e
    .line 60
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@40
    invoke-direct {v3, v4, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@43
    throw v3

    #@44
    .line 63
    .end local v0    # "localName":Ljava/lang/String;
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_3
    invoke-static {p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    #@47
    move-result v3

    #@48
    if-nez v3, :cond_4

    #@4a
    .line 64
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@4c
    invoke-direct {v3, v4, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@4f
    throw v3

    #@50
    .line 68
    :cond_4
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->qualifiedName:Ljava/lang/String;

    #@52
    .line 69
    iput-object p3, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->publicId:Ljava/lang/String;

    #@54
    .line 70
    iput-object p4, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->systemId:Ljava/lang/String;

    #@56
    .line 43
    return-void
.end method


# virtual methods
.method public getEntities()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getInternalSubset()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->qualifiedName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->qualifiedName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    #@0
    .prologue
    .line 80
    const/16 v0, 0xa

    #@2
    return v0
.end method

.method public getNotations()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->publicId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->systemId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
