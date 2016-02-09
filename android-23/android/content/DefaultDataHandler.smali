.class public Landroid/content/DefaultDataHandler;
.super Ljava/lang/Object;
.source "DefaultDataHandler.java"

# interfaces
.implements Landroid/content/ContentInsertHandler;


# static fields
.field private static final ARG:Ljava/lang/String; = "arg"

.field private static final COL:Ljava/lang/String; = "col"

.field private static final DEL:Ljava/lang/String; = "del"

.field private static final POSTFIX:Ljava/lang/String; = "postfix"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static final SELECT:Ljava/lang/String; = "select"

.field private static final URI_STR:Ljava/lang/String; = "uri"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mUris:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    new-instance v0, Ljava/util/Stack;

    #@5
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #@8
    iput-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@a
    .line 74
    return-void
.end method

.method private insertRow()Landroid/net/Uri;
    .locals 4

    #@0
    .prologue
    .line 128
    iget-object v2, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    iget-object v1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@4
    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Landroid/net/Uri;

    #@a
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    #@c
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    .line 129
    .local v0, "u":Landroid/net/Uri;
    const/4 v1, 0x0

    #@11
    iput-object v1, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    #@13
    .line 130
    return-object v0
.end method

.method private parseRow(Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    const-string/jumbo v3, "uri"

    #@3
    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 102
    .local v2, "uriStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@9
    .line 104
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v1

    #@d
    .line 105
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_1

    #@f
    .line 106
    new-instance v3, Lorg/xml/sax/SAXException;

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "attribute "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    .line 107
    const-string/jumbo v5, "uri"

    #@20
    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    .line 107
    const-string/jumbo v5, " parsing failure"

    #@2b
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@36
    throw v3

    #@37
    .line 110
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@39
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    #@3c
    move-result v3

    #@3d
    if-lez v3, :cond_3

    #@3f
    .line 112
    const-string/jumbo v3, "postfix"

    #@42
    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 113
    .local v0, "postfix":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@48
    .line 114
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@4a
    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    #@4d
    move-result-object v3

    #@4e
    check-cast v3, Landroid/net/Uri;

    #@50
    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@53
    move-result-object v1

    #@54
    .line 123
    .end local v0    # "postfix":Ljava/lang/String;
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@56
    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 99
    return-void

    #@5a
    .line 117
    .end local v1    # "uri":Landroid/net/Uri;
    .restart local v0    # "postfix":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@5c
    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    #@5f
    move-result-object v1

    #@60
    check-cast v1, Landroid/net/Uri;

    #@62
    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    #@63
    .line 120
    .end local v0    # "postfix":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_3
    new-instance v3, Lorg/xml/sax/SAXException;

    #@65
    const-string/jumbo v4, "attribute parsing failure"

    #@68
    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v3
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    const-string/jumbo v0, "row"

    #@3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_2

    #@9
    .line 202
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@b
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 203
    new-instance v0, Lorg/xml/sax/SAXException;

    #@13
    const-string/jumbo v1, "uri mismatch"

    #@16
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 205
    :cond_0
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 206
    invoke-direct {p0}, Landroid/content/DefaultDataHandler;->insertRow()Landroid/net/Uri;

    #@21
    .line 208
    :cond_1
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@23
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@26
    .line 200
    :cond_2
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    return-void
.end method

.method public insert(Landroid/content/ContentResolver;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    iput-object p1, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    .line 90
    sget-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    #@4
    invoke-static {p2, v0, p0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    #@7
    .line 88
    return-void
.end method

.method public insert(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    iput-object p1, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    .line 96
    invoke-static {p2, p0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    #@5
    .line 94
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 236
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 241
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 251
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v9, 0x0

    #@3
    .line 135
    const-string/jumbo v7, "row"

    #@6
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v7

    #@a
    if-eqz v7, :cond_4

    #@c
    .line 136
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    #@e
    if-eqz v7, :cond_2

    #@10
    .line 138
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@12
    invoke-virtual {v7}, Ljava/util/Stack;->empty()Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_0

    #@18
    .line 139
    new-instance v7, Lorg/xml/sax/SAXException;

    #@1a
    const-string/jumbo v8, "uri is empty"

    #@1d
    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@20
    throw v7

    #@21
    .line 141
    :cond_0
    invoke-direct {p0}, Landroid/content/DefaultDataHandler;->insertRow()Landroid/net/Uri;

    #@24
    move-result-object v3

    #@25
    .line 142
    .local v3, "nextUri":Landroid/net/Uri;
    if-nez v3, :cond_1

    #@27
    .line 143
    new-instance v8, Lorg/xml/sax/SAXException;

    #@29
    new-instance v7, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v9, "insert to uri "

    #@31
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v9

    #@35
    .line 144
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@37
    invoke-virtual {v7}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    #@3a
    move-result-object v7

    #@3b
    check-cast v7, Landroid/net/Uri;

    #@3d
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    .line 143
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    .line 144
    const-string/jumbo v9, " failure"

    #@48
    .line 143
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    invoke-direct {v8, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@53
    throw v8

    #@54
    .line 147
    :cond_1
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@56
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@59
    .line 148
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@5b
    invoke-virtual {v7, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    .line 149
    invoke-direct {p0, p4}, Landroid/content/DefaultDataHandler;->parseRow(Lorg/xml/sax/Attributes;)V

    #@61
    .line 134
    .end local v3    # "nextUri":Landroid/net/Uri;
    :goto_0
    return-void

    #@62
    .line 152
    :cond_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    #@65
    move-result v0

    #@66
    .line 153
    .local v0, "attrLen":I
    if-nez v0, :cond_3

    #@68
    .line 155
    iget-object v8, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@6a
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    #@6c
    invoke-virtual {v7}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    #@6f
    move-result-object v7

    #@70
    check-cast v7, Landroid/net/Uri;

    #@72
    invoke-virtual {v8, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    goto :goto_0

    #@76
    .line 157
    :cond_3
    invoke-direct {p0, p4}, Landroid/content/DefaultDataHandler;->parseRow(Lorg/xml/sax/Attributes;)V

    #@79
    goto :goto_0

    #@7a
    .line 160
    .end local v0    # "attrLen":I
    :cond_4
    const-string/jumbo v7, "col"

    #@7d
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v7

    #@81
    if-eqz v7, :cond_8

    #@83
    .line 161
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    #@86
    move-result v0

    #@87
    .line 162
    .restart local v0    # "attrLen":I
    const/4 v7, 0x2

    #@88
    if-eq v0, v7, :cond_5

    #@8a
    .line 163
    new-instance v7, Lorg/xml/sax/SAXException;

    #@8c
    new-instance v8, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v9, "illegal attributes number "

    #@94
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v8

    #@98
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v8

    #@9c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v8

    #@a0
    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v7

    #@a4
    .line 165
    :cond_5
    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@a7
    move-result-object v2

    #@a8
    .line 166
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@ab
    move-result-object v6

    #@ac
    .line 167
    .local v6, "value":Ljava/lang/String;
    if-eqz v2, :cond_7

    #@ae
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@b1
    move-result v7

    #@b2
    if-lez v7, :cond_7

    #@b4
    if-eqz v6, :cond_7

    #@b6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@b9
    move-result v7

    #@ba
    if-lez v7, :cond_7

    #@bc
    .line 168
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    #@be
    if-nez v7, :cond_6

    #@c0
    .line 169
    new-instance v7, Landroid/content/ContentValues;

    #@c2
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    #@c5
    iput-object v7, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    #@c7
    .line 171
    :cond_6
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    #@c9
    invoke-virtual {v7, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@cc
    goto :goto_0

    #@cd
    .line 173
    :cond_7
    new-instance v7, Lorg/xml/sax/SAXException;

    #@cf
    const-string/jumbo v8, "illegal attributes value"

    #@d2
    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@d5
    throw v7

    #@d6
    .line 175
    .end local v0    # "attrLen":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v7, "del"

    #@d9
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dc
    move-result v7

    #@dd
    if-eqz v7, :cond_d

    #@df
    .line 176
    const-string/jumbo v7, "uri"

    #@e2
    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@e5
    move-result-object v7

    #@e6
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@e9
    move-result-object v5

    #@ea
    .line 177
    .local v5, "u":Landroid/net/Uri;
    if-nez v5, :cond_9

    #@ec
    .line 178
    new-instance v7, Lorg/xml/sax/SAXException;

    #@ee
    new-instance v8, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v9, "attribute "

    #@f6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v8

    #@fa
    .line 179
    const-string/jumbo v9, "uri"

    #@fd
    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@100
    move-result-object v9

    #@101
    .line 178
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v8

    #@105
    .line 179
    const-string/jumbo v9, " parsing failure"

    #@108
    .line 178
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v8

    #@10c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v8

    #@110
    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@113
    throw v7

    #@114
    .line 181
    :cond_9
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    #@117
    move-result v7

    #@118
    add-int/lit8 v0, v7, -0x2

    #@11a
    .line 182
    .restart local v0    # "attrLen":I
    if-lez v0, :cond_b

    #@11c
    .line 183
    new-array v4, v0, [Ljava/lang/String;

    #@11e
    .line 184
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    #@11f
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_a

    #@121
    .line 185
    add-int/lit8 v7, v1, 0x2

    #@123
    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@126
    move-result-object v7

    #@127
    aput-object v7, v4, v1

    #@129
    .line 184
    add-int/lit8 v1, v1, 0x1

    #@12b
    goto :goto_1

    #@12c
    .line 187
    :cond_a
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    #@12e
    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@131
    move-result-object v8

    #@132
    invoke-virtual {v7, v5, v8, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@135
    goto/16 :goto_0

    #@137
    .line 188
    .end local v1    # "i":I
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_b
    if-nez v0, :cond_c

    #@139
    .line 189
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    #@13b
    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@13e
    move-result-object v8

    #@13f
    invoke-virtual {v7, v5, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@142
    goto/16 :goto_0

    #@144
    .line 191
    :cond_c
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    #@146
    invoke-virtual {v7, v5, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@149
    goto/16 :goto_0

    #@14b
    .line 195
    .end local v0    # "attrLen":I
    .end local v5    # "u":Landroid/net/Uri;
    :cond_d
    new-instance v7, Lorg/xml/sax/SAXException;

    #@14d
    new-instance v8, Ljava/lang/StringBuilder;

    #@14f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@152
    const-string/jumbo v9, "unknown element: "

    #@155
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v8

    #@159
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v8

    #@15d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@160
    move-result-object v8

    #@161
    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@164
    throw v7
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    return-void
.end method
