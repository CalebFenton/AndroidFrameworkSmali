.class public Lorg/ccil/cowan/tagsoup/Element;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field private preclosed:Z

.field private theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

.field private theNext:Lorg/ccil/cowan/tagsoup/Element;

.field private theType:Lorg/ccil/cowan/tagsoup/ElementType;


# direct methods
.method public constructor <init>(Lorg/ccil/cowan/tagsoup/ElementType;Z)V
    .locals 2
    .param p1, "type"    # Lorg/ccil/cowan/tagsoup/ElementType;
    .param p2, "defaultAttributes"    # Z

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    #@5
    .line 39
    if-eqz p2, :cond_0

    #@7
    new-instance v0, Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@9
    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/ElementType;->atts()Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    #@10
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@12
    .line 41
    :goto_0
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theNext:Lorg/ccil/cowan/tagsoup/Element;

    #@15
    .line 42
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Element;->preclosed:Z

    #@18
    .line 37
    return-void

    #@19
    .line 40
    :cond_0
    new-instance v0, Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@1b
    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;-><init>()V

    #@1e
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@20
    goto :goto_0
.end method


# virtual methods
.method public anonymize()V
    .locals 3

    #@0
    .prologue
    .line 160
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@2
    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getLength()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@a
    .line 161
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@c
    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getType(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "ID"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 162
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@1b
    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getQName(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "name"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    .line 161
    if-eqz v1, :cond_1

    #@28
    .line 163
    :cond_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@2a
    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->removeAttribute(I)V

    #@2d
    .line 160
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 159
    :cond_2
    return-void
.end method

.method public atts()Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@2
    return-object v0
.end method

.method public canContain(Lorg/ccil/cowan/tagsoup/Element;)Z
    .locals 2
    .param p1, "other"    # Lorg/ccil/cowan/tagsoup/Element;

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    iget-object v1, p1, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    #@4
    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/ElementType;->canContain(Lorg/ccil/cowan/tagsoup/ElementType;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public clean()V
    .locals 3

    #@0
    .prologue
    .line 176
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@2
    invoke-virtual {v2}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getLength()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@a
    .line 177
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@c
    invoke-virtual {v2, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getLocalName(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 178
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@12
    invoke-virtual {v2, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getValue(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    if-eqz v2, :cond_0

    #@18
    if-nez v1, :cond_2

    #@1a
    .line 180
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@1c
    invoke-virtual {v2, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->removeAttribute(I)V

    #@1f
    .line 176
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@21
    goto :goto_0

    #@22
    .line 179
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_1

    #@28
    goto :goto_1

    #@29
    .line 175
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public flags()I
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->flags()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPreclosed()Z
    .locals 1

    #@0
    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Element;->preclosed:Z

    #@2
    return v0
.end method

.method public localName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->localName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public memberOf()I
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->memberOf()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public model()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->model()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->name()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->namespace()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public next()Lorg/ccil/cowan/tagsoup/Element;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theNext:Lorg/ccil/cowan/tagsoup/Element;

    #@2
    return-object v0
.end method

.method public parent()Lorg/ccil/cowan/tagsoup/ElementType;
    .locals 1

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->parent()Lorg/ccil/cowan/tagsoup/ElementType;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public preclose()V
    .locals 1

    #@0
    .prologue
    .line 192
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Element;->preclosed:Z

    #@3
    .line 191
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@4
    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/ElementType;->setAttribute(Lorg/ccil/cowan/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 149
    return-void
.end method

.method public setNext(Lorg/ccil/cowan/tagsoup/Element;)V
    .locals 0
    .param p1, "next"    # Lorg/ccil/cowan/tagsoup/Element;

    #@0
    .prologue
    .line 72
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Element;->theNext:Lorg/ccil/cowan/tagsoup/Element;

    #@2
    return-void
.end method

.method public type()Lorg/ccil/cowan/tagsoup/ElementType;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    return-object v0
.end method
