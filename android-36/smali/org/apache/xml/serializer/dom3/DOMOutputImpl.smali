.class final Lorg/apache/xml/serializer/dom3/DOMOutputImpl;
.super Ljava/lang/Object;
.source "DOMOutputImpl.java"

# interfaces
.implements Lorg/w3c/dom/ls/LSOutput;


# instance fields
.field private greylist fByteStream:Ljava/io/OutputStream;

.field private greylist fCharStream:Ljava/io/Writer;

.field private greylist fEncoding:Ljava/lang/String;

.field private greylist fSystemId:Ljava/lang/String;


# direct methods
.method constructor greylist <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    .line 64
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    .line 65
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api getByteStream()Ljava/io/OutputStream;
    .registers 1

    .line 106
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    return-object p0
.end method

.method public whitelist test-api getCharacterStream()Ljava/io/Writer;
    .registers 1

    .line 82
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    return-object p0
.end method

.method public whitelist test-api getEncoding()Ljava/lang/String;
    .registers 1

    .line 159
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api setByteStream(Ljava/io/OutputStream;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    return-void
.end method

.method public whitelist test-api setCharacterStream(Ljava/io/Writer;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    return-void
.end method

.method public whitelist test-api setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api setSystemId(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    return-void
.end method
