.class public Lorg/ksoap2/transport/HttpTransportSE;
.super Lorg/ksoap2/transport/Transport;
.source "HttpTransportSE.java"


# instance fields
.field private serviceConnection:Lorg/ksoap2/transport/ServiceConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    #@4
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    #@0
    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/lang/String;I)V

    #@3
    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "contentLength"    # I

    #@0
    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/lang/String;I)V

    #@3
    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    #@3
    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;I)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    #@0
    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    #@3
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;II)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "contentLength"    # I

    #@0
    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    #@3
    .line 99
    return-void
.end method

.method private getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    :try_start_0
    check-cast p1, Ljava/util/zip/GZIPInputStream;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@2
    .end local p1    # "inputStream":Ljava/io/InputStream;
    return-object p1

    #@3
    .line 278
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@4
    .line 279
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    #@6
    invoke-direct {v1, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    #@9
    return-object v1
.end method


# virtual methods
.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .param p3, "headers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    if-nez p1, :cond_0

    #@2
    .line 138
    const-string/jumbo p1, "\"\""

    #@5
    .line 141
    :cond_0
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7
    new-instance v16, Ljava/lang/StringBuilder;

    #@9
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v17, "call action:"

    #@f
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v16

    #@13
    move-object/from16 v0, v16

    #@15
    move-object/from16 v1, p1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v16

    #@1b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v16

    #@1f
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 142
    const-string/jumbo v15, "UTF-8"

    #@25
    move-object/from16 v0, p0

    #@27
    move-object/from16 v1, p2

    #@29
    invoke-virtual {v0, v1, v15}, Lorg/ksoap2/transport/HttpTransportSE;->createRequestData(Lorg/ksoap2/SoapEnvelope;Ljava/lang/String;)[B

    #@2c
    move-result-object v13

    #@2d
    .line 144
    .local v13, "requestData":[B
    if-eqz v13, :cond_3

    #@2f
    .line 145
    move-object/from16 v0, p0

    #@31
    iget-boolean v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    #@33
    if-eqz v15, :cond_2

    #@35
    new-instance v15, Ljava/lang/String;

    #@37
    invoke-direct {v15, v13}, Ljava/lang/String;-><init>([B)V

    #@3a
    :goto_0
    move-object/from16 v0, p0

    #@3c
    iput-object v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    #@3e
    .line 150
    :goto_1
    const/4 v15, 0x0

    #@3f
    move-object/from16 v0, p0

    #@41
    iput-object v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    #@43
    .line 152
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@45
    new-instance v16, Ljava/lang/StringBuilder;

    #@47
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v17, "requestDump:"

    #@4d
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v16

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v0, v0, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    #@55
    move-object/from16 v17, v0

    #@57
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v16

    #@5b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v16

    #@5f
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@62
    .line 153
    invoke-virtual/range {p0 .. p0}, Lorg/ksoap2/transport/HttpTransportSE;->getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;

    #@65
    move-result-object v5

    #@66
    .line 154
    .local v5, "connection":Lorg/ksoap2/transport/ServiceConnection;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@68
    new-instance v16, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v17, "connection:"

    #@70
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v16

    #@74
    move-object/from16 v0, v16

    #@76
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v16

    #@7a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v16

    #@7e
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@81
    .line 156
    const-string/jumbo v15, "User-Agent"

    #@84
    const-string/jumbo v16, "ksoap2-android/2.6.0+"

    #@87
    move-object/from16 v0, v16

    #@89
    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@8c
    .line 160
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8e
    new-instance v16, Ljava/lang/StringBuilder;

    #@90
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v17, "envelope:"

    #@96
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v16

    #@9a
    move-object/from16 v0, v16

    #@9c
    move-object/from16 v1, p2

    #@9e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v16

    #@a2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v16

    #@a6
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a9
    .line 161
    if-eqz p2, :cond_8

    #@ab
    .line 162
    move-object/from16 v0, p2

    #@ad
    iget v15, v0, Lorg/ksoap2/SoapEnvelope;->version:I

    #@af
    const/16 v16, 0x78

    #@b1
    move/from16 v0, v16

    #@b3
    if-eq v15, v0, :cond_1

    #@b5
    .line 163
    const-string/jumbo v15, "SOAPAction"

    #@b8
    move-object/from16 v0, p1

    #@ba
    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@bd
    .line 166
    :cond_1
    move-object/from16 v0, p2

    #@bf
    iget v15, v0, Lorg/ksoap2/SoapEnvelope;->version:I

    #@c1
    const/16 v16, 0x78

    #@c3
    move/from16 v0, v16

    #@c5
    if-ne v15, v0, :cond_4

    #@c7
    .line 167
    const-string/jumbo v15, "Content-Type"

    #@ca
    const-string/jumbo v16, "application/soap+xml;charset=utf-8"

    #@cd
    move-object/from16 v0, v16

    #@cf
    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@d2
    .line 172
    :goto_2
    const-string/jumbo v15, "Connection"

    #@d5
    const-string/jumbo v16, "close"

    #@d8
    move-object/from16 v0, v16

    #@da
    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@dd
    .line 173
    const-string/jumbo v15, "Accept-Encoding"

    #@e0
    const-string/jumbo v16, "gzip"

    #@e3
    move-object/from16 v0, v16

    #@e5
    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@e8
    .line 174
    const-string/jumbo v15, "Content-Length"

    #@eb
    new-instance v16, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v17, ""

    #@f3
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v16

    #@f7
    array-length v0, v13

    #@f8
    move/from16 v17, v0

    #@fa
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v16

    #@fe
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v16

    #@102
    move-object/from16 v0, v16

    #@104
    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@107
    .line 180
    if-eqz p3, :cond_5

    #@109
    .line 181
    const/4 v9, 0x0

    #@10a
    .local v9, "i":I
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    #@10d
    move-result v15

    #@10e
    if-ge v9, v15, :cond_5

    #@110
    .line 182
    move-object/from16 v0, p3

    #@112
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@115
    move-result-object v8

    #@116
    check-cast v8, Lorg/ksoap2/HeaderProperty;

    #@118
    .line 183
    .local v8, "hp":Lorg/ksoap2/HeaderProperty;
    invoke-virtual {v8}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    #@11b
    move-result-object v15

    #@11c
    invoke-virtual {v8}, Lorg/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    #@11f
    move-result-object v16

    #@120
    move-object/from16 v0, v16

    #@122
    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@125
    .line 181
    add-int/lit8 v9, v9, 0x1

    #@127
    goto :goto_3

    #@128
    .line 145
    .end local v5    # "connection":Lorg/ksoap2/transport/ServiceConnection;
    .end local v8    # "hp":Lorg/ksoap2/HeaderProperty;
    .end local v9    # "i":I
    :cond_2
    const/4 v15, 0x0

    #@129
    goto/16 :goto_0

    #@12b
    .line 148
    :cond_3
    const/4 v15, 0x0

    #@12c
    move-object/from16 v0, p0

    #@12e
    iput-object v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    #@130
    goto/16 :goto_1

    #@132
    .line 169
    .restart local v5    # "connection":Lorg/ksoap2/transport/ServiceConnection;
    :cond_4
    const-string/jumbo v15, "Content-Type"

    #@135
    const-string/jumbo v16, "text/xml;charset=utf-8"

    #@138
    move-object/from16 v0, v16

    #@13a
    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@13d
    goto :goto_2

    #@13e
    .line 187
    :cond_5
    const-string/jumbo v15, "POST"

    #@141
    invoke-interface {v5, v15}, Lorg/ksoap2/transport/ServiceConnection;->setRequestMethod(Ljava/lang/String;)V

    #@144
    .line 196
    :goto_4
    if-eqz v13, :cond_6

    #@146
    .line 197
    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->openOutputStream()Ljava/io/OutputStream;

    #@149
    move-result-object v11

    #@14a
    .line 199
    .local v11, "os":Ljava/io/OutputStream;
    array-length v15, v13

    #@14b
    const/16 v16, 0x0

    #@14d
    move/from16 v0, v16

    #@14f
    invoke-virtual {v11, v13, v0, v15}, Ljava/io/OutputStream;->write([BII)V

    #@152
    .line 200
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    #@155
    .line 201
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    #@158
    .line 202
    const/4 v13, 0x0

    #@159
    .line 205
    .end local v11    # "os":Ljava/io/OutputStream;
    .end local v13    # "requestData":[B
    :cond_6
    const/4 v14, 0x0

    #@15a
    .line 206
    .local v14, "retHeaders":Ljava/util/List;
    const/4 v7, 0x0

    #@15b
    .line 207
    .local v7, "gZippedContent":Z
    const/4 v2, 0x0

    #@15c
    .line 210
    .local v2, "bcaCert":Z
    :try_start_0
    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->getResponseProperties()Ljava/util/List;

    #@15f
    move-result-object v14

    #@160
    .line 211
    .local v14, "retHeaders":Ljava/util/List;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@162
    new-instance v16, Ljava/lang/StringBuilder;

    #@164
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    const-string/jumbo v17, "[HttpTransportSE] retHeaders = "

    #@16a
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v16

    #@16e
    move-object/from16 v0, v16

    #@170
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v16

    #@174
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v16

    #@178
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@17b
    .line 212
    const/4 v9, 0x0

    #@17c
    .restart local v9    # "i":I
    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@17f
    move-result v15

    #@180
    if-ge v9, v15, :cond_a

    #@182
    .line 213
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@185
    move-result-object v8

    #@186
    check-cast v8, Lorg/ksoap2/HeaderProperty;

    #@188
    .line 215
    .restart local v8    # "hp":Lorg/ksoap2/HeaderProperty;
    invoke-virtual {v8}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18b
    move-result-object v15

    #@18c
    if-nez v15, :cond_9

    #@18e
    .line 212
    :cond_7
    :goto_6
    add-int/lit8 v9, v9, 0x1

    #@190
    goto :goto_5

    #@191
    .line 191
    .end local v2    # "bcaCert":Z
    .end local v7    # "gZippedContent":Z
    .end local v8    # "hp":Lorg/ksoap2/HeaderProperty;
    .end local v9    # "i":I
    .end local v14    # "retHeaders":Ljava/util/List;
    .restart local v13    # "requestData":[B
    :cond_8
    const-string/jumbo v15, "Connection"

    #@194
    const-string/jumbo v16, "close"

    #@197
    move-object/from16 v0, v16

    #@199
    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@19c
    .line 192
    const-string/jumbo v15, "Accept-Encoding"

    #@19f
    const-string/jumbo v16, "gzip"

    #@1a2
    move-object/from16 v0, v16

    #@1a4
    invoke-interface {v5, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@1a7
    .line 193
    const-string/jumbo v15, "GET"

    #@1aa
    invoke-interface {v5, v15}, Lorg/ksoap2/transport/ServiceConnection;->setRequestMethod(Ljava/lang/String;)V

    #@1ad
    goto :goto_4

    #@1ae
    .line 220
    .end local v13    # "requestData":[B
    .restart local v2    # "bcaCert":Z
    .restart local v7    # "gZippedContent":Z
    .restart local v8    # "hp":Lorg/ksoap2/HeaderProperty;
    .restart local v9    # "i":I
    .restart local v14    # "retHeaders":Ljava/util/List;
    :cond_9
    :try_start_1
    invoke-virtual {v8}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    #@1b1
    move-result-object v15

    #@1b2
    const-string/jumbo v16, "Content-Encoding"

    #@1b5
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b8
    move-result v15

    #@1b9
    if-eqz v15, :cond_7

    #@1bb
    .line 221
    invoke-virtual {v8}, Lorg/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    #@1be
    move-result-object v15

    #@1bf
    const-string/jumbo v16, "gzip"

    #@1c2
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c5
    move-result v15

    #@1c6
    .line 220
    if-eqz v15, :cond_7

    #@1c8
    .line 222
    const/4 v7, 0x1

    #@1c9
    goto :goto_6

    #@1ca
    .line 225
    .end local v8    # "hp":Lorg/ksoap2/HeaderProperty;
    :cond_a
    if-eqz v7, :cond_e

    #@1cc
    .line 226
    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;

    #@1cf
    move-result-object v15

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    invoke-direct {v0, v15}, Lorg/ksoap2/transport/HttpTransportSE;->getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@1d5
    move-result-object v10

    #@1d6
    .line 243
    .end local v9    # "i":I
    .end local v14    # "retHeaders":Ljava/util/List;
    .local v10, "is":Ljava/io/InputStream;
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    #@1d8
    iget-boolean v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    #@1da
    if-eqz v15, :cond_c

    #@1dc
    .line 244
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    #@1de
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@1e1
    .line 245
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v15, 0x2000

    #@1e3
    new-array v4, v15, [B

    #@1e5
    .line 248
    .local v4, "buf":[B
    :goto_8
    const/4 v15, 0x0

    #@1e6
    const/16 v16, 0x2000

    #@1e8
    move/from16 v0, v16

    #@1ea
    invoke-virtual {v10, v4, v15, v0}, Ljava/io/InputStream;->read([BII)I

    #@1ed
    move-result v12

    #@1ee
    .line 249
    .local v12, "rd":I
    const/4 v15, -0x1

    #@1ef
    if-ne v12, v15, :cond_10

    #@1f1
    .line 255
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    #@1f4
    .line 256
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1f7
    move-result-object v4

    #@1f8
    .line 258
    new-instance v15, Ljava/lang/String;

    #@1fa
    invoke-direct {v15, v4}, Ljava/lang/String;-><init>([B)V

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    iput-object v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    #@201
    .line 260
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@203
    new-instance v16, Ljava/lang/StringBuilder;

    #@205
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@208
    const-string/jumbo v17, "responseDump:"

    #@20b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v16

    #@20f
    move-object/from16 v0, p0

    #@211
    iget-object v0, v0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    #@213
    move-object/from16 v17, v0

    #@215
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@218
    move-result-object v16

    #@219
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21c
    move-result-object v16

    #@21d
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@220
    .line 261
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    #@223
    .line 262
    new-instance v10, Ljava/io/ByteArrayInputStream;

    #@225
    .end local v10    # "is":Ljava/io/InputStream;
    invoke-direct {v10, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@228
    .line 265
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buf":[B
    .end local v12    # "rd":I
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_c
    if-eqz p2, :cond_d

    #@22a
    .line 266
    move-object/from16 v0, p0

    #@22c
    move-object/from16 v1, p2

    #@22e
    invoke-virtual {v0, v1, v10}, Lorg/ksoap2/transport/HttpTransportSE;->parseResponse(Lorg/ksoap2/SoapEnvelope;Ljava/io/InputStream;)V

    #@231
    .line 269
    :cond_d
    return-object v14

    #@232
    .line 228
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "i":I
    .restart local v14    # "retHeaders":Ljava/util/List;
    :cond_e
    :try_start_2
    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@235
    move-result-object v10

    #@236
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_7

    #@237
    .line 230
    .end local v9    # "i":I
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v14    # "retHeaders":Ljava/util/List;
    :catch_0
    move-exception v6

    #@238
    .line 231
    .local v6, "e":Ljava/io/IOException;
    if-eqz v7, :cond_f

    #@23a
    .line 232
    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    #@23d
    move-result-object v15

    #@23e
    move-object/from16 v0, p0

    #@240
    invoke-direct {v0, v15}, Lorg/ksoap2/transport/HttpTransportSE;->getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    #@243
    move-result-object v10

    #@244
    .line 237
    .restart local v10    # "is":Ljava/io/InputStream;
    :goto_9
    if-nez v10, :cond_b

    #@246
    .line 238
    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    #@249
    .line 239
    throw v6

    #@24a
    .line 234
    .end local v10    # "is":Ljava/io/InputStream;
    :cond_f
    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    #@24d
    move-result-object v10

    #@24e
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_9

    #@24f
    .line 252
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buf":[B
    .restart local v12    # "rd":I
    :cond_10
    const/4 v15, 0x0

    #@250
    invoke-virtual {v3, v4, v15, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@253
    goto :goto_8
.end method

.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V
    .locals 1
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lorg/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;

    #@4
    .line 114
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 293
    const/4 v1, 0x0

    #@1
    .line 296
    .local v1, "retVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    #@3
    iget-object v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    #@5
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 301
    .end local v1    # "retVal":Ljava/lang/String;
    :goto_0
    return-object v1

    #@d
    .line 297
    .restart local v1    # "retVal":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@e
    .line 298
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    #@11
    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 319
    const/4 v1, 0x0

    #@1
    .line 322
    .local v1, "retVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    #@3
    iget-object v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    #@5
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 327
    .end local v1    # "retVal":Ljava/lang/String;
    :goto_0
    return-object v1

    #@d
    .line 323
    .restart local v1    # "retVal":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@e
    .line 324
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    #@11
    goto :goto_0
.end method

.method public getPort()I
    .locals 4

    #@0
    .prologue
    .line 306
    const/4 v1, -0x1

    #@1
    .line 309
    .local v1, "retVal":I
    :try_start_0
    new-instance v2, Ljava/net/URL;

    #@3
    iget-object v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    #@5
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    .line 314
    :goto_0
    return v1

    #@d
    .line 310
    :catch_0
    move-exception v0

    #@e
    .line 311
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    #@11
    goto :goto_0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 332
    const/4 v1, 0x0

    #@1
    .line 335
    .local v1, "retVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    #@3
    iget-object v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    #@5
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 340
    .end local v1    # "retVal":Ljava/lang/String;
    :goto_0
    return-object v1

    #@d
    .line 336
    .restart local v1    # "retVal":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@e
    .line 337
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    #@11
    goto :goto_0
.end method

.method public getRequestData(Lorg/ksoap2/SoapEnvelope;Ljava/lang/String;)[B
    .locals 2
    .param p1, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .param p2, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 348
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/transport/HttpTransportSE;->createRequestData(Lorg/ksoap2/SoapEnvelope;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 349
    :catch_0
    move-exception v0

    #@6
    .line 350
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@9
    .line 353
    const/4 v1, 0x0

    #@a
    return-object v1
.end method

.method public getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Lorg/ksoap2/transport/HttpTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 285
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "new ServiceConnectionSE:"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lorg/ksoap2/transport/HttpTransportSE;->proxy:Ljava/net/Proxy;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, " "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget v2, p0, Lorg/ksoap2/transport/HttpTransportSE;->timeout:I

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@39
    .line 286
    new-instance v0, Lorg/ksoap2/transport/ServiceConnectionSE;

    #@3b
    iget-object v1, p0, Lorg/ksoap2/transport/HttpTransportSE;->proxy:Ljava/net/Proxy;

    #@3d
    iget-object v2, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    #@3f
    iget v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->timeout:I

    #@41
    invoke-direct {v0, v1, v2, v3}, Lorg/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    #@44
    iput-object v0, p0, Lorg/ksoap2/transport/HttpTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    #@46
    .line 288
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/transport/HttpTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    #@48
    return-object v0
.end method
