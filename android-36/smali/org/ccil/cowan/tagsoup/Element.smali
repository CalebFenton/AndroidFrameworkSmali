.class public Lorg/ccil/cowan/tagsoup/Element;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field private greylist preclosed:Z

.field private greylist theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

.field private greylist theNext:Lorg/ccil/cowan/tagsoup/Element;

.field private greylist theType:Lorg/ccil/cowan/tagsoup/ElementType;


# direct methods
.method public constructor greylist <init>(Lorg/ccil/cowan/tagsoup/ElementType;Z)V
    .registers 5
    .param p1, "type"    # Lorg/ccil/cowan/tagsoup/ElementType;
    .param p2, "defaultAttributes"    # Z

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    .line 39
    if-eqz p2, :cond_13

    new-instance v0, Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/ElementType;->atts()Lorg/ccil/cowan/tagsoup/AttributesImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    goto :goto_1a

    .line 40
    :cond_13
    new-instance v0, Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    .line 41
    :goto_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theNext:Lorg/ccil/cowan/tagsoup/Element;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Element;->preclosed:Z

    .line 43
    return-void
.end method


# virtual methods
.method public greylist anonymize()V
    .registers 4

    .line 160
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2e

    .line 161
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getType(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ID"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    .line 162
    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 163
    :cond_26
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->removeAttribute(I)V

    .line 160
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 166
    .end local v0    # "i":I
    :cond_2e
    return-void
.end method

.method public greylist atts()Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .registers 2

    .line 58
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    return-object v0
.end method

.method public greylist canContain(Lorg/ccil/cowan/tagsoup/Element;)Z
    .registers 4
    .param p1, "other"    # Lorg/ccil/cowan/tagsoup/Element;

    .line 138
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    iget-object v1, p1, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/ElementType;->canContain(Lorg/ccil/cowan/tagsoup/ElementType;)Z

    move-result v0

    return v0
.end method

.method public greylist clean()V
    .registers 4

    .line 176
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_29

    .line 177
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v2, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    if-eqz v1, :cond_20

    .line 179
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_26

    .line 180
    :cond_20
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v2, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->removeAttribute(I)V

    .line 181
    nop

    .line 176
    .end local v1    # "name":Ljava/lang/String;
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 184
    .end local v0    # "i":I
    :cond_29
    return-void
.end method

.method public greylist flags()I
    .registers 2

    .line 120
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->flags()I

    move-result v0

    return v0
.end method

.method public greylist isPreclosed()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Element;->preclosed:Z

    return v0
.end method

.method public greylist localName()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->localName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist memberOf()I
    .registers 2

    .line 112
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->memberOf()I

    move-result v0

    return v0
.end method

.method public greylist model()I
    .registers 2

    .line 104
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->model()I

    move-result v0

    return v0
.end method

.method public greylist name()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist namespace()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->namespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist next()Lorg/ccil/cowan/tagsoup/Element;
    .registers 2

    .line 65
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theNext:Lorg/ccil/cowan/tagsoup/Element;

    return-object v0
.end method

.method public greylist parent()Lorg/ccil/cowan/tagsoup/ElementType;
    .registers 2

    .line 128
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->parent()Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    return-object v0
.end method

.method public greylist preclose()V
    .registers 2

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Element;->preclosed:Z

    .line 193
    return-void
.end method

.method public greylist setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/ElementType;->setAttribute(Lorg/ccil/cowan/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public greylist setNext(Lorg/ccil/cowan/tagsoup/Element;)V
    .registers 2
    .param p1, "next"    # Lorg/ccil/cowan/tagsoup/Element;

    .line 72
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Element;->theNext:Lorg/ccil/cowan/tagsoup/Element;

    return-void
.end method

.method public greylist type()Lorg/ccil/cowan/tagsoup/ElementType;
    .registers 2

    .line 50
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->theType:Lorg/ccil/cowan/tagsoup/ElementType;

    return-object v0
.end method
