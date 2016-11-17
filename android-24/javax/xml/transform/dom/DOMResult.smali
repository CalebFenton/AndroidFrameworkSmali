.class public Ljavax/xml/transform/dom/DOMResult;
.super Ljava/lang/Object;
.source "DOMResult.java"

# interfaces
.implements Ljavax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.dom.DOMResult/feature"


# instance fields
.field private nextSibling:Lorg/w3c/dom/Node;

.field private node:Lorg/w3c/dom/Node;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 337
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    #@6
    .line 344
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    #@8
    .line 349
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    #@a
    .line 51
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    #@d
    .line 52
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    #@10
    .line 53
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    #@13
    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 337
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    #@6
    .line 344
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    #@8
    .line 349
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    #@a
    .line 72
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    #@d
    .line 73
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    #@10
    .line 74
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    #@13
    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 337
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    #@6
    .line 344
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    #@8
    .line 349
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    #@a
    .line 92
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    #@d
    .line 93
    invoke-virtual {p0, v0}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    #@10
    .line 94
    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    #@13
    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "nextSibling"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 337
    iput-object v1, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    #@6
    .line 344
    iput-object v1, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    #@8
    .line 349
    iput-object v1, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    #@a
    .line 129
    if-eqz p2, :cond_1

    #@c
    .line 131
    if-nez p1, :cond_0

    #@e
    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 136
    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    #@1a
    move-result v0

    #@1b
    and-int/lit8 v0, v0, 0x10

    #@1d
    if-nez v0, :cond_1

    #@1f
    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 141
    :cond_1
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    #@2b
    .line 142
    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    #@2e
    .line 143
    invoke-virtual {p0, v1}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    #@31
    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "nextSibling"    # Lorg/w3c/dom/Node;
    .param p3, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 337
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    #@6
    .line 344
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    #@8
    .line 349
    iput-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    #@a
    .line 178
    if-eqz p2, :cond_1

    #@c
    .line 180
    if-nez p1, :cond_0

    #@e
    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 185
    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    #@1a
    move-result v0

    #@1b
    and-int/lit8 v0, v0, 0x10

    #@1d
    if-nez v0, :cond_1

    #@1f
    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 190
    :cond_1
    invoke-virtual {p0, p1}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    #@2b
    .line 191
    invoke-virtual {p0, p2}, Ljavax/xml/transform/dom/DOMResult;->setNextSibling(Lorg/w3c/dom/Node;)V

    #@2e
    .line 192
    invoke-virtual {p0, p3}, Ljavax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    #@31
    .line 175
    return-void
.end method


# virtual methods
.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    #@2
    return-object v0
.end method

.method public getNode()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    #@2
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setNextSibling(Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "nextSibling"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 274
    if-eqz p1, :cond_1

    #@2
    .line 276
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 281
    :cond_0
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    #@11
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    #@14
    move-result v0

    #@15
    and-int/lit8 v0, v0, 0x10

    #@17
    if-nez v0, :cond_1

    #@19
    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 286
    :cond_1
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    #@24
    .line 271
    return-void
.end method

.method public setNode(Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 220
    if-nez p1, :cond_0

    #@6
    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 225
    :cond_0
    iget-object v0, p0, Ljavax/xml/transform/dom/DOMResult;->nextSibling:Lorg/w3c/dom/Node;

    #@11
    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->compareDocumentPosition(Lorg/w3c/dom/Node;)S

    #@14
    move-result v0

    #@15
    and-int/lit8 v0, v0, 0x10

    #@17
    if-nez v0, :cond_1

    #@19
    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 230
    :cond_1
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMResult;->node:Lorg/w3c/dom/Node;

    #@24
    .line 216
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 312
    iput-object p1, p0, Ljavax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    #@2
    .line 311
    return-void
.end method
