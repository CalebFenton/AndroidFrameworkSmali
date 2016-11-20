.class public Lorg/ccil/cowan/tagsoup/ElementType;
.super Ljava/lang/Object;
.source "ElementType.java"


# instance fields
.field private theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

.field private theFlags:I

.field private theLocalName:Ljava/lang/String;

.field private theMemberOf:I

.field private theModel:I

.field private theName:Ljava/lang/String;

.field private theNamespace:Ljava/lang/String;

.field private theParent:Lorg/ccil/cowan/tagsoup/ElementType;

.field private theSchema:Lorg/ccil/cowan/tagsoup/Schema;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILorg/ccil/cowan/tagsoup/Schema;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # I
    .param p3, "memberOf"    # I
    .param p4, "flags"    # I
    .param p5, "schema"    # Lorg/ccil/cowan/tagsoup/Schema;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theName:Ljava/lang/String;

    #@5
    .line 52
    iput p2, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theModel:I

    #@7
    .line 53
    iput p3, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theMemberOf:I

    #@9
    .line 54
    iput p4, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theFlags:I

    #@b
    .line 55
    new-instance v0, Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@d
    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;-><init>()V

    #@10
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@12
    .line 56
    iput-object p5, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@14
    .line 57
    const/4 v0, 0x0

    #@15
    invoke-virtual {p0, p1, v0}, Lorg/ccil/cowan/tagsoup/ElementType;->namespace(Ljava/lang/String;Z)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theNamespace:Ljava/lang/String;

    #@1b
    .line 58
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/ElementType;->localName(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theLocalName:Ljava/lang/String;

    #@21
    .line 50
    return-void
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    if-nez p0, :cond_0

    #@2
    return-object p0

    #@3
    .line 218
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    .line 219
    const-string/jumbo v5, "  "

    #@a
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@d
    move-result v5

    #@e
    const/4 v6, -0x1

    #@f
    if-ne v5, v6, :cond_1

    #@11
    return-object p0

    #@12
    .line 220
    :cond_1
    const/4 v3, 0x0

    #@13
    .line 221
    .local v3, "space":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@16
    move-result v2

    #@17
    .line 222
    .local v2, "len":I
    new-instance v0, Ljava/lang/StringBuffer;

    #@19
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@1c
    .line 223
    .local v0, "b":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    #@1f
    .line 224
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v4

    #@23
    .line 225
    .local v4, "v":C
    const/16 v5, 0x20

    #@25
    if-ne v4, v5, :cond_3

    #@27
    .line 226
    if-nez v3, :cond_2

    #@29
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2c
    .line 227
    :cond_2
    const/4 v3, 0x1

    #@2d
    .line 223
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 230
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@33
    .line 231
    const/4 v3, 0x0

    #@34
    goto :goto_1

    #@35
    .line 234
    .end local v4    # "v":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    return-object v5
.end method


# virtual methods
.method public atts()Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@2
    return-object v0
.end method

.method public canContain(Lorg/ccil/cowan/tagsoup/ElementType;)Z
    .locals 3
    .param p1, "other"    # Lorg/ccil/cowan/tagsoup/ElementType;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 176
    iget v1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theModel:I

    #@3
    iget v2, p1, Lorg/ccil/cowan/tagsoup/ElementType;->theMemberOf:I

    #@5
    and-int/2addr v1, v2

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public flags()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theFlags:I

    #@2
    return v0
.end method

.method public localName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theLocalName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public localName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    const/16 v1, 0x3a

    #@2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    .line 90
    .local v0, "colon":I
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 91
    return-object p1

    #@a
    .line 94
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@c
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public memberOf()I
    .locals 1

    #@0
    .prologue
    .line 132
    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theMemberOf:I

    #@2
    return v0
.end method

.method public model()I
    .locals 1

    #@0
    .prologue
    .line 124
    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theModel:I

    #@2
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theNamespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public namespace(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attribute"    # Z

    #@0
    .prologue
    .line 70
    const/16 v2, 0x3a

    #@2
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    .line 71
    .local v0, "colon":I
    const/4 v2, -0x1

    #@7
    if-ne v0, v2, :cond_1

    #@9
    .line 72
    if-eqz p2, :cond_0

    #@b
    const-string/jumbo v2, ""

    #@e
    :goto_0
    return-object v2

    #@f
    :cond_0
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@11
    invoke-virtual {v2}, Lorg/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    goto :goto_0

    #@16
    .line 74
    :cond_1
    const/4 v2, 0x0

    #@17
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 75
    .local v1, "prefix":Ljava/lang/String;
    const-string/jumbo v2, "xml"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 76
    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    #@27
    return-object v2

    #@28
    .line 79
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v3, "urn:x-prefix:"

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    return-object v2
.end method

.method public parent()Lorg/ccil/cowan/tagsoup/ElementType;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theParent:Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    return-object v0
.end method

.method public schema()Lorg/ccil/cowan/tagsoup/Schema;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    #@2
    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    #@2
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/ElementType;->setAttribute(Lorg/ccil/cowan/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 244
    return-void
.end method

.method public setAttribute(Lorg/ccil/cowan/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "atts"    # Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 190
    const-string/jumbo v0, "xmlns"

    #@3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, "xmlns:"

    #@c
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 191
    :cond_0
    return-void

    #@13
    .line 194
    :cond_1
    const/4 v0, 0x1

    #@14
    invoke-virtual {p0, p2, v0}, Lorg/ccil/cowan/tagsoup/ElementType;->namespace(Ljava/lang/String;Z)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 195
    .local v1, "namespace":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lorg/ccil/cowan/tagsoup/ElementType;->localName(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 196
    .local v2, "localName":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getIndex(Ljava/lang/String;)I

    #@1f
    move-result v4

    #@20
    .line 197
    .local v4, "i":I
    const/4 v0, -0x1

    #@21
    if-ne v4, v0, :cond_4

    #@23
    .line 198
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@26
    move-result-object p2

    #@27
    .line 199
    if-nez p3, :cond_2

    #@29
    const-string/jumbo p3, "CDATA"

    #@2c
    .line 200
    :cond_2
    const-string/jumbo v0, "CDATA"

    #@2f
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_3

    #@35
    invoke-static {p4}, Lorg/ccil/cowan/tagsoup/ElementType;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object p4

    #@39
    :cond_3
    move-object v0, p1

    #@3a
    move-object v3, p2

    #@3b
    move-object v4, p3

    #@3c
    move-object v5, p4

    #@3d
    .line 201
    invoke-virtual/range {v0 .. v5}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@40
    .line 189
    .end local v4    # "i":I
    :goto_0
    return-void

    #@41
    .line 204
    .restart local v4    # "i":I
    :cond_4
    if-nez p3, :cond_5

    #@43
    invoke-virtual {p1, v4}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getType(I)Ljava/lang/String;

    #@46
    move-result-object p3

    #@47
    .line 205
    :cond_5
    const-string/jumbo v0, "CDATA"

    #@4a
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v0

    #@4e
    if-nez v0, :cond_6

    #@50
    invoke-static {p4}, Lorg/ccil/cowan/tagsoup/ElementType;->normalize(Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object p4

    #@54
    :cond_6
    move-object v3, p1

    #@55
    move-object v5, v1

    #@56
    move-object v6, v2

    #@57
    move-object v7, p2

    #@58
    move-object v8, p3

    #@59
    move-object v9, p4

    #@5a
    .line 206
    invoke-virtual/range {v3 .. v9}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->setAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5d
    goto :goto_0
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 267
    iput p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theFlags:I

    #@2
    return-void
.end method

.method public setMemberOf(I)V
    .locals 0
    .param p1, "memberOf"    # I

    #@0
    .prologue
    .line 260
    iput p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theMemberOf:I

    #@2
    return-void
.end method

.method public setModel(I)V
    .locals 0
    .param p1, "model"    # I

    #@0
    .prologue
    .line 253
    iput p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theModel:I

    #@2
    return-void
.end method

.method public setParent(Lorg/ccil/cowan/tagsoup/ElementType;)V
    .locals 0
    .param p1, "parent"    # Lorg/ccil/cowan/tagsoup/ElementType;

    #@0
    .prologue
    .line 274
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theParent:Lorg/ccil/cowan/tagsoup/ElementType;

    #@2
    return-void
.end method
