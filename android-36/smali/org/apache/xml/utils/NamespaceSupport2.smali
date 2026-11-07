.class public Lorg/apache/xml/utils/NamespaceSupport2;
.super Lorg/xml/sax/helpers/NamespaceSupport;
.source "NamespaceSupport2.java"


# static fields
.field public static final greylist XMLNS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private greylist currentContext:Lorg/apache/xml/utils/Context2;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    .line 79
    invoke-virtual {p0}, Lorg/apache/xml/utils/NamespaceSupport2;->reset()V

    return-void
.end method


# virtual methods
.method public whitelist test-api declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 197
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_18

    .line 200
    :cond_11
    iget-object p0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/utils/Context2;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getDeclaredPrefixes()Ljava/util/Enumeration;
    .registers 1

    .line 369
    iget-object p0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {p0}, Lorg/apache/xml/utils/Context2;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 315
    iget-object p0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/Context2;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getPrefixes()Ljava/util/Enumeration;
    .registers 1

    .line 291
    iget-object p0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {p0}, Lorg/apache/xml/utils/Context2;->getPrefixes()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getPrefixes(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 4

    .line 351
    new-instance v0, Lorg/apache/xml/utils/PrefixForUriEnumerator;

    invoke-virtual {p0}, Lorg/apache/xml/utils/NamespaceSupport2;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/xml/utils/PrefixForUriEnumerator;-><init>(Lorg/apache/xml/utils/NamespaceSupport2;Ljava/lang/String;Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public whitelist test-api getURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 272
    iget-object p0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/Context2;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api popContext()V
    .registers 2

    .line 153
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v0}, Lorg/apache/xml/utils/Context2;->getParent()Lorg/apache/xml/utils/Context2;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 157
    iput-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    return-void

    .line 155
    :cond_b
    new-instance p0, Ljava/util/EmptyStackException;

    invoke-direct {p0}, Ljava/util/EmptyStackException;-><init>()V

    throw p0
.end method

.method public whitelist test-api processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 4

    .line 247
    iget-object p0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {p0, p1, p3}, Lorg/apache/xml/utils/Context2;->processName(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const/4 p1, 0x3

    const/4 p3, 0x0

    .line 253
    invoke-static {p0, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public whitelist test-api pushContext()V
    .registers 3

    .line 125
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    .line 126
    invoke-virtual {v0}, Lorg/apache/xml/utils/Context2;->getChild()Lorg/apache/xml/utils/Context2;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    if-nez v1, :cond_12

    .line 128
    new-instance v1, Lorg/apache/xml/utils/Context2;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/Context2;-><init>(Lorg/apache/xml/utils/Context2;)V

    iput-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    return-void

    .line 133
    :cond_12
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/Context2;->setParent(Lorg/apache/xml/utils/Context2;)V

    return-void
.end method

.method public whitelist test-api reset()V
    .registers 3

    .line 99
    new-instance v0, Lorg/apache/xml/utils/Context2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/Context2;-><init>(Lorg/apache/xml/utils/Context2;)V

    iput-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    .line 100
    const-string p0, "xml"

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p0, v1}, Lorg/apache/xml/utils/Context2;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
