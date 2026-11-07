.class Lorg/apache/harmony/xml/ExpatParser;
.super Ljava/lang/Object;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;,
        Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;,
        Lorg/apache/harmony/xml/ExpatParser$EntityParser;,
        Lorg/apache/harmony/xml/ExpatParser$ParseException;,
        Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;
    }
.end annotation


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x1fa0

.field static final blacklist CHARACTER_ENCODING:Ljava/lang/String; = "UTF-16"

.field private static final blacklist DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final blacklist OUTSIDE_START_ELEMENT:Ljava/lang/String; = "Attributes can only be used within the scope of startElement()."

.field private static final blacklist TIMEOUT:I = 0x4e20


# instance fields
.field private blacklist attributeCount:I

.field private blacklist attributePointer:J

.field private final greylist attributes:Lorg/apache/harmony/xml/ExpatAttributes;

.field private final blacklist encoding:Ljava/lang/String;

.field private blacklist inStartElement:Z

.field private final blacklist locator:Lorg/xml/sax/Locator;

.field private blacklist pointer:J
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final blacklist publicId:Ljava/lang/String;

.field private final blacklist systemId:Ljava/lang/String;

.field private final greylist xmlReader:Lorg/apache/harmony/xml/ExpatReader;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetattributeCount(Lorg/apache/harmony/xml/ExpatParser;)I
    .registers 1

    iget p0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetattributePointer(Lorg/apache/harmony/xml/ExpatParser;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetinStartElement(Lorg/apache/harmony/xml/ExpatParser;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpointer(Lorg/apache/harmony/xml/ExpatParser;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpublicId(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsystemId(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcolumn(Lorg/apache/harmony/xml/ExpatParser;)I
    .registers 1

    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->column()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mline(Lorg/apache/harmony/xml/ExpatParser;)I
    .registers 1

    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->line()I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 590
    const-string v0, ""

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->staticInitialize(Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "xmlReader"    # Lorg/apache/harmony/xml/ExpatReader;
    .param p3, "pointer"    # J
    .param p5, "publicId"    # Ljava/lang/String;
    .param p6, "systemId"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    .line 61
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser-IA;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    .line 71
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser-IA;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    .line 116
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    .line 118
    iput-wide p3, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    .line 119
    iput-object p6, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    .line 120
    iput-object p5, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    .line 121
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor greylist <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "xmlReader"    # Lorg/apache/harmony/xml/ExpatReader;
    .param p3, "processNamespaces"    # Z
    .param p4, "publicId"    # Ljava/lang/String;
    .param p5, "systemId"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    .line 61
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser-IA;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    .line 71
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser-IA;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    .line 92
    iput-object p4, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    .line 104
    if-nez p1, :cond_27

    const-string v0, "UTF-8"

    goto :goto_28

    :cond_27
    move-object v0, p1

    :goto_28
    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lorg/apache/harmony/xml/ExpatParser;->initialize(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    .line 109
    return-void
.end method

.method private native blacklist appendBytes(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private native blacklist appendChars(J[CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private native blacklist appendString(JLjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private static native blacklist cloneAttributes(JI)J
.end method

.method private blacklist column()I
    .registers 3

    .line 606
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    invoke-static {v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->column(J)I

    move-result v0

    return v0
.end method

.method private static native blacklist column(J)I
.end method

.method private static native blacklist createEntityParser(JLjava/lang/String;)J
.end method

.method private blacklist endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 544
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 545
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 547
    :cond_9
    return-void
.end method

.method private native blacklist initialize(Ljava/lang/String;Z)J
.end method

.method private blacklist line()I
    .registers 3

    .line 597
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    invoke-static {v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->line(J)I

    move-result v0

    return v0
.end method

.method private static native blacklist line(J)I
.end method

.method static blacklist openUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 766
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 767
    .local v0, "urlConnection":Ljava/net/URLConnection;
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 768
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 769
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 770
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 771
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v1

    .line 772
    .end local v0    # "urlConnection":Ljava/net/URLConnection;
    :catch_1e
    move-exception v0

    .line 773
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 774
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 775
    throw v1
.end method

.method private blacklist parseExternalEntity(Lorg/apache/harmony/xml/ExpatParser;Lorg/xml/sax/InputSource;)V
    .registers 10
    .param p1, "entityParser"    # Lorg/apache/harmony/xml/ExpatParser;
    .param p2, "inputSource"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 352
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    .line 353
    .local v0, "reader":Ljava/io/Reader;
    const-string v1, "</externalEntity>"

    const-string v2, "<externalEntity>"

    if-eqz v0, :cond_1d

    .line 355
    :try_start_a
    invoke-virtual {p1, v2}, Lorg/apache/harmony/xml/ExpatParser;->append(Ljava/lang/String;)V

    .line 356
    invoke-direct {p1, v0}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/Reader;)V

    .line 357
    invoke-virtual {p1, v1}, Lorg/apache/harmony/xml/ExpatParser;->append(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_18

    .line 359
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 360
    nop

    .line 361
    return-void

    .line 359
    :catchall_18
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 360
    throw v1

    .line 365
    :cond_1d
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    .line 366
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_42

    .line 368
    :try_start_23
    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    .line 369
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 368
    invoke-virtual {p1, v2}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V

    .line 370
    invoke-direct {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    .line 371
    iget-object v2, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 371
    invoke-virtual {p1, v1}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_3d

    .line 374
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 375
    nop

    .line 376
    return-void

    .line 374
    :catchall_3d
    move-exception v1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 375
    throw v1

    .line 380
    :cond_42
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "systemId":Ljava/lang/String;
    if-eqz v4, :cond_6b

    .line 387
    invoke-static {v4}, Lorg/apache/harmony/xml/ExpatParser;->openUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 389
    :try_start_4c
    iget-object v5, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    .line 390
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 389
    invoke-virtual {p1, v2}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V

    .line 391
    invoke-direct {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    .line 392
    iget-object v2, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    .line 393
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 392
    invoke-virtual {p1, v1}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_66

    .line 395
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 396
    nop

    .line 397
    return-void

    .line 395
    :catchall_66
    move-exception v1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 396
    throw v1

    .line 383
    :cond_6b
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v5, 0x0

    const-string v6, "No input specified."

    invoke-direct {v1, v6, v2, v5}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser-IA;)V

    throw v1
.end method

.method private blacklist parseFragment(Ljava/io/InputStream;)V
    .registers 10
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 522
    const/16 v0, 0x1fa0

    new-array v4, v0, [B

    .line 524
    .local v4, "buffer":[B
    :goto_4
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v0, v6

    .local v6, "length":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 526
    :try_start_c
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J
    :try_end_e
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_c .. :try_end_e} :catch_16

    const/4 v5, 0x0

    move-object v1, p0

    :try_start_10
    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendBytes(J[BII)V
    :try_end_13
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_10 .. :try_end_13} :catch_14

    .line 529
    goto :goto_4

    .line 527
    :catch_14
    move-exception v0

    goto :goto_18

    :catch_16
    move-exception v0

    move-object v1, p0

    .line 528
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    :goto_18
    new-instance v2, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v5, v7}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser-IA;)V

    throw v2

    .line 531
    .end local v0    # "e":Lorg/apache/harmony/xml/ExpatException;
    :cond_25
    move-object v1, p0

    return-void
.end method

.method private blacklist parseFragment(Ljava/io/Reader;)V
    .registers 10
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 506
    const/16 v0, 0xfd0

    new-array v4, v0, [C

    .line 508
    .local v4, "buffer":[C
    :goto_4
    invoke-virtual {p1, v4}, Ljava/io/Reader;->read([C)I

    move-result v6

    move v0, v6

    .local v6, "length":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 510
    :try_start_c
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J
    :try_end_e
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_c .. :try_end_e} :catch_16

    const/4 v5, 0x0

    move-object v1, p0

    :try_start_10
    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendChars(J[CII)V
    :try_end_13
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_10 .. :try_end_13} :catch_14

    .line 513
    goto :goto_4

    .line 511
    :catch_14
    move-exception v0

    goto :goto_18

    :catch_16
    move-exception v0

    move-object v1, p0

    .line 512
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    :goto_18
    new-instance v2, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v5, v7}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser-IA;)V

    throw v2

    .line 515
    .end local v0    # "e":Lorg/apache/harmony/xml/ExpatException;
    :cond_25
    move-object v1, p0

    return-void
.end method

.method private blacklist pickEncoding(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .registers 5
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;

    .line 332
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    .line 333
    .local v0, "reader":Ljava/io/Reader;
    if-eqz v0, :cond_9

    .line 334
    const-string v1, "UTF-16"

    return-object v1

    .line 337
    :cond_9
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "encoding":Ljava/lang/String;
    if-nez v1, :cond_12

    const-string v2, "UTF-8"

    goto :goto_13

    :cond_12
    move-object v2, v1

    :goto_13
    return-object v2
.end method

.method private native blacklist release(J)V
.end method

.method private static native blacklist releaseParser(J)V
.end method

.method private blacklist startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 535
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_e

    .line 536
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 537
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 539
    :cond_e
    return-void
.end method

.method private static native blacklist staticInitialize(Ljava/lang/String;)V
.end method


# virtual methods
.method blacklist append(Ljava/lang/String;)V
    .registers 7
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 417
    :try_start_0
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/apache/harmony/xml/ExpatParser;->appendString(JLjava/lang/String;Z)V
    :try_end_6
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_6} :catch_8

    .line 420
    nop

    .line 421
    return-void

    .line 418
    :catch_8
    move-exception v0

    .line 419
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser-IA;)V

    throw v1
.end method

.method blacklist append([B)V
    .registers 4
    .param p1, "xml"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 456
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->append([BII)V

    .line 457
    return-void
.end method

.method greylist append([BII)V
    .registers 11
    .param p1, "xml"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 472
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J
    :try_end_2
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_2} :catch_e

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "xml":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v4, "xml":[B
    .local v5, "offset":I
    .local v6, "length":I
    :try_start_6
    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendBytes(J[BII)V
    :try_end_9
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_6 .. :try_end_9} :catch_b

    .line 475
    nop

    .line 476
    return-void

    .line 473
    :catch_b
    move-exception v0

    move-object p1, v0

    goto :goto_14

    .end local v4    # "xml":[B
    .end local v5    # "offset":I
    .end local v6    # "length":I
    .restart local p1    # "xml":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catch_e
    move-exception v0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object p1, v0

    .line 474
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .restart local v4    # "xml":[B
    .restart local v5    # "offset":I
    .restart local v6    # "length":I
    .local p1, "e":Lorg/apache/harmony/xml/ExpatException;
    :goto_14
    new-instance p2, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {p1}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object p3

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v2, 0x0

    invoke-direct {p2, p3, v0, v2}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser-IA;)V

    throw p2
.end method

.method greylist append([CII)V
    .registers 11
    .param p1, "xml"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 439
    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J
    :try_end_2
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_2} :catch_e

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "xml":[C
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v4, "xml":[C
    .local v5, "offset":I
    .local v6, "length":I
    :try_start_6
    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendChars(J[CII)V
    :try_end_9
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_6 .. :try_end_9} :catch_b

    .line 442
    nop

    .line 443
    return-void

    .line 440
    :catch_b
    move-exception v0

    move-object p1, v0

    goto :goto_14

    .end local v4    # "xml":[C
    .end local v5    # "offset":I
    .end local v6    # "length":I
    .restart local p1    # "xml":[C
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catch_e
    move-exception v0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object p1, v0

    .line 441
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .restart local v4    # "xml":[C
    .restart local v5    # "offset":I
    .restart local v6    # "length":I
    .local p1, "e":Lorg/apache/harmony/xml/ExpatException;
    :goto_14
    new-instance p2, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {p1}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object p3

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v2, 0x0

    invoke-direct {p2, p3, v0, v2}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser-IA;)V

    throw p2
.end method

.method greylist cloneAttributes()Lorg/xml/sax/Attributes;
    .registers 11

    .line 617
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    if-eqz v0, :cond_20

    .line 621
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    if-nez v0, :cond_d

    .line 622
    invoke-static {}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->-$$Nest$sfgetEMPTY()Lorg/xml/sax/Attributes;

    move-result-object v0

    return-object v0

    .line 625
    :cond_d
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    iget v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 626
    invoke-static {v0, v1, v2}, Lorg/apache/harmony/xml/ExpatParser;->cloneAttributes(JI)J

    move-result-wide v6

    .line 627
    .local v6, "clonePointer":J
    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;

    iget-wide v4, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    iget v8, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(JJILorg/apache/harmony/xml/ExpatParser-IA;)V

    return-object v3

    .line 618
    .end local v6    # "clonePointer":J
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attributes can only be used within the scope of startElement()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist comment([CI)V
    .registers 5
    .param p1, "text"    # [C
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 180
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_a

    .line 181
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 183
    :cond_a
    return-void
.end method

.method blacklist endCdata()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 194
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_9

    .line 195
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 197
    :cond_9
    return-void
.end method

.method blacklist endDtd()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 224
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_9

    .line 225
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 227
    :cond_9
    return-void
.end method

.method blacklist endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 166
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 167
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_9
    return-void
.end method

.method blacklist endNamespace(Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 209
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 210
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 212
    :cond_9
    return-void
.end method

.method protected declared-synchronized whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 565
    :try_start_1
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 566
    :try_start_9
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->release(J)V

    .line 567
    iput-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_13

    .line 570
    :catchall_11
    move-exception v0

    goto :goto_1a

    :cond_13
    :goto_13
    :try_start_13
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1e

    .line 571
    nop

    .line 572
    monitor-exit p0

    return-void

    .line 570
    .end local p0    # "this":Lorg/apache/harmony/xml/ExpatParser;
    :catchall_19
    move-exception v0

    :goto_1a
    :try_start_1a
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 571
    throw v0

    .line 564
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw v0
.end method

.method greylist finish()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 557
    :try_start_0
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/harmony/xml/ExpatParser;->appendString(JLjava/lang/String;Z)V
    :try_end_8
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_8} :catch_a

    .line 560
    nop

    .line 561
    return-void

    .line 558
    :catch_a
    move-exception v0

    .line 559
    .local v0, "e":Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser-IA;)V

    throw v1
.end method

.method blacklist handleExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v1, v0, Lorg/apache/harmony/xml/ExpatReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 261
    .local v1, "entityResolver":Lorg/xml/sax/EntityResolver;
    if-nez v1, :cond_7

    .line 262
    return-void

    .line 277
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 279
    :try_start_b
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "systemUri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v0}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 282
    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 283
    .local v2, "baseUri":Ljava/net/URI;
    invoke-virtual {v2, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v3

    .line 286
    .end local v0    # "systemUri":Ljava/net/URI;
    .local v3, "systemUri":Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2b} :catch_2d

    move-object p3, v0

    .line 291
    .end local v2    # "baseUri":Ljava/net/URI;
    .end local v3    # "systemUri":Ljava/net/URI;
    :cond_2c
    goto :goto_5c

    .line 288
    :catch_2d
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' relative to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/System;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5c
    :goto_5c
    invoke-interface {v1, p2, p3}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v2

    .line 296
    .local v2, "inputSource":Lorg/xml/sax/InputSource;
    if-nez v2, :cond_63

    .line 312
    return-void

    .line 315
    :cond_63
    invoke-direct {p0, v2}, Lorg/apache/harmony/xml/ExpatParser;->pickEncoding(Lorg/xml/sax/InputSource;)Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "encoding":Ljava/lang/String;
    iget-wide v5, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    invoke-static {v5, v6, p1}, Lorg/apache/harmony/xml/ExpatParser;->createEntityParser(JLjava/lang/String;)J

    move-result-wide v6

    .line 318
    .local v6, "pointer":J
    :try_start_6d
    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$EntityParser;

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    .line 319
    invoke-virtual {v2}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v8

    .line 320
    invoke-virtual {v2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/apache/harmony/xml/ExpatParser$EntityParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser-IA;)V

    .line 322
    .local v3, "entityParser":Lorg/apache/harmony/xml/ExpatParser$EntityParser;
    invoke-direct {p0, v3, v2}, Lorg/apache/harmony/xml/ExpatParser;->parseExternalEntity(Lorg/apache/harmony/xml/ExpatParser;Lorg/xml/sax/InputSource;)V
    :try_end_80
    .catchall {:try_start_6d .. :try_end_80} :catchall_85

    .line 324
    .end local v3    # "entityParser":Lorg/apache/harmony/xml/ExpatParser$EntityParser;
    invoke-static {v6, v7}, Lorg/apache/harmony/xml/ExpatParser;->releaseParser(J)V

    .line 325
    nop

    .line 326
    return-void

    .line 324
    :catchall_85
    move-exception v0

    invoke-static {v6, v7}, Lorg/apache/harmony/xml/ExpatParser;->releaseParser(J)V

    .line 325
    throw v0
.end method

.method blacklist notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 239
    .local v0, "dtdHandler":Lorg/xml/sax/DTDHandler;
    if-eqz v0, :cond_9

    .line 240
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_9
    return-void
.end method

.method blacklist parseDocument(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 486
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->startDocument()V

    .line 487
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    .line 488
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser;->finish()V

    .line 489
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->endDocument()V

    .line 490
    return-void
.end method

.method blacklist parseDocument(Ljava/io/Reader;)V
    .registers 2
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 496
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->startDocument()V

    .line 497
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/Reader;)V

    .line 498
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser;->finish()V

    .line 499
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->endDocument()V

    .line 500
    return-void
.end method

.method blacklist processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 232
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 233
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_9
    return-void
.end method

.method blacklist startCdata()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 187
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_9

    .line 188
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 190
    :cond_9
    return-void
.end method

.method blacklist startDtd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 217
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_9

    .line 218
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_9
    return-void
.end method

.method blacklist startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 13
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

    .line 144
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 145
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-nez v0, :cond_7

    .line 146
    return-void

    .line 150
    :cond_7
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    :try_start_c
    iput-boolean v1, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 151
    iput-wide p4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    .line 152
    iput p6, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 154
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1f

    .line 157
    iput-boolean v5, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 158
    iput v4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 159
    iput-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    .line 160
    nop

    .line 161
    return-void

    .line 157
    :catchall_1f
    move-exception v1

    iput-boolean v5, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 158
    iput v4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 159
    iput-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    .line 160
    throw v1
.end method

.method blacklist startNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 202
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 203
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_9
    return-void
.end method

.method blacklist text([CI)V
    .registers 5
    .param p1, "text"    # [C
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 173
    .local v0, "contentHandler":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_a

    .line 174
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 176
    :cond_a
    return-void
.end method

.method blacklist unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v0, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 246
    .local v0, "dtdHandler":Lorg/xml/sax/DTDHandler;
    if-eqz v0, :cond_9

    .line 247
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_9
    return-void
.end method
