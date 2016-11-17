.class public Lorg/apache/http/message/BasicHeaderElementIterator;
.super Ljava/lang/Object;
.source "BasicHeaderElementIterator.java"

# interfaces
.implements Lorg/apache/http/HeaderElementIterator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private buffer:Lorg/apache/http/util/CharArrayBuffer;

.field private currentElement:Lorg/apache/http/HeaderElement;

.field private cursor:Lorg/apache/http/message/ParserCursor;

.field private final headerIt:Lorg/apache/http/HeaderIterator;

.field private final parser:Lorg/apache/http/message/HeaderValueParser;


# direct methods
.method public constructor <init>(Lorg/apache/http/HeaderIterator;)V
    .locals 1
    .param p1, "headerIterator"    # Lorg/apache/http/HeaderIterator;

    #@0
    .prologue
    .line 83
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    #@2
    invoke-direct {p0, p1, v0}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;Lorg/apache/http/message/HeaderValueParser;)V

    #@5
    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HeaderIterator;Lorg/apache/http/message/HeaderValueParser;)V
    .locals 2
    .param p1, "headerIterator"    # Lorg/apache/http/HeaderIterator;
    .param p2, "parser"    # Lorg/apache/http/message/HeaderValueParser;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    #@6
    .line 62
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@8
    .line 63
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    #@a
    .line 71
    if-nez p1, :cond_0

    #@c
    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "Header iterator may not be null"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 74
    :cond_0
    if-nez p2, :cond_1

    #@17
    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v1, "Parser may not be null"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 77
    :cond_1
    iput-object p1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    #@22
    .line 78
    iput-object p2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->parser:Lorg/apache/http/message/HeaderValueParser;

    #@24
    .line 70
    return-void
.end method

.method private bufferHeaderValue()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 88
    iput-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    #@4
    .line 89
    iput-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@6
    .line 90
    :cond_0
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    #@8
    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 91
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    #@10
    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    #@13
    move-result-object v0

    #@14
    .line 92
    .local v0, "h":Lorg/apache/http/Header;
    instance-of v2, v0, Lorg/apache/http/FormattedHeader;

    #@16
    if-eqz v2, :cond_2

    #@18
    move-object v2, v0

    #@19
    .line 93
    check-cast v2, Lorg/apache/http/FormattedHeader;

    #@1b
    invoke-interface {v2}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@21
    .line 94
    new-instance v2, Lorg/apache/http/message/ParserCursor;

    #@23
    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@25
    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@28
    move-result v3

    #@29
    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@2c
    iput-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    #@2e
    .line 95
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    #@30
    check-cast v0, Lorg/apache/http/FormattedHeader;

    #@32
    .end local v0    # "h":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    #@35
    move-result v3

    #@36
    invoke-virtual {v2, v3}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    #@39
    .line 87
    :cond_1
    :goto_0
    return-void

    #@3a
    .line 98
    .restart local v0    # "h":Lorg/apache/http/Header;
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 99
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@40
    .line 100
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    #@42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@45
    move-result v3

    #@46
    invoke-direct {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@49
    iput-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@4b
    .line 101
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@4d
    invoke-virtual {v2, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@50
    .line 102
    new-instance v2, Lorg/apache/http/message/ParserCursor;

    #@52
    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@54
    invoke-virtual {v3}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    #@57
    move-result v3

    #@58
    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    #@5b
    iput-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    #@5d
    goto :goto_0
.end method

.method private parseNextElement()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 111
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->headerIt:Lorg/apache/http/HeaderIterator;

    #@3
    invoke-interface {v1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    #@b
    if-eqz v1, :cond_7

    #@d
    .line 112
    :cond_1
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    #@f
    if-eqz v1, :cond_2

    #@11
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    #@13
    invoke-virtual {v1}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_3

    #@19
    .line 114
    :cond_2
    invoke-direct {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->bufferHeaderValue()V

    #@1c
    .line 117
    :cond_3
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 119
    :cond_4
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    #@22
    invoke-virtual {v1}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_6

    #@28
    .line 120
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->parser:Lorg/apache/http/message/HeaderValueParser;

    #@2a
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@2c
    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    #@2e
    invoke-interface {v1, v2, v3}, Lorg/apache/http/message/HeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    #@31
    move-result-object v0

    #@32
    .line 121
    .local v0, "e":Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@39
    move-result v1

    #@3a
    if-nez v1, :cond_5

    #@3c
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    if-eqz v1, :cond_4

    #@42
    .line 123
    :cond_5
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    #@44
    .line 124
    return-void

    #@45
    .line 128
    .end local v0    # "e":Lorg/apache/http/HeaderElement;
    :cond_6
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    #@47
    invoke-virtual {v1}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_0

    #@4d
    .line 130
    iput-object v4, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->cursor:Lorg/apache/http/message/ParserCursor;

    #@4f
    .line 131
    iput-object v4, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    #@51
    goto :goto_0

    #@52
    .line 109
    :cond_7
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 139
    invoke-direct {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->parseNextElement()V

    #@7
    .line 141
    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    #@9
    if-eqz v0, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_1
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Lorg/apache/http/HeaderElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 145
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 146
    invoke-direct {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->parseNextElement()V

    #@8
    .line 149
    :cond_0
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    #@a
    if-nez v1, :cond_1

    #@c
    .line 150
    new-instance v1, Ljava/util/NoSuchElementException;

    #@e
    const-string/jumbo v2, "No more header elements available"

    #@11
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 153
    :cond_1
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    #@17
    .line 154
    .local v0, "element":Lorg/apache/http/HeaderElement;
    iput-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->currentElement:Lorg/apache/http/HeaderElement;

    #@19
    .line 155
    return-object v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Remove not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
