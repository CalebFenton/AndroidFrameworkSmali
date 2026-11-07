.class public final Lorg/apache/xml/serializer/utils/DOM2Helper;
.super Ljava/lang/Object;
.source "DOM2Helper.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist getLocalNameOfNodeFallback(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 2

    .line 91
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3a

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_d

    return-object p0

    :cond_d
    add-int/lit8 p1, p1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 3

    .line 72
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 74
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNodeFallback(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0
.end method

.method public greylist getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 2

    .line 114
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
