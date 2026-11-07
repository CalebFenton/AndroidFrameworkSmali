.class public Lorg/ccil/cowan/tagsoup/ElementType;
.super Ljava/lang/Object;
.source "ElementType.java"


# instance fields
.field private greylist theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

.field private greylist theFlags:I

.field private greylist theLocalName:Ljava/lang/String;

.field private greylist theMemberOf:I

.field private greylist theModel:I

.field private greylist theName:Ljava/lang/String;

.field private greylist theNamespace:Ljava/lang/String;

.field private greylist theParent:Lorg/ccil/cowan/tagsoup/ElementType;

.field private greylist theSchema:Lorg/ccil/cowan/tagsoup/Schema;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;IIILorg/ccil/cowan/tagsoup/Schema;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # I
    .param p3, "memberOf"    # I
    .param p4, "flags"    # I
    .param p5, "schema"    # Lorg/ccil/cowan/tagsoup/Schema;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theName:Ljava/lang/String;

    .line 52
    iput p2, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theModel:I

    .line 53
    iput p3, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theMemberOf:I

    .line 54
    iput p4, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theFlags:I

    .line 55
    new-instance v0, Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    .line 56
    iput-object p5, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/ccil/cowan/tagsoup/ElementType;->namespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theNamespace:Ljava/lang/String;

    .line 58
    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/ElementType;->localName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theLocalName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static greylist normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "value"    # Ljava/lang/String;

    .line 217
    if-nez p0, :cond_3

    return-object p0

    .line 218
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 219
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    return-object p0

    .line 220
    :cond_11
    const/4 v0, 0x0

    .line 221
    .local v0, "space":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 222
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 223
    .local v2, "b":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v1, :cond_34

    .line 224
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 225
    .local v4, "v":C
    const/16 v5, 0x20

    if-ne v4, v5, :cond_2d

    .line 226
    if-nez v0, :cond_2b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 227
    :cond_2b
    const/4 v0, 0x1

    goto :goto_31

    .line 230
    :cond_2d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 231
    const/4 v0, 0x0

    .line 223
    .end local v4    # "v":C
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 234
    .end local v3    # "i":I
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public greylist atts()Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .registers 2

    .line 150
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    return-object v0
.end method

.method public greylist canContain(Lorg/ccil/cowan/tagsoup/ElementType;)Z
    .registers 4
    .param p1, "other"    # Lorg/ccil/cowan/tagsoup/ElementType;

    .line 176
    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theModel:I

    iget v1, p1, Lorg/ccil/cowan/tagsoup/ElementType;->theMemberOf:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist flags()I
    .registers 2

    .line 139
    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theFlags:I

    return v0
.end method

.method public greylist localName()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theLocalName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist localName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 89
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 90
    .local v0, "colon":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 91
    return-object p1

    .line 94
    :cond_a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist memberOf()I
    .registers 2

    .line 132
    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theMemberOf:I

    return v0
.end method

.method public greylist model()I
    .registers 2

    .line 124
    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theModel:I

    return v0
.end method

.method public greylist name()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist namespace()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public greylist namespace(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attribute"    # Z

    .line 70
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 71
    .local v0, "colon":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 72
    if-eqz p2, :cond_e

    const-string v1, ""

    goto :goto_14

    :cond_e
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v1}, Lorg/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object v1

    :goto_14
    return-object v1

    .line 74
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "prefix":Ljava/lang/String;
    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 76
    const-string v2, "http://www.w3.org/XML/1998/namespace"

    return-object v2

    .line 79
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "urn:x-prefix:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist parent()Lorg/ccil/cowan/tagsoup/ElementType;
    .registers 2

    .line 157
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theParent:Lorg/ccil/cowan/tagsoup/ElementType;

    return-object v0
.end method

.method public greylist schema()Lorg/ccil/cowan/tagsoup/Schema;
    .registers 2

    .line 164
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    return-object v0
.end method

.method public greylist setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/ElementType;->setAttribute(Lorg/ccil/cowan/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public greylist setAttribute(Lorg/ccil/cowan/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "atts"    # Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 190
    const-string v0, "xmlns"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "xmlns:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v1, p1

    move-object v5, p2

    goto :goto_62

    .line 194
    :cond_13
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lorg/ccil/cowan/tagsoup/ElementType;->namespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "namespace":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lorg/ccil/cowan/tagsoup/ElementType;->localName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "localName":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, "i":I
    const/4 v1, -0x1

    const-string v4, "CDATA"

    if-ne v0, v1, :cond_40

    .line 198
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 199
    if-nez p3, :cond_2d

    const-string p3, "CDATA"

    :cond_2d
    move-object v5, p3

    .line 200
    .end local p3    # "type":Ljava/lang/String;
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_38

    invoke-static {p4}, Lorg/ccil/cowan/tagsoup/ElementType;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_38
    move-object v6, p4

    .line 201
    .end local p4    # "value":Ljava/lang/String;
    .local v6, "value":Ljava/lang/String;
    move-object v1, p1

    move-object v4, p2

    .end local p1    # "atts":Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .end local p2    # "name":Ljava/lang/String;
    .local v1, "atts":Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .local v4, "name":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    goto :goto_5f

    .line 204
    .end local v1    # "atts":Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .restart local p1    # "atts":Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "type":Ljava/lang/String;
    .restart local p4    # "value":Ljava/lang/String;
    :cond_40
    move-object v1, p1

    .end local p1    # "atts":Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .restart local v1    # "atts":Lorg/ccil/cowan/tagsoup/AttributesImpl;
    if-nez p3, :cond_47

    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getType(I)Ljava/lang/String;

    move-result-object p3

    :cond_47
    move-object v6, p3

    .line 205
    .end local p3    # "type":Ljava/lang/String;
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    invoke-static {p4}, Lorg/ccil/cowan/tagsoup/ElementType;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_52
    move-object v7, p4

    .line 206
    .end local p4    # "value":Ljava/lang/String;
    .local v7, "value":Ljava/lang/String;
    move-object v5, p2

    move-object v4, v3

    move-object v3, v2

    move v2, v0

    .end local v0    # "i":I
    .end local p2    # "name":Ljava/lang/String;
    .local v2, "i":I
    .local v3, "namespace":Ljava/lang/String;
    .local v4, "localName":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    invoke-virtual/range {v1 .. v7}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->setAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v5, v6

    move-object v6, v7

    .line 208
    .end local v4    # "localName":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .local v2, "namespace":Ljava/lang/String;
    .local v3, "localName":Ljava/lang/String;
    .local v5, "type":Ljava/lang/String;
    .local v6, "value":Ljava/lang/String;
    .local p1, "i":I
    .restart local p2    # "name":Ljava/lang/String;
    :goto_5f
    return-void

    .line 190
    .end local v1    # "atts":Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .end local v2    # "namespace":Ljava/lang/String;
    .end local v3    # "localName":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .local p1, "atts":Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .restart local p3    # "type":Ljava/lang/String;
    .restart local p4    # "value":Ljava/lang/String;
    :cond_60
    move-object v1, p1

    move-object v5, p2

    .line 191
    .end local p1    # "atts":Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .end local p2    # "name":Ljava/lang/String;
    .restart local v1    # "atts":Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .local v5, "name":Ljava/lang/String;
    :goto_62
    return-void
.end method

.method public greylist setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 267
    iput p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theFlags:I

    return-void
.end method

.method public greylist setMemberOf(I)V
    .registers 2
    .param p1, "memberOf"    # I

    .line 260
    iput p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theMemberOf:I

    return-void
.end method

.method public greylist setModel(I)V
    .registers 2
    .param p1, "model"    # I

    .line 253
    iput p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theModel:I

    return-void
.end method

.method public greylist setParent(Lorg/ccil/cowan/tagsoup/ElementType;)V
    .registers 2
    .param p1, "parent"    # Lorg/ccil/cowan/tagsoup/ElementType;

    .line 274
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theParent:Lorg/ccil/cowan/tagsoup/ElementType;

    return-void
.end method
