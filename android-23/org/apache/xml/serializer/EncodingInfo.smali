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
.field final javaName:Ljava/lang/String;

.field private m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

.field private final m_highCharInContiguousGroup:C

.field final name:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(CLjava/lang/String;)Z
    .locals 1
    .param p0, "ch"    # C
    .param p1, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(CLjava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(CCLjava/lang/String;)Z
    .locals 1
    .param p0, "high"    # C
    .param p1, "low"    # C
    .param p2, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(CCLjava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "javaName"    # Ljava/lang/String;
    .param p3, "highChar"    # C

    #@0
    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 152
    iput-object p1, p0, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    #@5
    .line 153
    iput-object p2, p0, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    #@7
    .line 154
    iput-char p3, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_highCharInContiguousGroup:C

    #@9
    .line 149
    return-void
.end method

.method private static inEncoding(CCLjava/lang/String;)Z
    .locals 6
    .param p0, "high"    # C
    .param p1, "low"    # C
    .param p2, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 467
    const/4 v5, 0x2

    #@1
    :try_start_0
    new-array v1, v5, [C

    #@3
    .line 468
    .local v1, "cArray":[C
    const/4 v5, 0x0

    #@4
    aput-char p0, v1, v5

    #@6
    .line 469
    const/4 v5, 0x1

    #@7
    aput-char p1, v1, v5

    #@9
    .line 471
    new-instance v4, Ljava/lang/String;

    #@b
    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    #@e
    .line 474
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@11
    move-result-object v0

    #@12
    .line 475
    .local v0, "bArray":[B
    invoke-static {p0, v0}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(C[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v3

    #@16
    .line 480
    .end local v0    # "bArray":[B
    .end local v1    # "cArray":[C
    .end local v4    # "s":Ljava/lang/String;
    :goto_0
    return v3

    #@17
    .line 476
    :catch_0
    move-exception v2

    #@18
    .line 477
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    #@19
    .local v3, "isInEncoding":Z
    goto :goto_0
.end method

.method private static inEncoding(CLjava/lang/String;)Z
    .locals 6
    .param p0, "ch"    # C
    .param p1, "encoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 428
    const/4 v5, 0x1

    #@1
    :try_start_0
    new-array v1, v5, [C

    #@3
    .line 429
    .local v1, "cArray":[C
    const/4 v5, 0x0

    #@4
    aput-char p0, v1, v5

    #@6
    .line 431
    new-instance v4, Ljava/lang/String;

    #@8
    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    #@b
    .line 434
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@e
    move-result-object v0

    #@f
    .line 435
    .local v0, "bArray":[B
    invoke-static {p0, v0}, Lorg/apache/xml/serializer/EncodingInfo;->inEncoding(C[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v3

    #@13
    .line 446
    .end local v0    # "bArray":[B
    .end local v1    # "cArray":[C
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    #@14
    .line 437
    :catch_0
    move-exception v2

    #@15
    .line 438
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    #@16
    .line 443
    .local v3, "isInEncoding":Z
    if-nez p1, :cond_0

    #@18
    .line 444
    const/4 v3, 0x1

    #@19
    goto :goto_0
.end method

.method private static inEncoding(C[B)Z
    .locals 4
    .param p0, "ch"    # C
    .param p1, "data"    # [B

    #@0
    .prologue
    const/16 v3, 0x3f

    #@2
    const/4 v2, 0x0

    #@3
    .line 500
    if-eqz p1, :cond_0

    #@5
    array-length v1, p1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 501
    :cond_0
    const/4 v0, 0x0

    #@9
    .line 530
    .local v0, "isInEncoding":Z
    :goto_0
    return v0

    #@a
    .line 504
    .end local v0    # "isInEncoding":Z
    :cond_1
    aget-byte v1, p1, v2

    #@c
    if-nez v1, :cond_2

    #@e
    .line 505
    const/4 v0, 0x0

    #@f
    .restart local v0    # "isInEncoding":Z
    goto :goto_0

    #@10
    .line 506
    .end local v0    # "isInEncoding":Z
    :cond_2
    aget-byte v1, p1, v2

    #@12
    if-ne v1, v3, :cond_3

    #@14
    if-eq p0, v3, :cond_3

    #@16
    .line 507
    const/4 v0, 0x0

    #@17
    .restart local v0    # "isInEncoding":Z
    goto :goto_0

    #@18
    .line 527
    .end local v0    # "isInEncoding":Z
    :cond_3
    const/4 v0, 0x1

    #@19
    .restart local v0    # "isInEncoding":Z
    goto :goto_0
.end method


# virtual methods
.method public final getHighChar()C
    .locals 1

    #@0
    .prologue
    .line 559
    iget-char v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_highCharInContiguousGroup:C

    #@2
    return v0
.end method

.method public isInEncoding(C)Z
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 105
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 106
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    #@7
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;)V

    #@a
    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@c
    .line 113
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@e
    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(C)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public isInEncoding(CC)Z
    .locals 2
    .param p1, "high"    # C
    .param p2, "low"    # C

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 126
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 127
    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;

    #@7
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;-><init>(Lorg/apache/xml/serializer/EncodingInfo;Lorg/apache/xml/serializer/EncodingInfo$EncodingImpl;)V

    #@a
    iput-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@c
    .line 134
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/EncodingInfo;->m_encoding:Lorg/apache/xml/serializer/EncodingInfo$InEncoding;

    #@e
    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/EncodingInfo$InEncoding;->isInEncoding(CC)Z

    #@11
    move-result v0

    #@12
    return v0
.end method
