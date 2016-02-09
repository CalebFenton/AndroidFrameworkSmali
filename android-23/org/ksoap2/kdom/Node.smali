.class public Lorg/ksoap2/kdom/Node;
.super Ljava/lang/Object;
.source "Node.java"


# static fields
.field public static final CDSECT:I = 0x5

.field public static final COMMENT:I = 0x9

.field public static final DOCDECL:I = 0xa

.field public static final DOCUMENT:I = 0x0

.field public static final ELEMENT:I = 0x2

.field public static final ENTITY_REF:I = 0x6

.field public static final IGNORABLE_WHITESPACE:I = 0x7

.field public static final PROCESSING_INSTRUCTION:I = 0x8

.field public static final TEXT:I = 0x4


# instance fields
.field protected children:Ljava/util/Vector;

.field protected types:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public addChild(IILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "child"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 50
    if-nez p3, :cond_0

    #@2
    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 53
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 54
    new-instance v0, Ljava/util/Vector;

    #@e
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@11
    iput-object v0, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    #@13
    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    #@15
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@18
    iput-object v0, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    #@1a
    .line 58
    :cond_1
    const/4 v0, 0x2

    #@1b
    if-ne p2, v0, :cond_4

    #@1d
    .line 59
    instance-of v0, p3, Lorg/ksoap2/kdom/Element;

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    #@23
    const-string/jumbo v1, "Element obj expected)"

    #@26
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    :cond_2
    move-object v0, p3

    #@2b
    .line 62
    check-cast v0, Lorg/ksoap2/kdom/Element;

    #@2d
    invoke-virtual {v0, p0}, Lorg/ksoap2/kdom/Element;->setParent(Lorg/ksoap2/kdom/Node;)V

    #@30
    .line 67
    :cond_3
    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    #@32
    invoke-virtual {v0, p3, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@35
    .line 68
    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    #@37
    int-to-char v1, p2

    #@38
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    #@3b
    .line 48
    return-void

    #@3c
    .line 64
    :cond_4
    instance-of v0, p3, Ljava/lang/String;

    #@3e
    if-nez v0, :cond_3

    #@40
    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    #@42
    const-string/jumbo v1, "String expected"

    #@45
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0
.end method

.method public addChild(ILjava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "child"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Node;->getChildCount()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0, p1, p2}, Lorg/ksoap2/kdom/Node;->addChild(IILjava/lang/Object;)V

    #@7
    .line 73
    return-void
.end method

.method public createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 87
    new-instance v0, Lorg/ksoap2/kdom/Element;

    #@2
    invoke-direct {v0}, Lorg/ksoap2/kdom/Element;-><init>()V

    #@5
    .line 88
    .local v0, "e":Lorg/ksoap2/kdom/Element;
    if-nez p1, :cond_0

    #@7
    const-string/jumbo p1, ""

    #@a
    .end local p1    # "namespace":Ljava/lang/String;
    :cond_0
    iput-object p1, v0, Lorg/ksoap2/kdom/Element;->namespace:Ljava/lang/String;

    #@c
    .line 89
    iput-object p2, v0, Lorg/ksoap2/kdom/Element;->name:Ljava/lang/String;

    #@e
    .line 90
    return-object v0
.end method

.method public getChild(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    #@8
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public getElement(I)Lorg/ksoap2/kdom/Element;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Node;->getChild(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 112
    .local v0, "child":Ljava/lang/Object;
    instance-of v1, v0, Lorg/ksoap2/kdom/Element;

    #@6
    if-eqz v1, :cond_0

    #@8
    check-cast v0, Lorg/ksoap2/kdom/Element;

    #@a
    .end local v0    # "child":Ljava/lang/Object;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "child":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;
    .locals 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 121
    const/4 v2, 0x0

    #@2
    invoke-virtual {p0, p1, p2, v2}, Lorg/ksoap2/kdom/Node;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    .line 122
    .local v0, "i":I
    add-int/lit8 v2, v0, 0x1

    #@8
    invoke-virtual {p0, p1, p2, v2}, Lorg/ksoap2/kdom/Node;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@b
    move-result v1

    #@c
    .line 124
    .local v1, "j":I
    if-eq v0, v5, :cond_0

    #@e
    if-eq v1, v5, :cond_2

    #@10
    .line 125
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    #@12
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Element {"

    #@1a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 128
    const-string/jumbo v4, "}"

    #@25
    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 130
    if-ne v0, v5, :cond_1

    #@2f
    const-string/jumbo v2, " not found in "

    #@32
    .line 126
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 125
    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@41
    throw v3

    #@42
    .line 130
    :cond_1
    const-string/jumbo v2, " more than once in "

    #@45
    goto :goto_0

    #@46
    .line 133
    :cond_2
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Node;->getElement(I)Lorg/ksoap2/kdom/Element;

    #@49
    move-result-object v2

    #@4a
    return-object v2
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Node;->isText(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Node;->getChild(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    :goto_0
    return-object v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "startIndex"    # I

    #@0
    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/ksoap2/kdom/Node;->getChildCount()I

    #@3
    move-result v2

    #@4
    .line 203
    .local v2, "len":I
    move v1, p3

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@7
    .line 205
    invoke-virtual {p0, v1}, Lorg/ksoap2/kdom/Node;->getElement(I)Lorg/ksoap2/kdom/Element;

    #@a
    move-result-object v0

    #@b
    .line 207
    .local v0, "child":Lorg/ksoap2/kdom/Element;
    if-eqz v0, :cond_1

    #@d
    .line 208
    invoke-virtual {v0}, Lorg/ksoap2/kdom/Element;->getName()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v3

    #@15
    .line 207
    if-eqz v3, :cond_1

    #@17
    .line 209
    if-eqz p1, :cond_0

    #@19
    invoke-virtual {v0}, Lorg/ksoap2/kdom/Element;->getNamespace()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    .line 207
    if-eqz v3, :cond_1

    #@23
    .line 210
    :cond_0
    return v1

    #@24
    .line 203
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 212
    .end local v0    # "child":Lorg/ksoap2/kdom/Element;
    :cond_2
    const/4 v3, -0x1

    #@28
    return v3
.end method

.method public isText(I)Z
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 216
    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Node;->getType(I)I

    #@4
    move-result v0

    #@5
    .line 217
    .local v0, "t":I
    const/4 v2, 0x4

    #@6
    if-eq v0, v2, :cond_0

    #@8
    const/4 v2, 0x7

    #@9
    if-ne v0, v2, :cond_1

    #@b
    :cond_0
    :goto_0
    return v1

    #@c
    :cond_1
    const/4 v2, 0x5

    #@d
    if-eq v0, v2, :cond_0

    #@f
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x6

    #@1
    .line 227
    const/4 v1, 0x0

    #@2
    .line 230
    .local v1, "leave":Z
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@5
    move-result v2

    #@6
    .line 234
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    #@9
    .line 257
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    if-eqz v3, :cond_3

    #@f
    .line 259
    if-ne v2, v5, :cond_1

    #@11
    const/4 v2, 0x4

    #@12
    .line 260
    .end local v2    # "type":I
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 258
    invoke-virtual {p0, v2, v3}, Lorg/ksoap2/kdom/Node;->addChild(ILjava/lang/Object;)V

    #@19
    .line 265
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    #@1c
    .line 267
    :goto_1
    if-eqz v1, :cond_0

    #@1e
    .line 225
    return-void

    #@1f
    .line 239
    .restart local v2    # "type":I
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 240
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 238
    invoke-virtual {p0, v3, v4}, Lorg/ksoap2/kdom/Node;->createElement(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/kdom/Element;

    #@2a
    move-result-object v0

    #@2b
    .line 242
    .local v0, "child":Lorg/ksoap2/kdom/Element;
    const/4 v3, 0x2

    #@2c
    invoke-virtual {p0, v3, v0}, Lorg/ksoap2/kdom/Node;->addChild(ILjava/lang/Object;)V

    #@2f
    .line 247
    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Element;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@32
    goto :goto_1

    #@33
    .line 253
    .end local v0    # "child":Lorg/ksoap2/kdom/Element;
    :pswitch_1
    const/4 v1, 0x1

    #@34
    .line 254
    goto :goto_1

    #@35
    .line 261
    :cond_3
    if-ne v2, v5, :cond_2

    #@37
    .line 262
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    if-eqz v3, :cond_2

    #@3d
    .line 263
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {p0, v5, v3}, Lorg/ksoap2/kdom/Node;->addChild(ILjava/lang/Object;)V

    #@44
    goto :goto_0

    #@45
    .line 234
    nop

    #@46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeChild(I)V
    .locals 5
    .param p1, "idx"    # I

    #@0
    .prologue
    .line 273
    iget-object v2, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/Vector;->removeElementAt(I)V

    #@5
    .line 278
    iget-object v2, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    #@7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    #@a
    move-result v2

    #@b
    add-int/lit8 v1, v2, -0x1

    #@d
    .line 280
    .local v1, "n":I
    move v0, p1

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@10
    .line 281
    iget-object v2, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    #@12
    iget-object v3, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    #@14
    add-int/lit8 v4, v0, 0x1

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    #@19
    move-result v3

    #@1a
    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    #@1d
    .line 280
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 283
    :cond_0
    iget-object v2, p0, Lorg/ksoap2/kdom/Node;->types:Ljava/lang/StringBuffer;

    #@22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    #@25
    .line 272
    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Node;->writeChildren(Lorg/xmlpull/v1/XmlSerializer;)V

    #@3
    .line 312
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    #@6
    .line 310
    return-void
.end method

.method public writeChildren(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    iget-object v4, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 319
    return-void

    #@5
    .line 321
    :cond_0
    iget-object v4, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    #@7
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@a
    move-result v2

    #@b
    .line 323
    .local v2, "len":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@e
    .line 324
    invoke-virtual {p0, v1}, Lorg/ksoap2/kdom/Node;->getType(I)I

    #@11
    move-result v3

    #@12
    .line 325
    .local v3, "type":I
    iget-object v4, p0, Lorg/ksoap2/kdom/Node;->children:Ljava/util/Vector;

    #@14
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    .line 326
    .local v0, "child":Ljava/lang/Object;
    packed-switch v3, :pswitch_data_0

    #@1b
    .line 360
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    #@1d
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v6, "Illegal type: "

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw v4

    #@35
    .line 328
    :pswitch_1
    check-cast v0, Lorg/ksoap2/kdom/Element;

    #@37
    .end local v0    # "child":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Element;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    #@3a
    .line 323
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 332
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_2
    check-cast v0, Ljava/lang/String;

    #@3f
    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    goto :goto_1

    #@43
    .line 336
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_3
    check-cast v0, Ljava/lang/String;

    #@45
    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    #@48
    goto :goto_1

    #@49
    .line 340
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_4
    check-cast v0, Ljava/lang/String;

    #@4b
    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    #@4e
    goto :goto_1

    #@4f
    .line 344
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_5
    check-cast v0, Ljava/lang/String;

    #@51
    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    #@54
    goto :goto_1

    #@55
    .line 348
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_6
    check-cast v0, Ljava/lang/String;

    #@57
    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    #@5a
    goto :goto_1

    #@5b
    .line 352
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_7
    check-cast v0, Ljava/lang/String;

    #@5d
    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    #@60
    goto :goto_1

    #@61
    .line 356
    .restart local v0    # "child":Ljava/lang/Object;
    :pswitch_8
    check-cast v0, Ljava/lang/String;

    #@63
    .end local v0    # "child":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    #@66
    goto :goto_1

    #@67
    .line 317
    .end local v3    # "type":I
    :cond_1
    return-void

    #@68
    .line 326
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method
