.class public final Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
.super Ljava/lang/Object;
.source "DOMImplementationImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;


# static fields
.field private static instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
    .locals 1

    #@0
    .prologue
    .line 80
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 81
    new-instance v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    #@6
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;-><init>()V

    #@9
    sput-object v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    #@b
    .line 84
    :cond_0
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->instance:Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    #@d
    return-object v0
.end method


# virtual methods
.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "doctype"    # Lorg/w3c/dom/DocumentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@2
    const/4 v5, 0x0

    #@3
    move-object v1, p0

    #@4
    move-object v2, p1

    #@5
    move-object v3, p2

    #@6
    move-object v4, p3

    #@7
    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/dom/DocumentImpl;-><init>(Lorg/apache/harmony/xml/dom/DOMImplementationImpl;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V

    #@a
    return-object v0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .locals 2
    .param p1, "qualifiedName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@6
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .end local p0    # "this":Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
    :goto_0
    return-object p0

    #@7
    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
    :cond_0
    const/4 p0, 0x0

    #@8
    goto :goto_0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 53
    if-eqz p2, :cond_0

    #@4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_3

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    .line 54
    .local v0, "anyVersion":Z
    :goto_0
    const-string/jumbo v2, "+"

    #@e
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@17
    move-result-object p1

    #@18
    .line 62
    :cond_1
    const-string/jumbo v2, "Core"

    #@1b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_4

    #@21
    .line 63
    if-nez v0, :cond_2

    #@23
    const-string/jumbo v2, "1.0"

    #@26
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_2

    #@2c
    const-string/jumbo v2, "2.0"

    #@2f
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_2

    #@35
    const-string/jumbo v1, "3.0"

    #@38
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v1

    #@3c
    :cond_2
    return v1

    #@3d
    .line 53
    .end local v0    # "anyVersion":Z
    :cond_3
    const/4 v0, 0x0

    #@3e
    .restart local v0    # "anyVersion":Z
    goto :goto_0

    #@3f
    .line 64
    :cond_4
    const-string/jumbo v2, "XML"

    #@42
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_6

    #@48
    .line 65
    if-nez v0, :cond_5

    #@4a
    const-string/jumbo v2, "1.0"

    #@4d
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    if-nez v2, :cond_5

    #@53
    const-string/jumbo v2, "2.0"

    #@56
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v2

    #@5a
    if-nez v2, :cond_5

    #@5c
    const-string/jumbo v1, "3.0"

    #@5f
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v1

    #@63
    :cond_5
    return v1

    #@64
    .line 66
    :cond_6
    const-string/jumbo v2, "XMLVersion"

    #@67
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6a
    move-result v2

    #@6b
    if-eqz v2, :cond_8

    #@6d
    .line 67
    if-nez v0, :cond_7

    #@6f
    const-string/jumbo v2, "1.0"

    #@72
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v2

    #@76
    if-nez v2, :cond_7

    #@78
    const-string/jumbo v1, "1.1"

    #@7b
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v1

    #@7f
    :cond_7
    return v1

    #@80
    .line 69
    :cond_8
    return v3
.end method
