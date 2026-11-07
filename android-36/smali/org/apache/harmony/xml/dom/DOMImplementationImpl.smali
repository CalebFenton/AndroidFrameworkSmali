.class public final Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
.super Ljava/lang/Object;
.source "DOMImplementationImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;


# static fields
.field private static blacklist instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static blacklist getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
    .registers 1

    .line 80
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    .line 84
    :cond_b
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .registers 10
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "doctype"    # Lorg/w3c/dom/DocumentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentImpl;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "namespaceURI":Ljava/lang/String;
    .end local p2    # "qualifiedName":Ljava/lang/String;
    .end local p3    # "doctype":Lorg/w3c/dom/DocumentType;
    .local v2, "namespaceURI":Ljava/lang/String;
    .local v3, "qualifiedName":Ljava/lang/String;
    .local v4, "doctype":Lorg/w3c/dom/DocumentType;
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/dom/DocumentImpl;-><init>(Lorg/apache/harmony/xml/dom/DOMImplementationImpl;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist test-api createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .registers 6
    .param p1, "qualifiedName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 49
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public whitelist test-api hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_d

    :cond_b
    move v2, v0

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v1

    .line 54
    .local v2, "anyVersion":Z
    :goto_e
    const-string v3, "+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    :cond_1a
    const-string v3, "Core"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "3.0"

    const-string v5, "2.0"

    const-string v6, "1.0"

    if-eqz v3, :cond_3e

    .line 63
    if-nez v2, :cond_3c

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    :cond_3c
    move v0, v1

    :cond_3d
    return v0

    .line 64
    :cond_3e
    const-string v3, "XML"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 65
    if-nez v2, :cond_5a

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    :cond_5a
    move v0, v1

    :cond_5b
    return v0

    .line 66
    :cond_5c
    const-string v3, "XMLVersion"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 67
    if-nez v2, :cond_74

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    const-string v3, "1.1"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    :cond_74
    move v0, v1

    :cond_75
    return v0

    .line 69
    :cond_76
    return v0
.end method
