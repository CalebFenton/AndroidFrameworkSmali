.class public final Lcom/android/okhttp/internal/spdy/Http2;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/Variant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/spdy/Http2$Reader;,
        Lcom/android/okhttp/internal/spdy/Http2$Writer;,
        Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;,
        Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;
    }
.end annotation


# static fields
.field private static final CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;

.field static final FLAG_ACK:B = 0x1t

.field static final FLAG_COMPRESSED:B = 0x20t

.field static final FLAG_END_HEADERS:B = 0x4t

.field static final FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final FLAG_END_STREAM:B = 0x1t

.field static final FLAG_NONE:B = 0x0t

.field static final FLAG_PADDED:B = 0x8t

.field static final FLAG_PRIORITY:B = 0x20t

.field static final INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field static final TYPE_CONTINUATION:B = 0x9t

.field static final TYPE_DATA:B = 0x0t

.field static final TYPE_GOAWAY:B = 0x7t

.field static final TYPE_HEADERS:B = 0x1t

.field static final TYPE_PING:B = 0x6t

.field static final TYPE_PRIORITY:B = 0x2t

.field static final TYPE_PUSH_PROMISE:B = 0x5t

.field static final TYPE_RST_STREAM:B = 0x3t

.field static final TYPE_SETTINGS:B = 0x4t

.field static final TYPE_WINDOW_UPDATE:B = 0x8t

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static synthetic -get0()Lcom/android/okhttp/okio/ByteString;
    .locals 1

    #@0
    sget-object v0, Lcom/android/okhttp/internal/spdy/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/util/logging/Logger;
    .locals 1

    #@0
    sget-object v0, Lcom/android/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(IBS)I
    .locals 1
    .param p0, "length"    # I
    .param p1, "flags"    # B
    .param p2, "padding"    # S

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internal/spdy/Http2;->lengthWithoutPadding(IBS)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/okhttp/okio/BufferedSource;)I
    .locals 1
    .param p0, "source"    # Lcom/android/okhttp/okio/BufferedSource;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/okhttp/internal/spdy/Http2;->readMedium(Lcom/android/okhttp/okio/BufferedSource;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/spdy/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/okhttp/okio/BufferedSink;I)V
    .locals 0
    .param p0, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p1, "i"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/spdy/Http2;->writeMedium(Lcom/android/okhttp/okio/BufferedSink;I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 43
    const-class v0, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/android/okhttp/internal/spdy/Http2;->logger:Ljava/util/logging/Logger;

    #@c
    .line 50
    const-string/jumbo v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    #@f
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@12
    move-result-object v0

    #@13
    .line 49
    sput-object v0, Lcom/android/okhttp/internal/spdy/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;

    #@15
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    new-instance v0, Ljava/io/IOException;

    #@2
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0
.end method

.method private static lengthWithoutPadding(IBS)I
    .locals 4
    .param p0, "length"    # I
    .param p1, "flags"    # B
    .param p2, "padding"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 645
    and-int/lit8 v0, p1, 0x8

    #@3
    if-eqz v0, :cond_0

    #@5
    add-int/lit8 p0, p0, -0x1

    #@7
    .line 646
    :cond_0
    if-le p2, p0, :cond_1

    #@9
    .line 647
    const-string/jumbo v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    #@c
    const/4 v1, 0x2

    #@d
    new-array v1, v1, [Ljava/lang/Object;

    #@f
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v1, v3

    #@15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v2

    #@19
    const/4 v3, 0x1

    #@1a
    aput-object v2, v1, v3

    #@1c
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/spdy/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@1f
    move-result-object v0

    #@20
    throw v0

    #@21
    .line 649
    :cond_1
    sub-int v0, p0, p2

    #@23
    int-to-short v0, v0

    #@24
    return v0
.end method

.method private static readMedium(Lcom/android/okhttp/okio/BufferedSource;)I
    .locals 2
    .param p0, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 763
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    #@3
    move-result v0

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    shl-int/lit8 v0, v0, 0x10

    #@8
    .line 764
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    #@b
    move-result v1

    #@c
    and-int/lit16 v1, v1, 0xff

    #@e
    shl-int/lit8 v1, v1, 0x8

    #@10
    .line 763
    or-int/2addr v0, v1

    #@11
    .line 765
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    #@14
    move-result v1

    #@15
    and-int/lit16 v1, v1, 0xff

    #@17
    .line 763
    or-int/2addr v0, v1

    #@18
    return v0
.end method

.method private static writeMedium(Lcom/android/okhttp/okio/BufferedSink;I)V
    .locals 1
    .param p0, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 769
    ushr-int/lit8 v0, p1, 0x10

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    invoke-interface {p0, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@7
    .line 770
    ushr-int/lit8 v0, p1, 0x8

    #@9
    and-int/lit16 v0, v0, 0xff

    #@b
    invoke-interface {p0, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@e
    .line 771
    and-int/lit16 v0, p1, 0xff

    #@10
    invoke-interface {p0, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@13
    .line 768
    return-void
.end method


# virtual methods
.method public getProtocol()Lcom/android/okhttp/Protocol;
    .locals 1

    #@0
    .prologue
    .line 46
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@2
    return-object v0
.end method

.method public newReader(Lcom/android/okhttp/okio/BufferedSource;Z)Lcom/android/okhttp/internal/spdy/FrameReader;
    .locals 2
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "client"    # Z

    #@0
    .prologue
    .line 80
    new-instance v0, Lcom/android/okhttp/internal/spdy/Http2$Reader;

    #@2
    const/16 v1, 0x1000

    #@4
    invoke-direct {v0, p1, v1, p2}, Lcom/android/okhttp/internal/spdy/Http2$Reader;-><init>(Lcom/android/okhttp/okio/BufferedSource;IZ)V

    #@7
    return-object v0
.end method

.method public newWriter(Lcom/android/okhttp/okio/BufferedSink;Z)Lcom/android/okhttp/internal/spdy/FrameWriter;
    .locals 1
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "client"    # Z

    #@0
    .prologue
    .line 84
    new-instance v0, Lcom/android/okhttp/internal/spdy/Http2$Writer;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/okhttp/internal/spdy/Http2$Writer;-><init>(Lcom/android/okhttp/okio/BufferedSink;Z)V

    #@5
    return-object v0
.end method
