.class public Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;
.super Ljava/lang/Object;
.source "NetscapeDraftHeaderParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

.field private static final DELIMITERS:[C


# instance fields
.field private final nvpParser:Lorg/apache/http/message/BasicHeaderValueParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 53
    new-instance v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    #@2
    invoke-direct {v0}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;-><init>()V

    #@5
    sput-object v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    #@7
    .line 55
    const/4 v0, 0x1

    #@8
    new-array v0, v0, [C

    #@a
    const/16 v1, 0x3b

    #@c
    const/4 v2, 0x0

    #@d
    aput-char v1, v0, v2

    #@f
    sput-object v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DELIMITERS:[C

    #@11
    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    #@5
    iput-object v0, p0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->nvpParser:Lorg/apache/http/message/BasicHeaderValueParser;

    #@7
    .line 59
    return-void
.end method


# virtual methods
.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;
    .locals 7
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "cursor"    # Lorg/apache/http/message/ParserCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    if-nez p1, :cond_0

    #@2
    .line 68
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "Char array buffer may not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 70
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 71
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v4, "Parser cursor may not be null"

    #@12
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 73
    :cond_1
    iget-object v3, p0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->nvpParser:Lorg/apache/http/message/BasicHeaderValueParser;

    #@18
    sget-object v4, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DELIMITERS:[C

    #@1a
    invoke-virtual {v3, p1, p2, v4}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;

    #@1d
    move-result-object v0

    #@1e
    .line 74
    .local v0, "nvp":Lorg/apache/http/NameValuePair;
    new-instance v2, Ljava/util/ArrayList;

    #@20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 75
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_2

    #@29
    .line 76
    iget-object v3, p0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->nvpParser:Lorg/apache/http/message/BasicHeaderValueParser;

    #@2b
    sget-object v4, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DELIMITERS:[C

    #@2d
    invoke-virtual {v3, p1, p2, v4}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;

    #@30
    move-result-object v1

    #@31
    .line 77
    .local v1, "param":Lorg/apache/http/NameValuePair;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@34
    goto :goto_0

    #@35
    .line 79
    .end local v1    # "param":Lorg/apache/http/NameValuePair;
    :cond_2
    new-instance v4, Lorg/apache/http/message/BasicHeaderElement;

    #@37
    .line 80
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    .line 81
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@42
    move-result v3

    #@43
    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    #@45
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@48
    move-result-object v3

    #@49
    check-cast v3, [Lorg/apache/http/NameValuePair;

    #@4b
    .line 79
    invoke-direct {v4, v5, v6, v3}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    #@4e
    return-object v4
.end method
