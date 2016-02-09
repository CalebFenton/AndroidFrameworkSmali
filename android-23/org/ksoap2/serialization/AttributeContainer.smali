.class public Lorg/ksoap2/serialization/AttributeContainer;
.super Ljava/lang/Object;
.source "AttributeContainer.java"


# instance fields
.field private attributes:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 7
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    #@a
    .line 6
    return-void
.end method

.method private attributeIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    #@3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 113
    iget-object v1, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lorg/ksoap2/serialization/AttributeInfo;

    #@11
    invoke-virtual {v1}, Lorg/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 114
    new-instance v1, Ljava/lang/Integer;

    #@1d
    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    #@20
    return-object v1

    #@21
    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 117
    :cond_1
    const/4 v1, 0x0

    #@25
    return-object v1
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 163
    new-instance v0, Lorg/ksoap2/serialization/AttributeInfo;

    #@2
    invoke-direct {v0}, Lorg/ksoap2/serialization/AttributeInfo;-><init>()V

    #@5
    .line 164
    .local v0, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    iput-object p1, v0, Lorg/ksoap2/serialization/AttributeInfo;->name:Ljava/lang/String;

    #@7
    .line 165
    if-nez p2, :cond_0

    #@9
    sget-object v1, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    #@b
    :goto_0
    iput-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->type:Ljava/lang/Object;

    #@d
    .line 166
    iput-object p2, v0, Lorg/ksoap2/serialization/AttributeInfo;->value:Ljava/lang/Object;

    #@f
    .line 167
    invoke-virtual {p0, v0}, Lorg/ksoap2/serialization/AttributeContainer;->addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)V

    #@12
    .line 162
    return-void

    #@13
    .line 165
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v1

    #@17
    goto :goto_0
.end method

.method public addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)V
    .locals 1
    .param p1, "attributeInfo"    # Lorg/ksoap2/serialization/AttributeInfo;

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5
    .line 188
    return-void
.end method

.method public addAttributeIfValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 176
    if-eqz p2, :cond_0

    #@2
    .line 177
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/AttributeContainer;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 175
    :cond_0
    return-void
.end method

.method public addAttributeIfValue(Lorg/ksoap2/serialization/AttributeInfo;)V
    .locals 1
    .param p1, "attributeInfo"    # Lorg/ksoap2/serialization/AttributeInfo;

    #@0
    .prologue
    .line 197
    iget-object v0, p1, Lorg/ksoap2/serialization/AttributeInfo;->value:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 198
    iget-object v0, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@9
    .line 196
    :cond_0
    return-void
.end method

.method protected attributesAreEqual(Lorg/ksoap2/serialization/AttributeContainer;)Z
    .locals 7
    .param p1, "other"    # Lorg/ksoap2/serialization/AttributeContainer;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 136
    invoke-virtual {p0}, Lorg/ksoap2/serialization/AttributeContainer;->getAttributeCount()I

    #@4
    move-result v1

    #@5
    .line 137
    .local v1, "numAttributes":I
    invoke-virtual {p1}, Lorg/ksoap2/serialization/AttributeContainer;->getAttributeCount()I

    #@8
    move-result v5

    #@9
    if-eq v1, v5, :cond_0

    #@b
    .line 138
    return v6

    #@c
    .line 141
    :cond_0
    const/4 v0, 0x0

    #@d
    .local v0, "attribIndex":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@f
    .line 142
    iget-object v5, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    #@11
    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Lorg/ksoap2/serialization/AttributeInfo;

    #@17
    .line 143
    .local v3, "thisAttrib":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v3}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    .line 144
    .local v4, "thisAttribValue":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {p1, v5}, Lorg/ksoap2/serialization/AttributeContainer;->hasAttribute(Ljava/lang/String;)Z

    #@22
    move-result v5

    #@23
    if-nez v5, :cond_1

    #@25
    .line 145
    return v6

    #@26
    .line 147
    :cond_1
    invoke-virtual {v3}, Lorg/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {p1, v5}, Lorg/ksoap2/serialization/AttributeContainer;->getAttributeSafely(Ljava/lang/String;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    .line 148
    .local v2, "otherAttribValue":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v5

    #@32
    if-nez v5, :cond_2

    #@34
    .line 149
    return v6

    #@35
    .line 141
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 152
    .end local v2    # "otherAttribValue":Ljava/lang/Object;
    .end local v3    # "thisAttrib":Lorg/ksoap2/serialization/AttributeInfo;
    .end local v4    # "thisAttribValue":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x1

    #@39
    return v5
.end method

.method public getAttribute(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 29
    iget-object v0, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/ksoap2/serialization/AttributeInfo;

    #@8
    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/AttributeContainer;->attributeIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 47
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@6
    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/AttributeContainer;->getAttribute(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 50
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "illegal property: "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method public getAttributeAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 36
    iget-object v1, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/ksoap2/serialization/AttributeInfo;

    #@8
    .line 37
    .local v0, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public getAttributeAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/AttributeContainer;->attributeIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 61
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@6
    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/AttributeContainer;->getAttribute(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 64
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "illegal property: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1
.end method

.method public getAttributeCount()I
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getAttributeInfo(ILorg/ksoap2/serialization/AttributeInfo;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "attributeInfo"    # Lorg/ksoap2/serialization/AttributeInfo;

    #@0
    .prologue
    .line 16
    iget-object v1, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/ksoap2/serialization/AttributeInfo;

    #@8
    .line 17
    .local v0, "p":Lorg/ksoap2/serialization/AttributeInfo;
    iget-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->name:Ljava/lang/String;

    #@a
    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->name:Ljava/lang/String;

    #@c
    .line 18
    iget-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->namespace:Ljava/lang/String;

    #@e
    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->namespace:Ljava/lang/String;

    #@10
    .line 19
    iget v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->flags:I

    #@12
    iput v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->flags:I

    #@14
    .line 20
    iget-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->type:Ljava/lang/Object;

    #@16
    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->type:Ljava/lang/Object;

    #@18
    .line 21
    iget-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    #@1a
    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    #@1c
    .line 22
    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->value:Ljava/lang/Object;

    #@22
    .line 15
    return-void
.end method

.method public getAttributeSafely(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 86
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/AttributeContainer;->attributeIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@4
    move-result-object v0

    #@5
    .line 87
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@7
    .line 88
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/AttributeContainer;->getAttribute(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 90
    :cond_0
    return-object v1
.end method

.method public getAttributeSafelyAsString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/AttributeContainer;->attributeIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 104
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@6
    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/AttributeContainer;->getAttribute(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 107
    :cond_0
    const-string/jumbo v1, ""

    #@16
    return-object v1
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/AttributeContainer;->attributeIndex(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 73
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 75
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0
.end method
