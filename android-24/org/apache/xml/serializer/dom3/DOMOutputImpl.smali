.class final Lorg/apache/xml/serializer/dom3/DOMOutputImpl;
.super Ljava/lang/Object;
.source "DOMOutputImpl.java"

# interfaces
.implements Lorg/w3c/dom/ls/LSOutput;


# instance fields
.field private fByteStream:Ljava/io/OutputStream;

.field private fCharStream:Ljava/io/Writer;

.field private fEncoding:Ljava/lang/String;

.field private fSystemId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    #@6
    .line 64
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    #@8
    .line 65
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    #@a
    .line 66
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    #@c
    .line 71
    return-void
.end method


# virtual methods
.method public getByteStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    #@2
    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Writer;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    #@2
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setByteStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "byteStream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 118
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    #@2
    .line 117
    return-void
.end method

.method public setCharacterStream(Ljava/io/Writer;)V
    .locals 0
    .param p1, "characterStream"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 94
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    #@2
    .line 93
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    #@2
    .line 173
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    #@2
    .line 143
    return-void
.end method
