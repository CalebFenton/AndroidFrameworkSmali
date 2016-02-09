.class public Lorg/ccil/cowan/tagsoup/PYXWriter;
.super Ljava/lang/Object;
.source "PYXWriter.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/ScanHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field private static dummy:[C


# instance fields
.field private attrName:Ljava/lang/String;

.field private theWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 32
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [C

    #@3
    sput-object v0, Lorg/ccil/cowan/tagsoup/PYXWriter;->dummy:[C

    #@5
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 210
    instance-of v0, p1, Ljava/io/PrintWriter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 211
    check-cast p1, Ljava/io/PrintWriter;

    #@9
    .end local p1    # "w":Ljava/io/Writer;
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@b
    .line 209
    :goto_0
    return-void

    #@c
    .line 214
    .restart local p1    # "w":Ljava/io/Writer;
    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    #@e
    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@11
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@13
    goto :goto_0
.end method


# virtual methods
.method public adup([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@2
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 39
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    #@a
    .line 37
    return-void
.end method

.method public aname([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@2
    const/16 v1, 0x41

    #@4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@7
    .line 44
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    #@c
    .line 45
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@e
    const/16 v1, 0x20

    #@10
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@13
    .line 46
    new-instance v0, Ljava/lang/String;

    #@15
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@18
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    #@1a
    .line 42
    return-void
.end method

.method public aval([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    #@5
    .line 51
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@7
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@a
    .line 52
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->attrName:Ljava/lang/String;

    #@d
    .line 49
    return-void
.end method

.method public cdsect([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->pcdata([CII)V

    #@3
    .line 84
    return-void
.end method

.method public characters([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->pcdata([CII)V

    #@3
    .line 143
    return-void
.end method

.method public cmnt([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    return-void
.end method

.method public comment([CII)V
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
    .line 198
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->cmnt([CII)V

    #@3
    .line 197
    return-void
.end method

.method public decl([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    #@5
    .line 147
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localname"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    move-object p3, p2

    #@7
    .line 153
    :cond_0
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@9
    const/16 v1, 0x29

    #@b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@e
    .line 154
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@10
    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 151
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 202
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
    .line 157
    return-void
.end method

.method public entity([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    return-void
.end method

.method public eof([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    #@5
    .line 65
    return-void
.end method

.method public etag([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@2
    const/16 v1, 0x29

    #@4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@7
    .line 71
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    #@c
    .line 72
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@e
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@11
    .line 69
    return-void
.end method

.method public getEntity()I
    .locals 1

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public gi([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@2
    const/16 v1, 0x28

    #@4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@7
    .line 80
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    #@c
    .line 81
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@e
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@11
    .line 78
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-virtual {p0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/PYXWriter;->characters([CII)V

    #@3
    .line 159
    return-void
.end method

.method public pcdata([CII)V
    .locals 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    if-nez p3, :cond_0

    #@2
    return-void

    #@3
    .line 90
    :cond_0
    const/4 v1, 0x0

    #@4
    .line 91
    .local v1, "inProgress":Z
    add-int/2addr p3, p2

    #@5
    .line 92
    move v0, p2

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_4

    #@8
    .line 93
    aget-char v2, p1, v0

    #@a
    const/16 v3, 0xa

    #@c
    if-ne v2, v3, :cond_2

    #@e
    .line 94
    if-eqz v1, :cond_1

    #@10
    .line 95
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@12
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    #@15
    .line 97
    :cond_1
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@17
    const-string/jumbo v3, "-\\n"

    #@1a
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 98
    const/4 v1, 0x0

    #@1e
    .line 92
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 101
    :cond_2
    if-nez v1, :cond_3

    #@23
    .line 102
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@25
    const/16 v3, 0x2d

    #@27
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    #@2a
    .line 104
    :cond_3
    aget-char v2, p1, v0

    #@2c
    sparse-switch v2, :sswitch_data_0

    #@2f
    .line 112
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@31
    aget-char v3, p1, v0

    #@33
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    #@36
    .line 114
    :goto_2
    const/4 v1, 0x1

    #@37
    goto :goto_1

    #@38
    .line 106
    :sswitch_0
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@3a
    const-string/jumbo v3, "\\t"

    #@3d
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@40
    goto :goto_2

    #@41
    .line 109
    :sswitch_1
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@43
    const-string/jumbo v3, "\\\\"

    #@46
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@49
    goto :goto_2

    #@4a
    .line 117
    :cond_4
    if-eqz v1, :cond_5

    #@4c
    .line 118
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@4e
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    #@51
    .line 88
    :cond_5
    return-void

    #@52
    .line 104
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public pi([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    #@5
    .line 130
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@7
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@a
    .line 128
    return-void
.end method

.method public pitarget([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@2
    const/16 v1, 0x3f

    #@4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@7
    .line 124
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintWriter;->write([CII)V

    #@c
    .line 125
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@e
    const/16 v1, 0x20

    #@10
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(I)V

    #@13
    .line 122
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@2
    const/16 v1, 0x3f

    #@4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@7
    .line 165
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@9
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 166
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@e
    const/16 v1, 0x20

    #@10
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@13
    .line 167
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@15
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 163
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 170
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
    .line 172
    return-void
.end method

.method public stagc([CII)V
    .locals 0
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    return-void
.end method

.method public stage([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@2
    const-string/jumbo v1, "!"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8
    .line 137
    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 203
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
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
    .line 174
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localname"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    move-object p3, p2

    #@7
    .line 179
    :cond_0
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@9
    const/16 v3, 0x28

    #@b
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    #@e
    .line 180
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@10
    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 181
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    #@16
    move-result v1

    #@17
    .line 182
    .local v1, "length":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1a
    .line 183
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@1d
    move-result-object p3

    #@1e
    .line 184
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_1

    #@24
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    #@27
    move-result-object p3

    #@28
    .line 185
    :cond_1
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@2a
    const/16 v3, 0x41

    #@2c
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    #@2f
    .line 187
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@31
    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    .line 188
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@36
    const/16 v3, 0x20

    #@38
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    #@3b
    .line 189
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/PYXWriter;->theWriter:Ljava/io/PrintWriter;

    #@3d
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@44
    .line 182
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 177
    :cond_2
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    return-void
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
    .line 193
    return-void
.end method
