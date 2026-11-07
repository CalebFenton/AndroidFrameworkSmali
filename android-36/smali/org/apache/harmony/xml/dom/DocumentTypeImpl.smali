.class public final Lorg/apache/harmony/xml/dom/DocumentTypeImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "DocumentTypeImpl.java"

# interfaces
.implements Lorg/w3c/dom/DocumentType;


# instance fields
.field private blacklist publicId:Ljava/lang/String;

.field private blacklist qualifiedName:Ljava/lang/String;

.field private blacklist systemId:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "publicId"    # Ljava/lang/String;
    .param p4, "systemId"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 46
    const/16 v0, 0xe

    if-eqz p2, :cond_50

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 50
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, "prefixSeparator":I
    const/4 v2, -0x1

    const/4 v3, 0x5

    if-eq v1, v2, :cond_3d

    .line 52
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "prefix":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "localName":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 59
    invoke-static {v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 62
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v4    # "localName":Ljava/lang/String;
    goto :goto_43

    .line 60
    .restart local v2    # "prefix":Ljava/lang/String;
    .restart local v4    # "localName":Ljava/lang/String;
    :cond_31
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v3, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 56
    :cond_37
    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v0, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 63
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v4    # "localName":Ljava/lang/String;
    :cond_3d
    invoke-static {p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 68
    :goto_43
    iput-object p2, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->qualifiedName:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->publicId:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->systemId:Ljava/lang/String;

    .line 71
    return-void

    .line 64
    :cond_4a
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v3, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 47
    .end local v1    # "prefixSeparator":I
    :cond_50
    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, v0, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api getEntities()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getInternalSubset()Ljava/lang/String;
    .registers 2

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->qualifiedName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->qualifiedName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNodeType()S
    .registers 2

    .line 80
    const/16 v0, 0xa

    return v0
.end method

.method public whitelist test-api getNotations()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getTextContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method
