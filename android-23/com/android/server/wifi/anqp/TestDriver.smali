.class public Lcom/android/server/wifi/anqp/TestDriver;
.super Ljava/lang/Object;
.source "TestDriver.java"


# static fields
.field private static final QueryElements:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 22
    const/16 v0, 0x17

    #@2
    new-array v0, v0, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@4
    .line 23
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 24
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@b
    const/4 v2, 0x1

    #@c
    aput-object v1, v0, v2

    #@e
    .line 25
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@10
    const/4 v2, 0x2

    #@11
    aput-object v1, v0, v2

    #@13
    .line 26
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@15
    const/4 v2, 0x3

    #@16
    aput-object v1, v0, v2

    #@18
    .line 27
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1a
    const/4 v2, 0x4

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 28
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1f
    const/4 v2, 0x5

    #@20
    aput-object v1, v0, v2

    #@22
    .line 29
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@24
    const/4 v2, 0x6

    #@25
    aput-object v1, v0, v2

    #@27
    .line 30
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@29
    const/4 v2, 0x7

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 31
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2e
    const/16 v2, 0x8

    #@30
    aput-object v1, v0, v2

    #@32
    .line 32
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@34
    const/16 v2, 0x9

    #@36
    aput-object v1, v0, v2

    #@38
    .line 33
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@3a
    const/16 v2, 0xa

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 34
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@40
    const/16 v2, 0xb

    #@42
    aput-object v1, v0, v2

    #@44
    .line 35
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@46
    const/16 v2, 0xc

    #@48
    aput-object v1, v0, v2

    #@4a
    .line 36
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@4c
    const/16 v2, 0xd

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 37
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@52
    const/16 v2, 0xe

    #@54
    aput-object v1, v0, v2

    #@56
    .line 38
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@58
    const/16 v2, 0xf

    #@5a
    aput-object v1, v0, v2

    #@5c
    .line 40
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@5e
    const/16 v2, 0x10

    #@60
    aput-object v1, v0, v2

    #@62
    .line 41
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@64
    const/16 v2, 0x11

    #@66
    aput-object v1, v0, v2

    #@68
    .line 42
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@6a
    const/16 v2, 0x12

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 43
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@70
    const/16 v2, 0x13

    #@72
    aput-object v1, v0, v2

    #@74
    .line 44
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@76
    const/16 v2, 0x14

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 45
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@7c
    const/16 v2, 0x15

    #@7e
    aput-object v1, v0, v2

    #@80
    .line 46
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@82
    const/16 v2, 0x16

    #@84
    aput-object v1, v0, v2

    #@86
    .line 22
    sput-object v0, Lcom/android/server/wifi/anqp/TestDriver;->QueryElements:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@88
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getResponse(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    const/4 v2, 0x2

    #@1
    invoke-static {p0, v2}, Lcom/android/server/wifi/anqp/TestDriver;->read(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v1

    #@5
    .line 139
    .local v1, "lengthBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    #@8
    move-result v2

    #@9
    const v3, 0xffff

    #@c
    and-int v0, v2, v3

    #@e
    .line 140
    .local v0, "length":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Length "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@27
    .line 142
    invoke-static {p0, v0}, Lcom/android/server/wifi/anqp/TestDriver;->read(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    #@2a
    move-result-object v2

    #@2b
    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    invoke-static {}, Lcom/android/server/wifi/anqp/TestDriver;->runTest()V

    #@3
    .line 165
    return-void
.end method

.method private static prepRequest(ILjava/nio/ByteBuffer;)[B
    .locals 2
    .param p0, "pos0"    # I
    .param p1, "request"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@3
    move-result v1

    #@4
    sub-int/2addr v1, p0

    #@5
    add-int/lit8 v1, v1, -0x2

    #@7
    int-to-short v1, v1

    #@8
    invoke-virtual {p1, p0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@b
    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@e
    move-result v1

    #@f
    new-array v0, v1, [B

    #@11
    .line 148
    .local v0, "octets":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@14
    .line 149
    return-object v0
.end method

.method private static read(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    new-array v1, p1, [B

    #@2
    .line 154
    .local v1, "payload":[B
    const/4 v2, 0x0

    #@3
    .line 155
    .local v2, "position":I
    :goto_0
    if-ge v2, p1, :cond_1

    #@5
    .line 156
    sub-int v3, p1, v2

    #@7
    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    #@a
    move-result v0

    #@b
    .line 157
    .local v0, "amount":I
    if-gtz v0, :cond_0

    #@d
    .line 158
    new-instance v3, Ljava/io/EOFException;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "Got "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 160
    :cond_0
    add-int/2addr v2, v0

    #@28
    goto :goto_0

    #@29
    .line 162
    .end local v0    # "amount":I
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@2c
    move-result-object v3

    #@2d
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2f
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@32
    move-result-object v3

    #@33
    return-object v3
.end method

.method public static runTest()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    new-instance v5, Ljava/util/HashSet;

    #@2
    sget-object v18, Lcom/android/server/wifi/anqp/TestDriver;->QueryElements:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@4
    move-object/from16 v0, v18

    #@6
    array-length v0, v0

    #@7
    move/from16 v18, v0

    #@9
    move/from16 v0, v18

    #@b
    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    #@e
    .line 53
    .local v5, "elements":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    sget-object v18, Lcom/android/server/wifi/anqp/TestDriver;->QueryElements:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@10
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@13
    move-result-object v18

    #@14
    move-object/from16 v0, v18

    #@16
    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@19
    .line 55
    const/16 v18, 0x2000

    #@1b
    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1e
    move-result-object v15

    #@1f
    .line 56
    .local v15, "request":Ljava/nio/ByteBuffer;
    sget-object v18, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@21
    move-object/from16 v0, v18

    #@23
    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@26
    .line 57
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    #@29
    move-result v9

    #@2a
    .line 58
    .local v9, "lenPos":I
    const/16 v18, 0x0

    #@2c
    move/from16 v0, v18

    #@2e
    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@31
    .line 59
    invoke-static {v5, v15}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildQueryRequest(Ljava/util/Set;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@34
    .line 61
    invoke-static {v9, v15}, Lcom/android/server/wifi/anqp/TestDriver;->prepRequest(ILjava/nio/ByteBuffer;)[B

    #@37
    move-result-object v16

    #@38
    .line 63
    .local v16, "requestBytes":[B
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v19, "Connecting..."

    #@3d
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 64
    new-instance v17, Ljava/net/Socket;

    #@42
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    #@45
    move-result-object v18

    #@46
    const/16 v19, 0x17d8

    #@48
    invoke-direct/range {v17 .. v19}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    #@4b
    .line 65
    .local v17, "sock":Ljava/net/Socket;
    new-instance v11, Ljava/io/BufferedOutputStream;

    #@4d
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@50
    move-result-object v18

    #@51
    move-object/from16 v0, v18

    #@53
    invoke-direct {v11, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@56
    .line 66
    .local v11, "out":Ljava/io/BufferedOutputStream;
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@58
    new-instance v19, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v20, " ### Querying for "

    #@60
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v19

    #@64
    sget-object v20, Lcom/android/server/wifi/anqp/TestDriver;->QueryElements:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@66
    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@69
    move-result-object v20

    #@6a
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v19

    #@6e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v19

    #@72
    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@75
    .line 67
    move-object/from16 v0, v16

    #@77
    invoke-virtual {v11, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    #@7a
    .line 68
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    #@7d
    .line 70
    new-instance v8, Ljava/io/BufferedInputStream;

    #@7f
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@82
    move-result-object v18

    #@83
    move-object/from16 v0, v18

    #@85
    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@88
    .line 71
    .local v8, "in":Ljava/io/BufferedInputStream;
    invoke-static {v8}, Lcom/android/server/wifi/anqp/TestDriver;->getResponse(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    #@8b
    move-result-object v12

    #@8c
    .line 73
    .local v12, "payload":Ljava/nio/ByteBuffer;
    const/4 v10, 0x0

    #@8d
    .line 74
    .local v10, "osuProvidersElement":Lcom/android/server/wifi/anqp/HSOsuProvidersElement;
    invoke-static {v12}, Lcom/android/server/wifi/anqp/ANQPFactory;->parsePayload(Ljava/nio/ByteBuffer;)Ljava/util/List;

    #@90
    move-result-object v2

    #@91
    .line 75
    .local v2, "anqpResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@94
    move-result-object v4

    #@95
    .end local v10    # "osuProvidersElement":Lcom/android/server/wifi/anqp/HSOsuProvidersElement;
    .local v4, "element$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@98
    move-result v18

    #@99
    if-eqz v18, :cond_1

    #@9b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9e
    move-result-object v3

    #@9f
    check-cast v3, Lcom/android/server/wifi/anqp/ANQPElement;

    #@a1
    .line 76
    .local v3, "element":Lcom/android/server/wifi/anqp/ANQPElement;
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a3
    move-object/from16 v0, v18

    #@a5
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@a8
    .line 77
    invoke-virtual {v3}, Lcom/android/server/wifi/anqp/ANQPElement;->getID()Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@ab
    move-result-object v18

    #@ac
    sget-object v19, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@ae
    move-object/from16 v0, v18

    #@b0
    move-object/from16 v1, v19

    #@b2
    if-ne v0, v1, :cond_0

    #@b4
    move-object v10, v3

    #@b5
    .line 78
    check-cast v10, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;

    #@b7
    .local v10, "osuProvidersElement":Lcom/android/server/wifi/anqp/HSOsuProvidersElement;
    goto :goto_0

    #@b8
    .line 82
    .end local v3    # "element":Lcom/android/server/wifi/anqp/ANQPElement;
    .end local v10    # "osuProvidersElement":Lcom/android/server/wifi/anqp/HSOsuProvidersElement;
    :cond_1
    if-eqz v10, :cond_3

    #@ba
    .line 83
    invoke-virtual {v10}, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;->getProviders()Ljava/util/List;

    #@bd
    move-result-object v18

    #@be
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c1
    move-result-object v14

    #@c2
    .local v14, "provider$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@c5
    move-result v18

    #@c6
    if-eqz v18, :cond_3

    #@c8
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@cb
    move-result-object v13

    #@cc
    check-cast v13, Lcom/android/server/wifi/anqp/OSUProvider;

    #@ce
    .line 84
    .local v13, "provider":Lcom/android/server/wifi/anqp/OSUProvider;
    invoke-virtual {v13}, Lcom/android/server/wifi/anqp/OSUProvider;->getIcons()Ljava/util/List;

    #@d1
    move-result-object v18

    #@d2
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d5
    move-result-object v7

    #@d6
    .local v7, "iconInfo$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@d9
    move-result v18

    #@da
    if-eqz v18, :cond_2

    #@dc
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@df
    move-result-object v6

    #@e0
    check-cast v6, Lcom/android/server/wifi/anqp/IconInfo;

    #@e2
    .line 85
    .local v6, "iconInfo":Lcom/android/server/wifi/anqp/IconInfo;
    invoke-virtual {v6}, Lcom/android/server/wifi/anqp/IconInfo;->getFileName()Ljava/lang/String;

    #@e5
    move-result-object v18

    #@e6
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/anqp/TestDriver;->sendIconRequest(Ljava/lang/String;)V

    #@e9
    goto :goto_1

    #@ea
    .line 89
    .end local v6    # "iconInfo":Lcom/android/server/wifi/anqp/IconInfo;
    .end local v7    # "iconInfo$iterator":Ljava/util/Iterator;
    .end local v13    # "provider":Lcom/android/server/wifi/anqp/OSUProvider;
    .end local v14    # "provider$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v18, "doesNotExist.noimg"

    #@ed
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/anqp/TestDriver;->sendIconRequest(Ljava/lang/String;)V

    #@f0
    .line 91
    const/16 v18, 0x2

    #@f2
    move/from16 v0, v18

    #@f4
    new-array v0, v0, [Ljava/lang/String;

    #@f6
    move-object/from16 v18, v0

    #@f8
    const-string/jumbo v19, "nxdomain.abc"

    #@fb
    const/16 v20, 0x0

    #@fd
    aput-object v19, v18, v20

    #@ff
    const-string/jumbo v19, "jan.com"

    #@102
    const/16 v20, 0x1

    #@104
    aput-object v19, v18, v20

    #@106
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/anqp/TestDriver;->sendHomeRealmQuery([Ljava/lang/String;)V

    #@109
    .line 49
    return-void
.end method

.method private static varargs sendHomeRealmQuery([Ljava/lang/String;)V
    .locals 11
    .param p0, "realms"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    const/16 v8, 0x400

    #@2
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v8

    #@6
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@8
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b
    move-result-object v6

    #@c
    .line 118
    .local v6, "request":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@f
    move-result v2

    #@10
    .line 119
    .local v2, "iconPos":I
    const/4 v8, 0x0

    #@11
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@14
    .line 120
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@17
    move-result-object v8

    #@18
    invoke-static {v8, v6}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildHomeRealmRequest(Ljava/util/List;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@1b
    .line 121
    invoke-static {v2, v6}, Lcom/android/server/wifi/anqp/TestDriver;->prepRequest(ILjava/nio/ByteBuffer;)[B

    #@1e
    move-result-object v1

    #@1f
    .line 123
    .local v1, "iconBytes":[B
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@21
    const-string/jumbo v9, "Connecting..."

    #@24
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@27
    .line 124
    new-instance v7, Ljava/net/Socket;

    #@29
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    #@2c
    move-result-object v8

    #@2d
    const/16 v9, 0x17d8

    #@2f
    invoke-direct {v7, v8, v9}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    #@32
    .line 125
    .local v7, "sock":Ljava/net/Socket;
    new-instance v4, Ljava/io/BufferedOutputStream;

    #@34
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@37
    move-result-object v8

    #@38
    invoke-direct {v4, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3b
    .line 127
    .local v4, "out":Ljava/io/BufferedOutputStream;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3d
    new-instance v9, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v10, " ### Home realm query for "

    #@45
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v9

    #@49
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@4c
    move-result-object v10

    #@4d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v9

    #@55
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    .line 128
    invoke-virtual {v4, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    #@5b
    .line 129
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    #@5e
    .line 131
    new-instance v3, Ljava/io/BufferedInputStream;

    #@60
    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@63
    move-result-object v8

    #@64
    invoke-direct {v3, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@67
    .line 132
    .local v3, "in":Ljava/io/BufferedInputStream;
    invoke-static {v3}, Lcom/android/server/wifi/anqp/TestDriver;->getResponse(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    #@6a
    move-result-object v5

    #@6b
    .line 133
    .local v5, "payload":Ljava/nio/ByteBuffer;
    invoke-static {v5}, Lcom/android/server/wifi/anqp/ANQPFactory;->parsePayload(Ljava/nio/ByteBuffer;)Ljava/util/List;

    #@6e
    move-result-object v0

    #@6f
    .line 134
    .local v0, "anqpResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/ANQPElement;>;"
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@71
    new-instance v9, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v10, "Home realm query: "

    #@79
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v9

    #@7d
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v9

    #@81
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v9

    #@85
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@88
    .line 116
    return-void
.end method

.method private static sendIconRequest(Ljava/lang/String;)V
    .locals 11
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v8

    #@4
    mul-int/lit8 v8, v8, 0x2

    #@6
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@9
    move-result-object v8

    #@a
    .line 96
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@c
    .line 95
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v3

    #@10
    .line 97
    .local v3, "iconRequest":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    #@13
    move-result v2

    #@14
    .line 98
    .local v2, "iconPos":I
    const/4 v8, 0x0

    #@15
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@18
    .line 99
    invoke-static {p0, v3}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildIconRequest(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@1b
    .line 100
    invoke-static {v2, v3}, Lcom/android/server/wifi/anqp/TestDriver;->prepRequest(ILjava/nio/ByteBuffer;)[B

    #@1e
    move-result-object v1

    #@1f
    .line 102
    .local v1, "iconBytes":[B
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@21
    const-string/jumbo v9, "Connecting..."

    #@24
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@27
    .line 103
    new-instance v7, Ljava/net/Socket;

    #@29
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    #@2c
    move-result-object v8

    #@2d
    const/16 v9, 0x17d8

    #@2f
    invoke-direct {v7, v8, v9}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    #@32
    .line 104
    .local v7, "sock":Ljava/net/Socket;
    new-instance v5, Ljava/io/BufferedOutputStream;

    #@34
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@37
    move-result-object v8

    #@38
    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3b
    .line 106
    .local v5, "out":Ljava/io/BufferedOutputStream;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3d
    new-instance v9, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v10, " ### Requesting icon \'"

    #@45
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v9

    #@49
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v9

    #@4d
    const-string/jumbo v10, "\'"

    #@50
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5b
    .line 107
    invoke-virtual {v5, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    #@5e
    .line 108
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    #@61
    .line 110
    new-instance v4, Ljava/io/BufferedInputStream;

    #@63
    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@66
    move-result-object v8

    #@67
    invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@6a
    .line 111
    .local v4, "in":Ljava/io/BufferedInputStream;
    invoke-static {v4}, Lcom/android/server/wifi/anqp/TestDriver;->getResponse(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    #@6d
    move-result-object v6

    #@6e
    .line 112
    .local v6, "payload":Ljava/nio/ByteBuffer;
    invoke-static {v6}, Lcom/android/server/wifi/anqp/ANQPFactory;->parsePayload(Ljava/nio/ByteBuffer;)Ljava/util/List;

    #@71
    move-result-object v0

    #@72
    .line 113
    .local v0, "anqpResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/ANQPElement;>;"
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@74
    new-instance v9, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v10, "Icon: "

    #@7c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v9

    #@80
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v9

    #@84
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8b
    .line 94
    return-void
.end method
