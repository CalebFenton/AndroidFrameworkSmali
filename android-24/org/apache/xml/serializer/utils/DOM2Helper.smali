.class public final Lorg/apache/xml/serializer/utils/DOM2Helper;
.super Ljava/lang/Object;
.source "DOM2Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private getLocalNameOfNodeFallback(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 91
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 92
    .local v1, "qname":Ljava/lang/String;
    const/16 v2, 0x3a

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v0

    #@a
    .line 94
    .local v0, "index":I
    if-gez v0, :cond_0

    #@c
    .end local v1    # "qname":Ljava/lang/String;
    :goto_0
    return-object v1

    #@d
    .restart local v1    # "qname":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v0, 0x1

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    goto :goto_0
.end method


# virtual methods
.method public getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 72
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 74
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNodeFallback(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 114
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
