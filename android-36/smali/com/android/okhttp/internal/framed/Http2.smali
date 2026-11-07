.class public final Lcom/android/okhttp/internal/framed/Http2;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/Variant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/Http2$Reader;,
        Lcom/android/okhttp/internal/framed/Http2$Writer;,
        Lcom/android/okhttp/internal/framed/Http2$FrameLogger;,
        Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;
    }
.end annotation


# static fields
.field private static final blacklist CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;

.field static final blacklist FLAG_ACK:B = 0x1t

.field static final blacklist FLAG_COMPRESSED:B = 0x20t

.field static final blacklist FLAG_END_HEADERS:B = 0x4t

.field static final blacklist FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final blacklist FLAG_END_STREAM:B = 0x1t

.field static final blacklist FLAG_NONE:B = 0x0t

.field static final blacklist FLAG_PADDED:B = 0x8t

.field static final blacklist FLAG_PRIORITY:B = 0x20t

.field static final blacklist INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field static final blacklist TYPE_CONTINUATION:B = 0x9t

.field static final blacklist TYPE_DATA:B = 0x0t

.field static final blacklist TYPE_GOAWAY:B = 0x7t

.field static final blacklist TYPE_HEADERS:B = 0x1t

.field static final blacklist TYPE_PING:B = 0x6t

.field static final blacklist TYPE_PRIORITY:B = 0x2t

.field static final blacklist TYPE_PUSH_PROMISE:B = 0x5t

.field static final blacklist TYPE_RST_STREAM:B = 0x3t

.field static final blacklist TYPE_SETTINGS:B = 0x4t

.field static final blacklist TYPE_WINDOW_UPDATE:B = 0x8t

.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;

    .line 51
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 52
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()Lcom/android/okhttp/okio/ByteString;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;

    return-object v0
.end method

.method static synthetic blacklist access$100()Ljava/util/logging/Logger;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/okio/BufferedSource;)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/Http2;->readMedium(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$400(IBS)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internal/framed/Http2;->lengthWithoutPadding(IBS)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/okio/BufferedSink;I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->writeMedium(Lcom/android/okhttp/okio/BufferedSink;I)V

    return-void
.end method

.method private static varargs blacklist illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 3

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs blacklist ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 586
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist lengthWithoutPadding(IBS)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    add-int/lit8 p0, p0, -0x1

    :cond_6
    if-gt p2, p0, :cond_b

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    .line 647
    :cond_b
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist readMedium(Lcom/android/okhttp/okio/BufferedSource;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 764
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 765
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static blacklist writeMedium(Lcom/android/okhttp/okio/BufferedSink;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 769
    invoke-interface {p0, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 770
    invoke-interface {p0, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 p1, p1, 0xff

    .line 771
    invoke-interface {p0, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    return-void
.end method


# virtual methods
.method public blacklist getProtocol()Lcom/android/okhttp/Protocol;
    .registers 1

    .line 48
    sget-object p0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    return-object p0
.end method

.method public blacklist newReader(Lcom/android/okhttp/okio/BufferedSource;Z)Lcom/android/okhttp/internal/framed/FrameReader;
    .registers 4

    .line 82
    new-instance p0, Lcom/android/okhttp/internal/framed/Http2$Reader;

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0, p2}, Lcom/android/okhttp/internal/framed/Http2$Reader;-><init>(Lcom/android/okhttp/okio/BufferedSource;IZ)V

    return-object p0
.end method

.method public blacklist newWriter(Lcom/android/okhttp/okio/BufferedSink;Z)Lcom/android/okhttp/internal/framed/FrameWriter;
    .registers 3

    .line 86
    new-instance p0, Lcom/android/okhttp/internal/framed/Http2$Writer;

    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/Http2$Writer;-><init>(Lcom/android/okhttp/okio/BufferedSink;Z)V

    return-object p0
.end method
