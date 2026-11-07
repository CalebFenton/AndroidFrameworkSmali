.class public Lorg/ccil/cowan/tagsoup/PYXWriter;
.super Ljava/lang/Object;
.source "PYXWriter.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/ScanHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field private static greylist dummy:[C


# instance fields
.field private greylist attrName:Ljava/lang/String;

.field private greylist theWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lorg/ccil/cowan/tagsoup/PYXWriter;->dummy:[C

    return-void
.end method

.method public constructor greylist <init>(Ljava/io/Writer;)V
    .registers 3
    .param p1, "w"    # Ljava/io/Writer;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    instance-of v0, p1, Ljava/io/PrintWriter;

    if-eqz v0, :cond_d

    .line 211
    move-object v0, p1

    check-cast v0, Ljava/io/PrintWriter;

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    goto :goto_14

    .line 214
    :cond_d
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    .line 216
    :goto_14
    return-void
.end method


# virtual methods
.method public greylist adup([CII)V
    .registers 6
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public greylist aname([CII)V
    .registers 6
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 44
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 45
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 46
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public greylist aval([CII)V
    .registers 5
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 51
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public greylist cdsect([CII)V
    .registers 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->pcdata([CII)V

    .line 86
    return-void
.end method

.method public whitelist test-api characters([CII)V
    .registers 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->pcdata([CII)V

    .line 145
    return-void
.end method

.method public greylist cmnt([CII)V
    .registers 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->cmnt([CII)V

    .line 199
    return-void
.end method

.method public greylist decl([CII)V
    .registers 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 76
    return-void
.end method

.method public whitelist test-api endCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 200
    return-void
.end method

.method public whitelist test-api endDTD()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 201
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 149
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localname"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 152
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    move-object p3, p2

    .line 153
    :cond_7
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 154
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public whitelist test-api endEntity(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 202
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

    .line 157
    return-void
.end method

.method public greylist entity([CII)V
    .registers 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public greylist eof([CII)V
    .registers 5
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 67
    return-void
.end method

.method public greylist etag([CII)V
    .registers 6
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 71
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 72
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 73
    return-void
.end method

.method public greylist getEntity()I
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public greylist gi([CII)V
    .registers 6
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 80
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 81
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 82
    return-void
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->characters([CII)V

    .line 161
    return-void
.end method

.method public greylist pcdata([CII)V
    .registers 8
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 89
    if-nez p3, :cond_3

    return-void

    .line 90
    :cond_3
    const/4 v0, 0x0

    .line 91
    .local v0, "inProgress":Z
    add-int/2addr p3, p2

    .line 92
    move v1, p2

    .local v1, "i":I
    :goto_6
    if-ge v1, p3, :cond_48

    .line 93
    aget-char v2, p1, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1e

    .line 94
    if-eqz v0, :cond_15

    .line 95
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 97
    :cond_15
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const-string v3, "-\\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    goto :goto_45

    .line 101
    :cond_1e
    if-nez v0, :cond_27

    .line 102
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 104
    :cond_27
    aget-char v2, p1, v1

    sparse-switch v2, :sswitch_data_50

    .line 112
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    aget-char v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_44

    .line 109
    :sswitch_34
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const-string v3, "\\\\"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    goto :goto_44

    .line 106
    :sswitch_3c
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const-string v3, "\\t"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    nop

    .line 114
    :goto_44
    const/4 v0, 0x1

    .line 92
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 117
    .end local v1    # "i":I
    :cond_48
    if-eqz v0, :cond_4f

    .line 118
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 120
    :cond_4f
    return-void

    :sswitch_data_50
    .sparse-switch
        0x9 -> :sswitch_3c
        0x5c -> :sswitch_34
    .end sparse-switch
.end method

.method public greylist pi([CII)V
    .registers 5
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 130
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 131
    return-void
.end method

.method public greylist pitarget([CII)V
    .registers 6
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 124
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    .line 125
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(I)V

    .line 126
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 165
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 167
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 170
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

    .line 172
    return-void
.end method

.method public greylist stagc([CII)V
    .registers 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 135
    return-void
.end method

.method public greylist stage([CII)V
    .registers 6
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public whitelist test-api startCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 203
    return-void
.end method

.method public whitelist test-api startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 204
    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 174
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localname"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 178
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    move-object p3, p2

    .line 179
    :cond_7
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 180
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 182
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_47

    .line 183
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    .line 184
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_28

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p3

    .line 185
    :cond_28
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v3, 0x41

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 187
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 189
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 191
    .end local v1    # "i":I
    :cond_47
    return-void
.end method

.method public whitelist test-api startEntity(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 205
    return-void
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

    .line 193
    return-void
.end method
