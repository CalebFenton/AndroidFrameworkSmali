.class public final Lcom/android/okhttp/internal/spdy/Spdy3;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/Variant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/spdy/Spdy3$Reader;,
        Lcom/android/okhttp/internal/spdy/Spdy3$Writer;
    }
.end annotation


# static fields
.field static final DICTIONARY:[B

.field static final FLAG_FIN:I = 0x1

.field static final FLAG_UNIDIRECTIONAL:I = 0x2

.field static final TYPE_DATA:I = 0x0

.field static final TYPE_GOAWAY:I = 0x7

.field static final TYPE_HEADERS:I = 0x8

.field static final TYPE_PING:I = 0x6

.field static final TYPE_RST_STREAM:I = 0x3

.field static final TYPE_SETTINGS:I = 0x4

.field static final TYPE_SYN_REPLY:I = 0x2

.field static final TYPE_SYN_STREAM:I = 0x1

.field static final TYPE_WINDOW_UPDATE:I = 0x9

.field static final VERSION:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 60
    :try_start_0
    const-string/jumbo v1, "\u0000\u0000\u0000\u0007options\u0000\u0000\u0000\u0004head\u0000\u0000\u0000\u0004post\u0000\u0000\u0000\u0003put\u0000\u0000\u0000\u0006delete\u0000\u0000\u0000\u0005trace\u0000\u0000\u0000\u0006accept\u0000\u0000\u0000\u000eaccept-charset\u0000\u0000\u0000\u000faccept-encoding\u0000\u0000\u0000\u000faccept-language\u0000\u0000\u0000\raccept-ranges\u0000\u0000\u0000\u0003age\u0000\u0000\u0000\u0005allow\u0000\u0000\u0000\rauthorization\u0000\u0000\u0000\rcache-control\u0000\u0000\u0000\nconnection\u0000\u0000\u0000\u000ccontent-base\u0000\u0000\u0000\u0010content-encoding\u0000\u0000\u0000\u0010content-language\u0000\u0000\u0000\u000econtent-length\u0000\u0000\u0000\u0010content-location\u0000\u0000\u0000\u000bcontent-md5\u0000\u0000\u0000\rcontent-range\u0000\u0000\u0000\u000ccontent-type\u0000\u0000\u0000\u0004date\u0000\u0000\u0000\u0004etag\u0000\u0000\u0000\u0006expect\u0000\u0000\u0000\u0007expires\u0000\u0000\u0000\u0004from\u0000\u0000\u0000\u0004host\u0000\u0000\u0000\u0008if-match\u0000\u0000\u0000\u0011if-modified-since\u0000\u0000\u0000\rif-none-match\u0000\u0000\u0000\u0008if-range\u0000\u0000\u0000\u0013if-unmodified-since\u0000\u0000\u0000\rlast-modified\u0000\u0000\u0000\u0008location\u0000\u0000\u0000\u000cmax-forwards\u0000\u0000\u0000\u0006pragma\u0000\u0000\u0000\u0012proxy-authenticate\u0000\u0000\u0000\u0013proxy-authorization\u0000\u0000\u0000\u0005range\u0000\u0000\u0000\u0007referer\u0000\u0000\u0000\u000bretry-after\u0000\u0000\u0000\u0006server\u0000\u0000\u0000\u0002te\u0000\u0000\u0000\u0007trailer\u0000\u0000\u0000\u0011transfer-encoding\u0000\u0000\u0000\u0007upgrade\u0000\u0000\u0000\nuser-agent\u0000\u0000\u0000\u0004vary\u0000\u0000\u0000\u0003via\u0000\u0000\u0000\u0007warning\u0000\u0000\u0000\u0010www-authenticate\u0000\u0000\u0000\u0006method\u0000\u0000\u0000\u0003get\u0000\u0000\u0000\u0006status\u0000\u0000\u0000\u0006200 OK\u0000\u0000\u0000\u0007version\u0000\u0000\u0000\u0008HTTP/1.1\u0000\u0000\u0000\u0003url\u0000\u0000\u0000\u0006public\u0000\u0000\u0000\nset-cookie\u0000\u0000\u0000\nkeep-alive\u0000\u0000\u0000\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0."

    #@3
    .line 92
    sget-object v2, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@5
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@c
    move-result-object v1

    #@d
    sput-object v1, Lcom/android/okhttp/internal/spdy/Spdy3;->DICTIONARY:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 36
    return-void

    #@10
    .line 93
    :catch_0
    move-exception v0

    #@11
    .line 94
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getProtocol()Lcom/android/okhttp/Protocol;
    .locals 1

    #@0
    .prologue
    .line 39
    sget-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    #@2
    return-object v0
.end method

.method public newReader(Lcom/android/okhttp/okio/BufferedSource;Z)Lcom/android/okhttp/internal/spdy/FrameReader;
    .locals 1
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "client"    # Z

    #@0
    .prologue
    .line 99
    new-instance v0, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/okhttp/internal/spdy/Spdy3$Reader;-><init>(Lcom/android/okhttp/okio/BufferedSource;Z)V

    #@5
    return-object v0
.end method

.method public newWriter(Lcom/android/okhttp/okio/BufferedSink;Z)Lcom/android/okhttp/internal/spdy/FrameWriter;
    .locals 1
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "client"    # Z

    #@0
    .prologue
    .line 103
    new-instance v0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;-><init>(Lcom/android/okhttp/okio/BufferedSink;Z)V

    #@5
    return-object v0
.end method
