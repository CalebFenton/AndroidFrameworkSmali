.class public Lorg/ksoap2/SoapEnvelope;
.super Ljava/lang/Object;
.source "SoapEnvelope.java"


# static fields
.field public static final ENC:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/encoding/"

.field public static final ENC2003:Ljava/lang/String; = "http://www.w3.org/2003/05/soap-encoding"

.field public static final ENV:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/envelope/"

.field public static final ENV2003:Ljava/lang/String; = "http://www.w3.org/2003/05/soap-envelope"

.field public static final NS20:Ljava/lang/String; = "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

.field public static final VER10:I = 0x64

.field public static final VER11:I = 0x6e

.field public static final VER12:I = 0x78

.field public static final XSD:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final XSD1999:Ljava/lang/String; = "http://www.w3.org/1999/XMLSchema"

.field public static final XSI:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema-instance"

.field public static final XSI1999:Ljava/lang/String; = "http://www.w3.org/1999/XMLSchema-instance"


# instance fields
.field public bodyIn:Ljava/lang/Object;

.field public bodyOut:Ljava/lang/Object;

.field public enc:Ljava/lang/String;

.field public encodingStyle:Ljava/lang/String;

.field public env:Ljava/lang/String;

.field public headerIn:[Lorg/ksoap2/kdom/Element;

.field public headerOut:[Lorg/ksoap2/kdom/Element;

.field public ns:Ljava/lang/String;

.field public omadm:Ljava/lang/String;

.field public version:I

.field public xsd:Ljava/lang/String;

.field public xsi:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 117
    iput p1, p0, Lorg/ksoap2/SoapEnvelope;->version:I

    #@5
    .line 118
    const/16 v0, 0x64

    #@7
    if-ne p1, v0, :cond_0

    #@9
    .line 119
    const-string/jumbo v0, "http://www.w3.org/1999/XMLSchema-instance"

    #@c
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsi:Ljava/lang/String;

    #@e
    .line 120
    const-string/jumbo v0, "http://www.w3.org/1999/XMLSchema"

    #@11
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsd:Ljava/lang/String;

    #@13
    .line 125
    :goto_0
    const/16 v0, 0x78

    #@15
    if-ge p1, v0, :cond_1

    #@17
    .line 126
    const-string/jumbo v0, "http://schemas.xmlsoap.org/soap/encoding/"

    #@1a
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->enc:Ljava/lang/String;

    #@1c
    .line 127
    const-string/jumbo v0, "http://schemas.xmlsoap.org/soap/envelope/"

    #@1f
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@21
    .line 133
    :goto_1
    const-string/jumbo v0, "http://www.wi-fi.org/specifications/hotspot2dot0/v1.0/spp"

    #@24
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->ns:Ljava/lang/String;

    #@26
    .line 116
    return-void

    #@27
    .line 122
    :cond_0
    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema-instance"

    #@2a
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsi:Ljava/lang/String;

    #@2c
    .line 123
    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema"

    #@2f
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->xsd:Ljava/lang/String;

    #@31
    goto :goto_0

    #@32
    .line 129
    :cond_1
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-encoding"

    #@35
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->enc:Ljava/lang/String;

    #@37
    .line 130
    const-string/jumbo v0, "http://www.w3.org/2003/05/soap-envelope"

    #@3a
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@3c
    goto :goto_1
.end method

.method public static stringToBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "booleanAsString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    if-nez p0, :cond_0

    #@2
    .line 68
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    .line 71
    const-string/jumbo v0, "1"

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    const-string/jumbo v0, "true"

    #@18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    :goto_0
    return v0

    #@1d
    :cond_1
    const/4 v0, 0x1

    #@1e
    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v2, 0x2

    #@2
    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@5
    .line 141
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@7
    const-string/jumbo v1, "Envelope"

    #@a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@d
    .line 142
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@f
    const-string/jumbo v1, "encodingStyle"

    #@12
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    #@18
    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@1b
    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@1e
    move-result v0

    #@1f
    if-ne v0, v2, :cond_0

    #@21
    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    .line 144
    if-eqz v0, :cond_0

    #@2d
    .line 146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    const-string/jumbo v1, "Header"

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    .line 144
    if-eqz v0, :cond_0

    #@3a
    .line 147
    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3d
    .line 148
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@3f
    const-string/jumbo v1, "Header"

    #@42
    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@45
    .line 149
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@48
    .line 151
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@4a
    const-string/jumbo v1, "Body"

    #@4d
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@50
    .line 152
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@52
    const-string/jumbo v1, "encodingStyle"

    #@55
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    #@5b
    .line 153
    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->parseBody(Lorg/xmlpull/v1/XmlPullParser;)V

    #@5e
    .line 154
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@60
    const-string/jumbo v1, "Body"

    #@63
    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@66
    .line 155
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@69
    .line 156
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@6b
    const-string/jumbo v1, "Envelope"

    #@6e
    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@71
    .line 139
    return-void
.end method

.method public parseBody(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@3
    .line 185
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@6
    move-result v2

    #@7
    const/4 v3, 0x2

    #@8
    if-ne v2, v3, :cond_1

    #@a
    .line 186
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    .line 185
    if-eqz v2, :cond_1

    #@16
    .line 187
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, "Fault"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    .line 185
    if-eqz v2, :cond_1

    #@23
    .line 190
    iget v2, p0, Lorg/ksoap2/SoapEnvelope;->version:I

    #@25
    const/16 v3, 0x78

    #@27
    if-ge v2, v3, :cond_0

    #@29
    .line 191
    new-instance v0, Lorg/ksoap2/SoapFault;

    #@2b
    iget v2, p0, Lorg/ksoap2/SoapEnvelope;->version:I

    #@2d
    invoke-direct {v0, v2}, Lorg/ksoap2/SoapFault;-><init>(I)V

    #@30
    .line 195
    .local v0, "fault":Lorg/ksoap2/SoapFault;
    :goto_0
    invoke-virtual {v0, p1}, Lorg/ksoap2/SoapFault;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@33
    .line 196
    iput-object v0, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    #@35
    .line 182
    .end local v0    # "fault":Lorg/ksoap2/SoapFault;
    :goto_1
    return-void

    #@36
    .line 193
    :cond_0
    new-instance v0, Lorg/ksoap2/SoapFault12;

    #@38
    iget v2, p0, Lorg/ksoap2/SoapEnvelope;->version:I

    #@3a
    invoke-direct {v0, v2}, Lorg/ksoap2/SoapFault12;-><init>(I)V

    #@3d
    .restart local v0    # "fault":Lorg/ksoap2/SoapFault;
    goto :goto_0

    #@3e
    .line 198
    .end local v0    # "fault":Lorg/ksoap2/SoapFault;
    :cond_1
    iget-object v2, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    #@40
    instance-of v2, v2, Lorg/ksoap2/kdom/Node;

    #@42
    if-eqz v2, :cond_2

    #@44
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    #@46
    check-cast v1, Lorg/ksoap2/kdom/Node;

    #@48
    .line 199
    .local v1, "node":Lorg/ksoap2/kdom/Node;
    :goto_2
    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@4b
    .line 200
    iput-object v1, p0, Lorg/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    #@4d
    goto :goto_1

    #@4e
    .line 198
    .end local v1    # "node":Lorg/ksoap2/kdom/Node;
    :cond_2
    new-instance v1, Lorg/ksoap2/kdom/Node;

    #@50
    invoke-direct {v1}, Lorg/ksoap2/kdom/Node;-><init>()V

    #@53
    .restart local v1    # "node":Lorg/ksoap2/kdom/Node;
    goto :goto_2
.end method

.method public parseHeader(Lorg/xmlpull/v1/XmlPullParser;)V
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
    .line 161
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@3
    .line 163
    new-instance v3, Lorg/ksoap2/kdom/Node;

    #@5
    invoke-direct {v3}, Lorg/ksoap2/kdom/Node;-><init>()V

    #@8
    .line 164
    .local v3, "headers":Lorg/ksoap2/kdom/Node;
    invoke-virtual {v3, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@b
    .line 165
    const/4 v1, 0x0

    #@c
    .line 166
    .local v1, "count":I
    const/4 v4, 0x0

    #@d
    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/ksoap2/kdom/Node;->getChildCount()I

    #@10
    move-result v5

    #@11
    if-ge v4, v5, :cond_1

    #@13
    .line 167
    invoke-virtual {v3, v4}, Lorg/ksoap2/kdom/Node;->getElement(I)Lorg/ksoap2/kdom/Element;

    #@16
    move-result-object v0

    #@17
    .line 168
    .local v0, "child":Lorg/ksoap2/kdom/Element;
    if-eqz v0, :cond_0

    #@19
    .line 169
    add-int/lit8 v1, v1, 0x1

    #@1b
    .line 166
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 172
    .end local v0    # "child":Lorg/ksoap2/kdom/Element;
    :cond_1
    new-array v5, v1, [Lorg/ksoap2/kdom/Element;

    #@20
    iput-object v5, p0, Lorg/ksoap2/SoapEnvelope;->headerIn:[Lorg/ksoap2/kdom/Element;

    #@22
    .line 173
    const/4 v1, 0x0

    #@23
    .line 174
    const/4 v4, 0x0

    #@24
    :goto_1
    invoke-virtual {v3}, Lorg/ksoap2/kdom/Node;->getChildCount()I

    #@27
    move-result v5

    #@28
    if-ge v4, v5, :cond_3

    #@2a
    .line 175
    invoke-virtual {v3, v4}, Lorg/ksoap2/kdom/Node;->getElement(I)Lorg/ksoap2/kdom/Element;

    #@2d
    move-result-object v0

    #@2e
    .line 176
    .restart local v0    # "child":Lorg/ksoap2/kdom/Element;
    if-eqz v0, :cond_2

    #@30
    .line 177
    iget-object v5, p0, Lorg/ksoap2/SoapEnvelope;->headerIn:[Lorg/ksoap2/kdom/Element;

    #@32
    add-int/lit8 v2, v1, 0x1

    #@34
    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v0, v5, v1

    #@36
    move v1, v2

    #@37
    .line 174
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 159
    .end local v0    # "child":Lorg/ksoap2/kdom/Element;
    :cond_3
    return-void
.end method

.method public setOutputSoapObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "soapObject"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 254
    iput-object p1, p0, Lorg/ksoap2/SoapEnvelope;->bodyOut:Ljava/lang/Object;

    #@2
    .line 253
    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 213
    const-string/jumbo v0, "soap"

    #@3
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@5
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 214
    const-string/jumbo v0, "spp"

    #@b
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->ns:Ljava/lang/String;

    #@d
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 217
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@12
    const-string/jumbo v1, "Envelope"

    #@15
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@18
    .line 218
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@1a
    const-string/jumbo v1, "Header"

    #@1d
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@20
    .line 219
    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->writeHeader(Lorg/xmlpull/v1/XmlSerializer;)V

    #@23
    .line 220
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@25
    const-string/jumbo v1, "Header"

    #@28
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 221
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@2d
    const-string/jumbo v1, "Body"

    #@30
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33
    .line 222
    invoke-virtual {p0, p1}, Lorg/ksoap2/SoapEnvelope;->writeBody(Lorg/xmlpull/v1/XmlSerializer;)V

    #@36
    .line 223
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@38
    const-string/jumbo v1, "Body"

    #@3b
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3e
    .line 224
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@40
    const-string/jumbo v1, "Envelope"

    #@43
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@46
    .line 208
    return-void
.end method

.method public writeBody(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 244
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "encodingStyle"

    #@9
    iget-object v2, p0, Lorg/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    #@b
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e
    .line 246
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/SoapEnvelope;->bodyOut:Ljava/lang/Object;

    #@10
    check-cast v0, Lorg/ksoap2/kdom/Node;

    #@12
    invoke-virtual {v0, p1}, Lorg/ksoap2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    #@15
    .line 242
    return-void
.end method

.method public writeHeader(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->headerOut:[Lorg/ksoap2/kdom/Element;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 232
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->headerOut:[Lorg/ksoap2/kdom/Element;

    #@7
    array-length v1, v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 233
    iget-object v1, p0, Lorg/ksoap2/SoapEnvelope;->headerOut:[Lorg/ksoap2/kdom/Element;

    #@c
    aget-object v1, v1, v0

    #@e
    invoke-virtual {v1, p1}, Lorg/ksoap2/kdom/Element;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    #@11
    .line 232
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 230
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
