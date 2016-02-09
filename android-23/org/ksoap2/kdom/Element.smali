.class public Lorg/ksoap2/kdom/Element;
.super Lorg/ksoap2/kdom/Node;
.source "Element.java"


# instance fields
.field protected attributes:Ljava/util/Vector;

.field protected name:Ljava/lang/String;

.field protected namespace:Ljava/lang/String;

.field protected parent:Lorg/ksoap2/kdom/Node;

.field protected prefixes:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lorg/ksoap2/kdom/Node;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 56
    iput-object v0, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    #@3
    .line 57
    iput-object v0, p0, Lorg/ksoap2/kdom/Element;->children:Ljava/util/Vector;

    #@5
    .line 55
    return-void
.end method

.method public createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 69
    invoke-super {p0, p1, p2}, Lorg/ksoap2/kdom/Node;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    #@7
    move-result-object v0

    #@8
    .line 68
    :goto_0
    return-object v0

    #@9
    .line 70
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    #@b
    invoke-virtual {v0, p1, p2}, Lorg/ksoap2/kdom/Node;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public getAttributeCount()I
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    #@8
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    const/4 v1, 0x1

    #@9
    aget-object v0, v0, v1

    #@b
    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    const/4 v1, 0x0

    #@9
    aget-object v0, v0, v1

    #@b
    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    const/4 v1, 0x2

    #@9
    aget-object v0, v0, v1

    #@b
    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 97
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getAttributeCount()I

    #@5
    move-result v1

    #@6
    if-ge v0, v1, :cond_2

    #@8
    .line 98
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getAttributeName(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 99
    if-eqz p1, :cond_0

    #@14
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getAttributeNamespace(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    .line 98
    if-eqz v1, :cond_1

    #@1e
    .line 100
    :cond_0
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getAttributeValue(I)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 97
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 103
    :cond_2
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->namespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    #@8
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    const/4 v1, 0x0

    #@9
    aget-object v0, v0, v1

    #@b
    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    const/4 v1, 0x1

    #@9
    aget-object v0, v0, v1

    #@b
    return-object v0
.end method

.method public getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 141
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getNamespaceCount()I

    #@4
    move-result v0

    #@5
    .line 142
    .local v0, "cnt":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@8
    .line 143
    invoke-virtual {p0, v1}, Lorg/ksoap2/kdom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    if-eq p1, v3, :cond_0

    #@e
    .line 144
    if-eqz p1, :cond_1

    #@10
    invoke-virtual {p0, v1}, Lorg/ksoap2/kdom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v3

    #@18
    .line 143
    if-eqz v3, :cond_1

    #@1a
    .line 145
    :cond_0
    invoke-virtual {p0, v1}, Lorg/ksoap2/kdom/Element;->getNamespaceUri(I)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 142
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 147
    :cond_2
    iget-object v3, p0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    #@24
    instance-of v3, v3, Lorg/ksoap2/kdom/Element;

    #@26
    if-eqz v3, :cond_3

    #@28
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    #@2a
    check-cast v2, Lorg/ksoap2/kdom/Element;

    #@2c
    invoke-virtual {v2, p1}, Lorg/ksoap2/kdom/Element;->getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    :cond_3
    return-object v2
.end method

.method public getParent()Lorg/ksoap2/kdom/Node;
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    #@2
    return-object v0
.end method

.method public getRoot()Lorg/ksoap2/kdom/Node;
    .locals 2

    #@0
    .prologue
    .line 112
    move-object v0, p0

    #@1
    .line 114
    .local v0, "current":Lorg/ksoap2/kdom/Element;
    :goto_0
    iget-object v1, v0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 115
    iget-object v1, v0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    #@7
    instance-of v1, v1, Lorg/ksoap2/kdom/Element;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 116
    iget-object v1, v0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    #@d
    return-object v1

    #@e
    .line 117
    :cond_0
    iget-object v0, v0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    #@10
    .end local v0    # "current":Lorg/ksoap2/kdom/Element;
    check-cast v0, Lorg/ksoap2/kdom/Element;

    #@12
    .restart local v0    # "current":Lorg/ksoap2/kdom/Element;
    goto :goto_0

    #@13
    .line 120
    :cond_1
    return-object v0
.end method

.method public init()V
    .locals 0

    #@0
    .prologue
    .line 49
    return-void
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v1

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    #@9
    move-result v0

    #@a
    .line 192
    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@d
    move-result v1

    #@e
    .line 191
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    #@11
    move-result v1

    #@12
    if-ge v0, v1, :cond_0

    #@14
    .line 193
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0, v1, v2}, Lorg/ksoap2/kdom/Element;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 192
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 196
    :cond_0
    const/4 v0, 0x0

    #@23
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@26
    move-result v1

    #@27
    if-ge v0, v1, :cond_1

    #@29
    .line 197
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 199
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 200
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    .line 197
    invoke-virtual {p0, v1, v2, v3}, Lorg/ksoap2/kdom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 196
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 204
    :cond_1
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->init()V

    #@3e
    .line 206
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    #@41
    move-result v1

    #@42
    if-eqz v1, :cond_3

    #@44
    .line 207
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    #@47
    .line 218
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getNamespace()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    .line 219
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getName()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 217
    const/4 v3, 0x3

    #@50
    .line 216
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@53
    .line 221
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    #@56
    .line 189
    return-void

    #@57
    .line 209
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    #@5a
    .line 210
    invoke-super {p0, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5d
    .line 212
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getChildCount()I

    #@60
    move-result v1

    #@61
    if-nez v1, :cond_2

    #@63
    .line 213
    const-string/jumbo v1, ""

    #@66
    const/4 v2, 0x7

    #@67
    invoke-virtual {p0, v2, v1}, Lorg/ksoap2/kdom/Element;->addChild(ILjava/lang/Object;)V

    #@6a
    goto :goto_2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 228
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 229
    new-instance v2, Ljava/util/Vector;

    #@9
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@c
    iput-object v2, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    #@e
    .line 231
    :cond_0
    if-nez p1, :cond_1

    #@10
    .line 232
    const-string/jumbo p1, ""

    #@13
    .line 234
    :cond_1
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    #@15
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@18
    move-result v2

    #@19
    add-int/lit8 v1, v2, -0x1

    #@1b
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    #@1d
    .line 235
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    #@1f
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, [Ljava/lang/String;

    #@25
    .line 236
    .local v0, "attribut":[Ljava/lang/String;
    aget-object v2, v0, v4

    #@27
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_3

    #@2d
    .line 237
    aget-object v2, v0, v5

    #@2f
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    .line 236
    if-eqz v2, :cond_3

    #@35
    .line 239
    if-nez p3, :cond_2

    #@37
    .line 240
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    #@39
    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    #@3c
    .line 245
    :goto_1
    return-void

    #@3d
    .line 243
    :cond_2
    aput-object p3, v0, v6

    #@3f
    goto :goto_1

    #@40
    .line 234
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@42
    goto :goto_0

    #@43
    .line 249
    .end local v0    # "attribut":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->attributes:Ljava/util/Vector;

    #@45
    .line 250
    const/4 v3, 0x3

    #@46
    new-array v3, v3, [Ljava/lang/String;

    #@48
    .line 251
    aput-object p1, v3, v4

    #@4a
    aput-object p2, v3, v5

    #@4c
    aput-object p3, v3, v6

    #@4e
    .line 249
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@51
    .line 227
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 271
    iput-object p1, p0, Lorg/ksoap2/kdom/Element;->name:Ljava/lang/String;

    #@2
    .line 270
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;

    #@0
    .prologue
    .line 281
    if-nez p1, :cond_0

    #@2
    .line 282
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "Use \"\" for empty namespace"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 283
    :cond_0
    iput-object p1, p0, Lorg/ksoap2/kdom/Element;->namespace:Ljava/lang/String;

    #@d
    .line 280
    return-void
.end method

.method protected setParent(Lorg/ksoap2/kdom/Node;)V
    .locals 0
    .param p1, "parent"    # Lorg/ksoap2/kdom/Node;

    #@0
    .prologue
    .line 293
    iput-object p1, p0, Lorg/ksoap2/kdom/Element;->parent:Lorg/ksoap2/kdom/Node;

    #@2
    .line 292
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 261
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    #@b
    .line 262
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    #@d
    const/4 v1, 0x2

    #@e
    new-array v1, v1, [Ljava/lang/String;

    #@10
    .line 263
    const/4 v2, 0x0

    #@11
    aput-object p1, v1, v2

    #@13
    const/4 v2, 0x1

    #@14
    aput-object p2, v1, v2

    #@16
    .line 262
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@19
    .line 259
    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 303
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/ksoap2/kdom/Element;->prefixes:Ljava/util/Vector;

    #@7
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@a
    move-result v2

    #@b
    if-ge v0, v2, :cond_0

    #@d
    .line 304
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getNamespacePrefix(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getNamespaceUri(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 303
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 309
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getNamespace()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 310
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getName()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 308
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@26
    .line 312
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getAttributeCount()I

    #@29
    move-result v1

    #@2a
    .line 314
    .local v1, "len":I
    const/4 v0, 0x0

    #@2b
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@2d
    .line 316
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getAttributeNamespace(I)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 317
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getAttributeName(I)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    .line 318
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Element;->getAttributeValue(I)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 315
    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3c
    .line 314
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 321
    :cond_1
    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Element;->writeChildren(Lorg/xmlpull/v1/XmlSerializer;)V

    #@42
    .line 323
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getNamespace()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Element;->getName()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 300
    return-void
.end method
