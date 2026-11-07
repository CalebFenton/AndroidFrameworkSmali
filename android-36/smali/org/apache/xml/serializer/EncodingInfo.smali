.class public final Lorg/apache/xml/serializer/EncodingInfo;
.super Ljava/lang/Object;
.source "EncodingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/EncodingInfo$InEncoding;,
        Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;
    }
.end annotation


# instance fields
.field final greylist javaName:Ljava/lang/String;

.field private greylist m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

.field private final greylist m_highCharInContiguousGroup:C

.field final greylist name:Ljava/lang/String;


# direct methods
.method static bridge synthetic greylist -$$Nest$sminEncoding(CCLjava/lang/String;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(CCLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic greylist -$$Nest$sminEncoding(CLjava/lang/String;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(CLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;C)V
    .registers 4

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    .line 154
    iput-char p3, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_highCharInContiguousGroup:C

    return-void
.end method

.method private static greylist inEncoding(CCLjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 469
    :try_start_2
    new-array v1, v1, [C

    aput-char p0, v1, v0

    const/4 v2, 0x1

    aput-char p1, v1, v2

    .line 471
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    .line 474
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 475
    invoke-static {p0, p1}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(C[B)Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    return p0

    :catch_17
    return v0
.end method

.method private static greylist inEncoding(CLjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 429
    :try_start_2
    new-array v2, v1, [C

    aput-char p0, v2, v0

    .line 431
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    .line 434
    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 435
    invoke-static {p0, v2}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(C[B)Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    return p0

    :catch_14
    if-nez p1, :cond_17

    move v0, v1

    :cond_17
    return v0
.end method

.method private static greylist inEncoding(C[B)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 500
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_15

    .line 504
    :cond_7
    aget-byte p1, p1, v0

    if-nez p1, :cond_c

    return v0

    :cond_c
    const/16 v1, 0x3f

    if-ne p1, v1, :cond_13

    if-eq p0, v1, :cond_13

    return v0

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    return v0
.end method


# virtual methods
.method public final greylist getHighChar()C
    .registers 1

    .line 559
    iget-char p0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_highCharInContiguousGroup:C

    return p0
.end method

.method public greylist isInEncoding(C)Z
    .registers 4

    .line 105
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_c

    .line 106
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Lorg/apache/xml/serializer/EncodingInfo-IA;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    .line 113
    :cond_c
    iget-object p0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {p0, p1}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    move-result p0

    return p0
.end method

.method public greylist isInEncoding(CC)Z
    .registers 5

    .line 126
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    if-nez v0, :cond_c

    .line 127
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Lorg/apache/xml/serializer/EncodingInfo-IA;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    .line 134
    :cond_c
    iget-object p0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    invoke-interface {p0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    move-result p0

    return p0
.end method
