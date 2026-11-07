.class public Ljavax/xml/transform/dom/DOMResult;
.super Ljava/lang/Object;
.source "DOMResult.java"

# interfaces
.implements Ljavax/xml/transform/Result;


# static fields
.field public static final whitelist test-api FEATURE:Ljava/lang/String; = "http://javax.xml.transform.dom.DOMResult/feature"


# instance fields
.field private greylist-max-o nextSibling:Lorg/w3c/dom/Node;

.field private greylist-max-o node:Lorg/w3c/dom/Node;

.field private greylist-max-o systemId:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    .line 344
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    .line 349
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    .line 52
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 53
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/w3c/dom/Node;)V
    .registers 3
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    .line 344
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    .line 349
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    .line 73
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 74
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .registers 4
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "systemId"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    .line 344
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    .line 349
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    .line 93
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 94
    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 5
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "nextSibling"    # Lorg/w3c/dom/Node;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    .line 344
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    .line 349
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 129
    if-eqz p2, :cond_27

    .line 131
    if-eqz p1, :cond_1f

    .line 136
    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_17

    goto :goto_27

    .line 137
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_27
    :goto_27
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    .line 142
    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 143
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .registers 6
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "nextSibling"    # Lorg/w3c/dom/Node;
    .param p3, "systemId"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    .line 344
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    .line 349
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 178
    if-eqz p2, :cond_27

    .line 180
    if-eqz p1, :cond_1f

    .line 185
    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_17

    goto :goto_27

    .line 186
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_27
    :goto_27
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    .line 191
    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    .line 192
    invoke-virtual {p0, p3}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 193
    return-void
.end method


# virtual methods
.method public whitelist test-api getNextSibling()Lorg/w3c/dom/Node;
    .registers 2

    .line 303
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public whitelist test-api getNode()Lorg/w3c/dom/Node;
    .registers 2

    .line 248
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 327
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api setNextSibling(Lorg/w3c/dom/Node;)V
    .registers 4
    .param p1, "nextSibling"    # Lorg/w3c/dom/Node;

    .line 274
    if-eqz p1, :cond_21

    .line 276
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_19

    .line 281
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_11

    goto :goto_21

    .line 282
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_21
    :goto_21
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    .line 287
    return-void
.end method

.method public whitelist test-api setNode(Lorg/w3c/dom/Node;)V
    .registers 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 218
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_21

    .line 220
    if-eqz p1, :cond_19

    .line 225
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_11

    goto :goto_21

    .line 226
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_21
    :goto_21
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    .line 231
    return-void
.end method

.method public whitelist test-api setSystemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .line 312
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 313
    return-void
.end method
