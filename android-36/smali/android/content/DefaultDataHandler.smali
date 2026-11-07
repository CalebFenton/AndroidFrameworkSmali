.class public Landroid/content/DefaultDataHandler;
.super Ljava/lang/Object;
.source "DefaultDataHandler.java"

# interfaces
.implements Landroid/content/ContentInsertHandler;


# static fields
.field private static final greylist-max-o ARG:Ljava/lang/String; = "arg"

.field private static final greylist-max-o COL:Ljava/lang/String; = "col"

.field private static final greylist-max-o DEL:Ljava/lang/String; = "del"

.field private static final greylist-max-o POSTFIX:Ljava/lang/String; = "postfix"

.field private static final greylist-max-o ROW:Ljava/lang/String; = "row"

.field private static final greylist-max-o SELECT:Ljava/lang/String; = "select"

.field private static final greylist-max-o URI_STR:Ljava/lang/String; = "uri"


# instance fields
.field private greylist-max-o mContentResolver:Landroid/content/ContentResolver;

.field private greylist-max-o mUris:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    return-void
.end method

.method private greylist-max-o insertRow()Landroid/net/Uri;
    .registers 4

    .line 128
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 129
    .local v0, "u":Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    .line 130
    return-object v0
.end method

.method private greylist-max-o parseRow(Lorg/xml/sax/Attributes;)V
    .registers 8
    .param p1, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 100
    const-string/jumbo v0, "uri"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "uriStr":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 104
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 105
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_10

    goto :goto_5a

    .line 106
    :cond_10
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attribute "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 107
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " parsing failure"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_33
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_60

    .line 112
    const-string/jumbo v0, "postfix"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "postfix":Ljava/lang/String;
    if-eqz v0, :cond_51

    .line 114
    iget-object v2, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_59

    .line 117
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_51
    iget-object v2, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 119
    .end local v0    # "postfix":Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
    :goto_59
    nop

    .line 123
    :goto_5a
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void

    .line 120
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_60
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v2, "attribute parsing failure"

    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .registers 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 217
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 222
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 201
    const-string/jumbo v0, "row"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 202
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 205
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_18

    .line 206
    invoke-direct {p0}, Landroid/content/DefaultDataHandler;->insertRow()Landroid/net/Uri;

    .line 208
    :cond_18
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_27

    .line 203
    :cond_1e
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "uri mismatch"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_27
    :goto_27
    return-void
.end method

.method public whitelist test-api endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 227
    return-void
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 233
    return-void
.end method

.method public greylist-max-o insert(Landroid/content/ContentResolver;Ljava/io/InputStream;)V
    .registers 4
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 89
    iput-object p1, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 90
    sget-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {p2, v0, p0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 91
    return-void
.end method

.method public greylist-max-o insert(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 95
    iput-object p1, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    invoke-static {p2, p0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 97
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 239
    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 244
    return-void
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 249
    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 254
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 135
    const-string/jumbo v0, "row"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 136
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_5f

    .line 138
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 141
    invoke-direct {p0}, Landroid/content/DefaultDataHandler;->insertRow()Landroid/net/Uri;

    move-result-object v0

    .line 142
    .local v0, "nextUri":Landroid/net/Uri;
    if-eqz v0, :cond_2a

    .line 147
    iget-object v1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-direct {p0, p4}, Landroid/content/DefaultDataHandler;->parseRow(Lorg/xml/sax/Attributes;)V

    .line 151
    .end local v0    # "nextUri":Landroid/net/Uri;
    goto/16 :goto_11e

    .line 143
    .restart local v0    # "nextUri":Landroid/net/Uri;
    :cond_2a
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insert to uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    .line 144
    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    .end local v0    # "nextUri":Landroid/net/Uri;
    :cond_56
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "uri is empty"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_5f
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 153
    .local v0, "attrLen":I
    if-nez v0, :cond_73

    .line 155
    iget-object v1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    iget-object v2, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 157
    :cond_73
    invoke-direct {p0, p4}, Landroid/content/DefaultDataHandler;->parseRow(Lorg/xml/sax/Attributes;)V

    .line 159
    .end local v0    # "attrLen":I
    :goto_76
    goto/16 :goto_11e

    .line 160
    :cond_78
    const-string v0, "col"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_d5

    .line 161
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 162
    .restart local v0    # "attrLen":I
    if-ne v0, v1, :cond_bb

    .line 165
    const/4 v1, 0x0

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "value":Ljava/lang/String;
    if-eqz v1, :cond_b2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b2

    if-eqz v2, :cond_b2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b2

    .line 168
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    if-nez v3, :cond_ac

    .line 169
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    iput-object v3, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    .line 171
    :cond_ac
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v0    # "attrLen":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_11e

    .line 173
    .restart local v0    # "attrLen":I
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_b2
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string/jumbo v4, "illegal attributes value"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_bb
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal attributes number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    .end local v0    # "attrLen":I
    :cond_d5
    const-string v0, "del"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 176
    const-string/jumbo v0, "uri"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 177
    .local v3, "u":Landroid/net/Uri;
    if-eqz v3, :cond_11f

    .line 181
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    sub-int/2addr v0, v1

    .line 182
    .restart local v0    # "attrLen":I
    if-lez v0, :cond_10b

    .line 183
    new-array v1, v0, [Ljava/lang/String;

    .line 184
    .local v1, "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f4
    if-ge v4, v0, :cond_101

    .line 185
    add-int/lit8 v5, v4, 0x2

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_f4

    .line 187
    .end local v4    # "i":I
    :cond_101
    iget-object v4, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 188
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    goto :goto_11d

    :cond_10b
    const/4 v1, 0x0

    if-nez v0, :cond_118

    .line 189
    iget-object v4, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_11d

    .line 191
    :cond_118
    iget-object v2, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 194
    .end local v0    # "attrLen":I
    .end local v3    # "u":Landroid/net/Uri;
    :goto_11d
    nop

    .line 197
    :goto_11e
    return-void

    .line 178
    .restart local v3    # "u":Landroid/net/Uri;
    :cond_11f
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attribute "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 179
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " parsing failure"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    .end local v3    # "u":Landroid/net/Uri;
    :cond_142
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 260
    return-void
.end method
