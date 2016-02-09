.class public final Lorg/apache/http/util/EncodingUtils;
.super Ljava/lang/Object;
.source "EncodingUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAsciiBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 135
    if-nez p0, :cond_0

    #@2
    .line 136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Parameter may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 140
    :cond_0
    :try_start_0
    const-string/jumbo v1, "US-ASCII"

    #@e
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 141
    :catch_0
    move-exception v0

    #@14
    .line 142
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    #@16
    const-string/jumbo v2, "HttpClient requires ASCII support"

    #@19
    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1
.end method

.method public static getAsciiString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 178
    if-nez p0, :cond_0

    #@2
    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Parameter may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 181
    :cond_0
    array-length v0, p0

    #@c
    const/4 v1, 0x0

    #@d
    invoke-static {p0, v1, v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([BII)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static getAsciiString([BII)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 158
    if-nez p0, :cond_0

    #@2
    .line 159
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Parameter may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 163
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    #@d
    const-string/jumbo v2, "US-ASCII"

    #@10
    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    return-object v1

    #@14
    .line 164
    :catch_0
    move-exception v0

    #@15
    .line 165
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    #@17
    const-string/jumbo v2, "HttpClient requires ASCII support"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    if-nez p0, :cond_0

    #@2
    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "data may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 116
    :cond_0
    if-eqz p1, :cond_1

    #@d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_2

    #@13
    .line 117
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v2, "charset may not be null or empty"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 121
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 122
    :catch_0
    move-exception v0

    #@22
    .line 123
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@25
    move-result-object v1

    #@26
    return-object v1
.end method

.method public static getString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    if-nez p0, :cond_0

    #@2
    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Parameter may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 74
    :cond_0
    if-eqz p3, :cond_1

    #@d
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_2

    #@13
    .line 75
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v2, "charset may not be null or empty"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 79
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    #@1e
    invoke-direct {v1, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    return-object v1

    #@22
    .line 80
    :catch_0
    move-exception v0

    #@23
    .line 81
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    #@25
    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    #@28
    return-object v1
.end method

.method public static getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    if-nez p0, :cond_0

    #@2
    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Parameter may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 99
    :cond_0
    array-length v0, p0

    #@c
    const/4 v1, 0x0

    #@d
    invoke-static {p0, v1, v0, p1}, Lorg/apache/http/util/EncodingUtils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method
