.class Lorg/apache/harmony/xml/ExpatParser;
.super Ljava/lang/Object;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;,
        Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;,
        Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;,
        Lorg/apache/harmony/xml/ExpatParser$ParseException;,
        Lorg/apache/harmony/xml/ExpatParser$EntityParser;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1fa0

.field static final CHARACTER_ENCODING:Ljava/lang/String; = "UTF-16"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final OUTSIDE_START_ELEMENT:Ljava/lang/String; = "Attributes can only be used within the scope of startElement()."

.field private static final TIMEOUT:I = 0x4e20


# instance fields
.field private attributeCount:I

.field private attributePointer:J

.field private final attributes:Lorg/apache/harmony/xml/ExpatAttributes;

.field private final encoding:Ljava/lang/String;

.field private inStartElement:Z

.field private final locator:Lorg/xml/sax/Locator;

.field private pointer:J

.field private final publicId:Ljava/lang/String;

.field private final systemId:Ljava/lang/String;

.field private final xmlReader:Lorg/apache/harmony/xml/ExpatReader;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/xml/ExpatParser;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/xml/ExpatParser;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/xml/ExpatParser;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lorg/apache/harmony/xml/ExpatParser;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@2
    return-wide v0
.end method

.method static synthetic -get4(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lorg/apache/harmony/xml/ExpatParser;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->column()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lorg/apache/harmony/xml/ExpatParser;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->line()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 576
    const-string/jumbo v0, ""

    #@3
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->staticInitialize(Ljava/lang/String;)V

    #@6
    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "xmlReader"    # Lorg/apache/harmony/xml/ExpatReader;
    .param p3, "pointer"    # J
    .param p5, "publicId"    # Ljava/lang/String;
    .param p6, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 49
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    #@7
    .line 50
    const/4 v0, -0x1

    #@8
    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    #@a
    .line 51
    const-wide/16 v0, 0x0

    #@c
    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    #@e
    .line 53
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;

    #@10
    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;)V

    #@13
    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    #@15
    .line 62
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;

    #@17
    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;)V

    #@1a
    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    #@1c
    .line 105
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    #@1e
    .line 106
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@20
    .line 107
    iput-wide p3, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@22
    .line 108
    iput-object p6, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    #@24
    .line 109
    iput-object p5, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    #@26
    .line 104
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "xmlReader"    # Lorg/apache/harmony/xml/ExpatReader;
    .param p3, "pointer"    # J
    .param p5, "publicId"    # Ljava/lang/String;
    .param p6, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "xmlReader"    # Lorg/apache/harmony/xml/ExpatReader;
    .param p3, "processNamespaces"    # Z
    .param p4, "publicId"    # Ljava/lang/String;
    .param p5, "systemId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 49
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    #@7
    .line 50
    const/4 v0, -0x1

    #@8
    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    #@a
    .line 51
    const-wide/16 v0, 0x0

    #@c
    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    #@e
    .line 53
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;

    #@10
    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;)V

    #@13
    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    #@15
    .line 62
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;

    #@17
    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;)V

    #@1a
    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    #@1c
    .line 81
    iput-object p4, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    #@1e
    .line 82
    iput-object p5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    #@20
    .line 84
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@22
    .line 93
    if-nez p1, :cond_0

    #@24
    const-string/jumbo p1, "UTF-8"

    #@27
    .end local p1    # "encoding":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    #@29
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    #@2b
    .line 94
    invoke-direct {p0, v0, p3}, Lorg/apache/harmony/xml/ExpatParser;->initialize(Ljava/lang/String;Z)J

    #@2e
    move-result-wide v0

    #@2f
    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@31
    .line 80
    return-void
.end method

.method private native appendBytes(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private native appendChars(J[CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private native appendString(JLjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private static native cloneAttributes(JI)J
.end method

.method private column()I
    .locals 2

    #@0
    .prologue
    .line 592
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@2
    invoke-static {v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->column(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static native column(J)I
.end method

.method private static native createEntityParser(JLjava/lang/String;)J
.end method

.method private endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 530
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@4
    .line 531
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    #@6
    .line 532
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    #@9
    .line 528
    :cond_0
    return-void
.end method

.method private native initialize(Ljava/lang/String;Z)J
.end method

.method private line()I
    .locals 2

    #@0
    .prologue
    .line 583
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@2
    invoke-static {v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->line(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static native line(J)I
.end method

.method static openUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 748
    :try_start_0
    new-instance v3, Ljava/net/URL;

    #@2
    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@8
    move-result-object v2

    #@9
    .line 749
    .local v2, "urlConnection":Ljava/net/URLConnection;
    const/16 v3, 0x4e20

    #@b
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    #@e
    .line 750
    const/16 v3, 0x4e20

    #@10
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    #@13
    .line 751
    const/4 v3, 0x1

    #@14
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    #@17
    .line 752
    const/4 v3, 0x0

    #@18
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    #@1b
    .line 753
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result-object v3

    #@1f
    return-object v3

    #@20
    .line 754
    .end local v2    # "urlConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v0

    #@21
    .line 755
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    #@23
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v4, "Couldn\'t open "

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3a
    .line 756
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3d
    .line 757
    throw v1
.end method

.method private parseExternalEntity(Lorg/apache/harmony/xml/ExpatParser;Lorg/xml/sax/InputSource;)V
    .locals 7
    .param p1, "entityParser"    # Lorg/apache/harmony/xml/ExpatParser;
    .param p2, "inputSource"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 341
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    #@4
    move-result-object v1

    #@5
    .line 342
    .local v1, "reader":Ljava/io/Reader;
    if-eqz v1, :cond_0

    #@7
    .line 344
    :try_start_0
    const-string/jumbo v3, "<externalEntity>"

    #@a
    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append(Ljava/lang/String;)V

    #@d
    .line 345
    invoke-direct {p1, v1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/Reader;)V

    #@10
    .line 346
    const-string/jumbo v3, "</externalEntity>"

    #@13
    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 348
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@19
    .line 350
    return-void

    #@1a
    .line 347
    :catchall_0
    move-exception v3

    #@1b
    .line 348
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e
    .line 347
    throw v3

    #@1f
    .line 354
    :cond_0
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    #@22
    move-result-object v0

    #@23
    .line 355
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    #@25
    .line 357
    :try_start_1
    const-string/jumbo v3, "<externalEntity>"

    #@28
    .line 358
    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    #@2a
    .line 357
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V

    #@31
    .line 359
    invoke-direct {p1, v0}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    #@34
    .line 360
    const-string/jumbo v3, "</externalEntity>"

    #@37
    .line 361
    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    #@39
    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@40
    .line 363
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@43
    .line 365
    return-void

    #@44
    .line 362
    :catchall_1
    move-exception v3

    #@45
    .line 363
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@48
    .line 362
    throw v3

    #@49
    .line 369
    :cond_1
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    .line 370
    .local v2, "systemId":Ljava/lang/String;
    if-nez v2, :cond_2

    #@4f
    .line 372
    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    #@51
    const-string/jumbo v4, "No input specified."

    #@54
    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    #@56
    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    #@59
    throw v3

    #@5a
    .line 376
    :cond_2
    invoke-static {v2}, Lorg/apache/harmony/xml/ExpatParser;->openUrl(Ljava/lang/String;)Ljava/io/InputStream;

    #@5d
    move-result-object v0

    #@5e
    .line 378
    :try_start_2
    const-string/jumbo v3, "<externalEntity>"

    #@61
    .line 379
    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    #@63
    .line 378
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@66
    move-result-object v3

    #@67
    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V

    #@6a
    .line 380
    invoke-direct {p1, v0}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    #@6d
    .line 381
    const-string/jumbo v3, "</externalEntity>"

    #@70
    .line 382
    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    #@72
    .line 381
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@75
    move-result-object v3

    #@76
    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@79
    .line 384
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@7c
    .line 334
    return-void

    #@7d
    .line 383
    :catchall_2
    move-exception v3

    #@7e
    .line 384
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@81
    .line 383
    throw v3
.end method

.method private parseFragment(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 509
    const/16 v1, 0x1fa0

    #@2
    new-array v4, v1, [B

    #@4
    .line 511
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    #@7
    move-result v6

    #@8
    .local v6, "length":I
    const/4 v1, -0x1

    #@9
    if-eq v6, v1, :cond_0

    #@b
    .line 513
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@d
    const/4 v5, 0x0

    #@e
    move-object v1, p0

    #@f
    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendBytes(J[BII)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    goto :goto_0

    #@13
    .line 514
    :catch_0
    move-exception v0

    #@14
    .line 515
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    #@16
    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-direct {v1, v2, v3, v5}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    #@20
    throw v1

    #@21
    .line 508
    .end local v0    # "e":Lorg/apache/harmony/xml/ExpatException;
    :cond_0
    return-void
.end method

.method private parseFragment(Ljava/io/Reader;)V
    .locals 7
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 493
    const/16 v1, 0xfd0

    #@2
    new-array v4, v1, [C

    #@4
    .line 495
    .local v4, "buffer":[C
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/Reader;->read([C)I

    #@7
    move-result v6

    #@8
    .local v6, "length":I
    const/4 v1, -0x1

    #@9
    if-eq v6, v1, :cond_0

    #@b
    .line 497
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@d
    const/4 v5, 0x0

    #@e
    move-object v1, p0

    #@f
    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendChars(J[CII)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    goto :goto_0

    #@13
    .line 498
    :catch_0
    move-exception v0

    #@14
    .line 499
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    #@16
    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-direct {v1, v2, v3, v5}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    #@20
    throw v1

    #@21
    .line 492
    .end local v0    # "e":Lorg/apache/harmony/xml/ExpatException;
    :cond_0
    return-void
.end method

.method private pickEncoding(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .locals 3
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;

    #@0
    .prologue
    .line 321
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    #@3
    move-result-object v1

    #@4
    .line 322
    .local v1, "reader":Ljava/io/Reader;
    if-eqz v1, :cond_0

    #@6
    .line 323
    const-string/jumbo v2, "UTF-16"

    #@9
    return-object v2

    #@a
    .line 326
    :cond_0
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 327
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_1

    #@10
    const-string/jumbo v0, "UTF-8"

    #@13
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private native release(J)V
.end method

.method private static native releaseParser(J)V
.end method

.method private startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@4
    .line 522
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    #@6
    .line 523
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    #@8
    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    #@b
    .line 524
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    #@e
    .line 520
    :cond_0
    return-void
.end method

.method private static native staticInitialize(Ljava/lang/String;)V
.end method


# virtual methods
.method append(Ljava/lang/String;)V
    .locals 5
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 406
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v2, v3, p1, v1}, Lorg/apache/harmony/xml/ExpatParser;->appendString(JLjava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 404
    return-void

    #@7
    .line 407
    :catch_0
    move-exception v0

    #@8
    .line 408
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    #@a
    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    #@10
    const/4 v4, 0x0

    #@11
    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    #@14
    throw v1
.end method

.method append([B)V
    .locals 2
    .param p1, "xml"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 444
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/harmony/xml/ExpatParser;->append([BII)V

    #@5
    .line 443
    return-void
.end method

.method append([BII)V
    .locals 7
    .param p1, "xml"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 459
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@2
    move-object v1, p0

    #@3
    move-object v4, p1

    #@4
    move v5, p2

    #@5
    move v6, p3

    #@6
    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendBytes(J[BII)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 457
    return-void

    #@a
    .line 460
    :catch_0
    move-exception v0

    #@b
    .line 461
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    #@d
    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    #@13
    const/4 v4, 0x0

    #@14
    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    #@17
    throw v1
.end method

.method append([CII)V
    .locals 7
    .param p1, "xml"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 427
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@2
    move-object v1, p0

    #@3
    move-object v4, p1

    #@4
    move v5, p2

    #@5
    move v6, p3

    #@6
    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendChars(J[CII)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 425
    return-void

    #@a
    .line 428
    :catch_0
    move-exception v0

    #@b
    .line 429
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    #@d
    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    #@13
    const/4 v4, 0x0

    #@14
    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    #@17
    throw v1
.end method

.method cloneAttributes()Lorg/xml/sax/Attributes;
    .locals 8

    #@0
    .prologue
    .line 602
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 603
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Attributes can only be used within the scope of startElement()."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 606
    :cond_0
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    #@f
    if-nez v0, :cond_1

    #@11
    .line 607
    invoke-static {}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->-get0()Lorg/xml/sax/Attributes;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 611
    :cond_1
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    #@18
    iget v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    #@1a
    invoke-static {v0, v1, v2}, Lorg/apache/harmony/xml/ExpatParser;->cloneAttributes(JI)J

    #@1d
    move-result-wide v4

    #@1e
    .line 612
    .local v4, "clonePointer":J
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;

    #@20
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@22
    iget v6, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    #@24
    const/4 v7, 0x0

    #@25
    invoke-direct/range {v1 .. v7}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(JJILorg/apache/harmony/xml/ExpatParser$ClonedAttributes;)V

    #@28
    return-object v1
.end method

.method comment([CI)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@4
    .line 169
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_0

    #@6
    .line 170
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, p1, v1, p2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    #@a
    .line 167
    :cond_0
    return-void
.end method

.method endCdata()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@4
    .line 183
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_0

    #@6
    .line 184
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    #@9
    .line 181
    :cond_0
    return-void
.end method

.method endDtd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@4
    .line 213
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_0

    #@6
    .line 214
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    #@9
    .line 211
    :cond_0
    return-void
.end method

.method endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@4
    .line 155
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    #@6
    .line 156
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 153
    :cond_0
    return-void
.end method

.method endNamespace(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@4
    .line 198
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    #@6
    .line 199
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    #@9
    .line 196
    :cond_0
    return-void
.end method

.method protected declared-synchronized finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 551
    :try_start_0
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 552
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@b
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->release(J)V

    #@e
    .line 553
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 556
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@15
    monitor-exit p0

    #@16
    .line 549
    return-void

    #@17
    .line 555
    :catchall_0
    move-exception v0

    #@18
    .line 556
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@1b
    .line 555
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1c
    :catchall_1
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 543
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@2
    const-string/jumbo v1, ""

    #@5
    const/4 v4, 0x1

    #@6
    invoke-direct {p0, v2, v3, v1, v4}, Lorg/apache/harmony/xml/ExpatParser;->appendString(JLjava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 541
    return-void

    #@a
    .line 544
    :catch_0
    move-exception v0

    #@b
    .line 545
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    #@d
    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    #@13
    const/4 v4, 0x0

    #@14
    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    #@17
    throw v1
.end method

.method handleExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v12, v5, Lorg/apache/harmony/xml/ExpatReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    #@4
    .line 250
    .local v12, "entityResolver":Lorg/xml/sax/EntityResolver;
    if-nez v12, :cond_0

    #@6
    .line 251
    return-void

    #@7
    .line 266
    :cond_0
    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    #@9
    if-eqz v5, :cond_1

    #@b
    .line 268
    :try_start_0
    new-instance v14, Ljava/net/URI;

    #@d
    move-object/from16 v0, p3

    #@f
    invoke-direct {v14, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@12
    .line 269
    .local v14, "systemUri":Ljava/net/URI;
    invoke-virtual {v14}, Ljava/net/URI;->isAbsolute()Z

    #@15
    move-result v5

    #@16
    if-nez v5, :cond_1

    #@18
    invoke-virtual {v14}, Ljava/net/URI;->isOpaque()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_2

    #@1e
    .line 283
    .end local v14    # "systemUri":Ljava/net/URI;
    :cond_1
    :goto_0
    move-object/from16 v0, p2

    #@20
    move-object/from16 v1, p3

    #@22
    invoke-interface {v12, v0, v1}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    #@25
    move-result-object v13

    #@26
    .line 285
    .local v13, "inputSource":Lorg/xml/sax/InputSource;
    if-nez v13, :cond_3

    #@28
    .line 301
    return-void

    #@29
    .line 271
    .end local v13    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v14    # "systemUri":Ljava/net/URI;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/net/URI;

    #@2b
    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    #@2d
    invoke-direct {v2, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@30
    .line 272
    .local v2, "baseUri":Ljava/net/URI;
    invoke-virtual {v2, v14}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    #@33
    move-result-object v14

    #@34
    .line 275
    invoke-virtual {v14}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@37
    move-result-object p3

    #@38
    goto :goto_0

    #@39
    .line 277
    .end local v2    # "baseUri":Ljava/net/URI;
    .end local v14    # "systemUri":Ljava/net/URI;
    :catch_0
    move-exception v11

    #@3a
    .line 278
    .local v11, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v8, "Could not resolve \'"

    #@42
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    move-object/from16 v0, p3

    #@48
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    const-string/jumbo v8, "\' relative to"

    #@4f
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    .line 279
    const-string/jumbo v8, " \'"

    #@56
    .line 278
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    .line 279
    iget-object v8, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    #@5c
    .line 278
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    .line 279
    const-string/jumbo v8, "\' at "

    #@63
    .line 278
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    .line 279
    iget-object v8, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    #@69
    .line 278
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-static {v5, v11}, Ljava/lang/System;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@74
    goto :goto_0

    #@75
    .line 304
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v13    # "inputSource":Lorg/xml/sax/InputSource;
    :cond_3
    invoke-direct {p0, v13}, Lorg/apache/harmony/xml/ExpatParser;->pickEncoding(Lorg/xml/sax/InputSource;)Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    .line 305
    .local v4, "encoding":Ljava/lang/String;
    iget-wide v8, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    #@7b
    move-object/from16 v0, p1

    #@7d
    invoke-static {v8, v9, v0}, Lorg/apache/harmony/xml/ExpatParser;->createEntityParser(JLjava/lang/String;)J

    #@80
    move-result-wide v6

    #@81
    .line 307
    .local v6, "pointer":J
    :try_start_2
    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$EntityParser;

    #@83
    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@85
    .line 308
    invoke-virtual {v13}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    #@88
    move-result-object v8

    #@89
    .line 309
    invoke-virtual {v13}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    #@8c
    move-result-object v9

    #@8d
    .line 307
    const/4 v10, 0x0

    #@8e
    invoke-direct/range {v3 .. v10}, Lorg/apache/harmony/xml/ExpatParser$EntityParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser$EntityParser;)V

    #@91
    .line 311
    .local v3, "entityParser":Lorg/apache/harmony/xml/ExpatParser$EntityParser;
    invoke-direct {p0, v3, v13}, Lorg/apache/harmony/xml/ExpatParser;->parseExternalEntity(Lorg/apache/harmony/xml/ExpatParser;Lorg/xml/sax/InputSource;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@94
    .line 313
    invoke-static {v6, v7}, Lorg/apache/harmony/xml/ExpatParser;->releaseParser(J)V

    #@97
    .line 248
    return-void

    #@98
    .line 312
    .end local v3    # "entityParser":Lorg/apache/harmony/xml/ExpatParser$EntityParser;
    :catchall_0
    move-exception v5

    #@99
    .line 313
    invoke-static {v6, v7}, Lorg/apache/harmony/xml/ExpatParser;->releaseParser(J)V

    #@9c
    .line 312
    throw v5
.end method

.method notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    .line 227
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@4
    .line 228
    .local v0, "dtdHandler":Lorg/xml/sax/DTDHandler;
    if-eqz v0, :cond_0

    #@6
    .line 229
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 226
    :cond_0
    return-void
.end method

.method parseDocument(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->startDocument()V

    #@3
    .line 474
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    #@6
    .line 475
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser;->finish()V

    #@9
    .line 476
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->endDocument()V

    #@c
    .line 472
    return-void
.end method

.method parseDocument(Ljava/io/Reader;)V
    .locals 0
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 483
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->startDocument()V

    #@3
    .line 484
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/Reader;)V

    #@6
    .line 485
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser;->finish()V

    #@9
    .line 486
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->endDocument()V

    #@c
    .line 482
    return-void
.end method

.method processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 220
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@4
    .line 221
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    #@6
    .line 222
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 219
    :cond_0
    return-void
.end method

.method startCdata()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@4
    .line 176
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_0

    #@6
    .line 177
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    #@9
    .line 174
    :cond_0
    return-void
.end method

.method startDtd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    .line 205
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    #@4
    .line 206
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_0

    #@6
    .line 207
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 204
    :cond_0
    return-void
.end method

.method startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributePointer"    # J
    .param p6, "attributeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, -0x1

    #@4
    .line 133
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@6
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@8
    .line 134
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-nez v0, :cond_0

    #@a
    .line 135
    return-void

    #@b
    .line 139
    :cond_0
    const/4 v1, 0x1

    #@c
    :try_start_0
    iput-boolean v1, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    #@e
    .line 140
    iput-wide p4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    #@10
    .line 141
    iput p6, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    #@12
    .line 144
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    #@14
    .line 143
    invoke-interface {v0, p1, p2, p3, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 146
    iput-boolean v3, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    #@19
    .line 147
    iput v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    #@1b
    .line 148
    iput-wide v4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    #@1d
    .line 132
    return-void

    #@1e
    .line 145
    :catchall_0
    move-exception v1

    #@1f
    .line 146
    iput-boolean v3, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    #@21
    .line 147
    iput v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    #@23
    .line 148
    iput-wide v4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    #@25
    .line 145
    throw v1
.end method

.method startNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@4
    .line 191
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    #@6
    .line 192
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 189
    :cond_0
    return-void
.end method

.method text([CI)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    #@4
    .line 162
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    #@6
    .line 163
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, p1, v1, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@a
    .line 160
    :cond_0
    return-void
.end method

.method unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    #@2
    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    #@4
    .line 235
    .local v0, "dtdHandler":Lorg/xml/sax/DTDHandler;
    if-eqz v0, :cond_0

    #@6
    .line 236
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 233
    :cond_0
    return-void
.end method
