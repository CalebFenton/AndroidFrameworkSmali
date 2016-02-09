.class public abstract Lorg/ksoap2/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field protected static final CONTENT_TYPE_SOAP_XML_CHARSET_UTF_8:Ljava/lang/String; = "application/soap+xml;charset=utf-8"

.field protected static final CONTENT_TYPE_XML_CHARSET_UTF_8:Ljava/lang/String; = "text/xml;charset=utf-8"

.field protected static final USER_AGENT:Ljava/lang/String; = "ksoap2-android/2.6.0+"


# instance fields
.field private bufferLength:I

.field public debug:Z

.field protected proxy:Ljava/net/Proxy;

.field public requestDump:Ljava/lang/String;

.field public responseDump:Ljava/lang/String;

.field protected timeout:I

.field protected url:Ljava/lang/String;

.field private xmlVersionTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    const/16 v0, 0x4e20

    #@5
    iput v0, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    #@7
    .line 51
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lorg/ksoap2/transport/Transport;->debug:Z

    #@a
    .line 56
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    #@f
    .line 62
    const/high16 v0, 0x40000

    #@11
    iput v0, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    #@13
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    #@4
    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    const/16 v0, 0x4e20

    #@5
    iput v0, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    #@7
    .line 51
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lorg/ksoap2/transport/Transport;->debug:Z

    #@a
    .line 56
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    #@f
    .line 62
    const/high16 v0, 0x40000

    #@11
    iput v0, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    #@13
    .line 72
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    #@15
    .line 73
    iput p2, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    #@17
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "bufferLength"    # I

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    const/16 v0, 0x4e20

    #@5
    iput v0, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    #@7
    .line 51
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lorg/ksoap2/transport/Transport;->debug:Z

    #@a
    .line 56
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    #@f
    .line 62
    const/high16 v0, 0x40000

    #@11
    iput v0, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    #@13
    .line 77
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    #@15
    .line 78
    iput p2, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    #@17
    .line 79
    iput p3, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    #@19
    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    const/16 v0, 0x4e20

    #@5
    iput v0, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    #@7
    .line 51
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lorg/ksoap2/transport/Transport;->debug:Z

    #@a
    .line 56
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    #@f
    .line 62
    const/high16 v0, 0x40000

    #@11
    iput v0, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    #@13
    .line 91
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->proxy:Ljava/net/Proxy;

    #@15
    .line 92
    iput-object p2, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    #@17
    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;I)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    const/16 v0, 0x4e20

    #@5
    iput v0, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    #@7
    .line 51
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lorg/ksoap2/transport/Transport;->debug:Z

    #@a
    .line 56
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    #@f
    .line 62
    const/high16 v0, 0x40000

    #@11
    iput v0, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    #@13
    .line 96
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->proxy:Ljava/net/Proxy;

    #@15
    .line 97
    iput-object p2, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    #@17
    .line 98
    iput p3, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    #@19
    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;II)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "bufferLength"    # I

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    const/16 v0, 0x4e20

    #@5
    iput v0, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    #@7
    .line 51
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lorg/ksoap2/transport/Transport;->debug:Z

    #@a
    .line 56
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    #@f
    .line 62
    const/high16 v0, 0x40000

    #@11
    iput v0, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    #@13
    .line 102
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->proxy:Ljava/net/Proxy;

    #@15
    .line 103
    iput-object p2, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    #@17
    .line 104
    iput p3, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    #@19
    .line 105
    iput p4, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    #@1b
    .line 101
    return-void
.end method


# virtual methods
.method public abstract call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V
    .locals 1
    .param p1, "targetNamespace"    # Ljava/lang/String;
    .param p2, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 208
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lorg/ksoap2/transport/Transport;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;

    #@4
    .line 207
    return-void
.end method

.method protected createRequestData(Lorg/ksoap2/SoapEnvelope;)[B
    .locals 1
    .param p1, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/ksoap2/transport/Transport;->createRequestData(Lorg/ksoap2/SoapEnvelope;Ljava/lang/String;)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method protected createRequestData(Lorg/ksoap2/SoapEnvelope;Ljava/lang/String;)[B
    .locals 5
    .param p1, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v4, "createRequestData"

    #@5
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 124
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@a
    iget v3, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    #@c
    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@f
    .line 125
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    #@10
    .line 126
    .local v1, "result":[B
    iget-object v3, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    #@12
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    #@19
    .line 127
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1b
    const-string/jumbo v4, "bos.write"

    #@1e
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@21
    .line 128
    new-instance v2, Lorg/kxml2/io/KXmlSerializer;

    #@23
    invoke-direct {v2}, Lorg/kxml2/io/KXmlSerializer;-><init>()V

    #@26
    .line 129
    .local v2, "xw":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@28
    const-string/jumbo v4, "new KXmlSerializer"

    #@2b
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 130
    invoke-interface {v2, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@31
    .line 131
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@33
    const-string/jumbo v4, "xw.setOutput"

    #@36
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@39
    .line 132
    invoke-virtual {p1, v2}, Lorg/ksoap2/SoapEnvelope;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    #@3c
    .line 133
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3e
    const-string/jumbo v4, "envelope.write"

    #@41
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@44
    .line 134
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    #@47
    .line 135
    const/16 v3, 0xd

    #@49
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@4c
    .line 136
    const/16 v3, 0xa

    #@4e
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@51
    .line 137
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    #@54
    .line 138
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@57
    move-result-object v1

    #@58
    .line 139
    .local v1, "result":[B
    const/4 v2, 0x0

    #@59
    .line 140
    .local v2, "xw":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v0, 0x0

    #@5a
    .line 141
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5c
    const-string/jumbo v4, "createRequestData end"

    #@5f
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@62
    .line 142
    return-object v1
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected parseResponse(Lorg/ksoap2/SoapEnvelope;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    new-instance v0, Lorg/kxml2/io/KXmlParser;

    #@2
    invoke-direct {v0}, Lorg/kxml2/io/KXmlParser;-><init>()V

    #@5
    .line 114
    .local v0, "xp":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    #@8
    const/4 v2, 0x1

    #@9
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    #@c
    .line 115
    const/4 v1, 0x0

    #@d
    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@10
    .line 116
    invoke-virtual {p1, v0}, Lorg/ksoap2/SoapEnvelope;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@13
    .line 112
    return-void
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 176
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 159
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    #@2
    .line 158
    return-void
.end method

.method public setXmlVersionTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    #@2
    .line 169
    return-void
.end method
