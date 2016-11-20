.class Ljava/lang/StringCoding$StringEncoder;
.super Ljava/lang/Object;
.source "StringCoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringCoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringEncoder"
.end annotation


# instance fields
.field private ce:Ljava/nio/charset/CharsetEncoder;

.field private cs:Ljava/nio/charset/Charset;

.field private final isTrusted:Z

.field private final requestedCharsetName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "rcn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 292
    iput-object p2, p0, Ljava/lang/StringCoding$StringEncoder;->requestedCharsetName:Ljava/lang/String;

    #@5
    .line 293
    iput-object p1, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    #@7
    .line 294
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@a
    move-result-object v0

    #@b
    .line 295
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@d
    .line 294
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@10
    move-result-object v0

    #@11
    .line 296
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@13
    .line 294
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    #@19
    .line 297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@20
    move-result-object v0

    #@21
    if-nez v0, :cond_0

    #@23
    const/4 v0, 0x1

    #@24
    :goto_0
    iput-boolean v0, p0, Ljava/lang/StringCoding$StringEncoder;->isTrusted:Z

    #@26
    .line 291
    return-void

    #@27
    .line 297
    :cond_0
    const/4 v0, 0x0

    #@28
    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/StringCoding$StringEncoder;)V
    .locals 0
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "rcn"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/StringCoding$StringEncoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method charsetName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    #@2
    instance-of v0, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 302
    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    #@8
    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    #@a
    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 303
    :cond_0
    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    #@11
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method encode([CII)[B
    .locals 10
    .param p1, "ca"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 311
    iget-object v6, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    #@3
    invoke-virtual {v6}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    #@6
    move-result v6

    #@7
    invoke-static {p3, v6}, Ljava/lang/StringCoding;->-wrap2(IF)I

    #@a
    move-result v4

    #@b
    .line 312
    .local v4, "en":I
    if-nez p3, :cond_0

    #@d
    .line 313
    new-array v6, v7, [B

    #@f
    return-object v6

    #@10
    .line 314
    :cond_0
    iget-object v6, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    #@12
    instance-of v6, v6, Lsun/nio/cs/ArrayEncoder;

    #@14
    if-eqz v6, :cond_1

    #@16
    .line 315
    new-array v0, v4, [B

    #@18
    .line 316
    .local v0, "ba":[B
    iget-object v6, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    #@1a
    check-cast v6, Lsun/nio/cs/ArrayEncoder;

    #@1c
    invoke-interface {v6, p1, p2, p3, v0}, Lsun/nio/cs/ArrayEncoder;->encode([CII[B)I

    #@1f
    move-result v2

    #@20
    .line 317
    .local v2, "blen":I
    iget-object v6, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    #@22
    iget-boolean v7, p0, Ljava/lang/StringCoding$StringEncoder;->isTrusted:Z

    #@24
    invoke-static {v0, v2, v6, v7}, Ljava/lang/StringCoding;->-wrap0([BILjava/nio/charset/Charset;Z)[B

    #@27
    move-result-object v6

    #@28
    return-object v6

    #@29
    .line 319
    .end local v0    # "ba":[B
    .end local v2    # "blen":I
    :cond_1
    iget-object v6, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    #@2b
    invoke-virtual {v6}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    #@2e
    .line 320
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@31
    move-result-object v3

    #@32
    .line 325
    .local v3, "cb":Ljava/nio/CharBuffer;
    :try_start_0
    iget-object v6, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    #@34
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->asReadOnlyBuffer()Ljava/nio/CharBuffer;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v6, v7}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    #@3b
    move-result-object v1

    #@3c
    .line 326
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    #@43
    move-result v7

    #@44
    iget-object v8, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    #@46
    iget-boolean v9, p0, Ljava/lang/StringCoding$StringEncoder;->isTrusted:Z

    #@48
    invoke-static {v6, v7, v8, v9}, Ljava/lang/StringCoding;->-wrap0([BILjava/nio/charset/Charset;Z)[B
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    move-result-object v6

    #@4c
    return-object v6

    #@4d
    .line 327
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v5

    #@4e
    .line 330
    .local v5, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v6, Ljava/lang/Error;

    #@50
    invoke-direct {v6, v5}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@53
    throw v6
.end method

.method final requestedCharsetName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->requestedCharsetName:Ljava/lang/String;

    #@2
    return-object v0
.end method
