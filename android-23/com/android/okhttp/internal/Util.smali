.class public final Lcom/android/okhttp/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 45
    new-array v0, v1, [B

    #@3
    sput-object v0, Lcom/android/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    #@5
    .line 46
    new-array v0, v1, [Ljava/lang/String;

    #@7
    sput-object v0, Lcom/android/okhttp/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@9
    .line 49
    const-string/jumbo v0, "UTF-8"

    #@c
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    #@12
    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 4
    .param p0, "arrayLength"    # J
    .param p2, "offset"    # J
    .param p4, "count"    # J

    #@0
    .prologue
    .line 73
    or-long v0, p2, p4

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-ltz v0, :cond_0

    #@8
    cmp-long v0, p2, p0

    #@a
    if-lez v0, :cond_1

    #@c
    .line 74
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@e
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@11
    throw v0

    #@12
    .line 73
    :cond_1
    sub-long v0, p0, p2

    #@14
    cmp-long v0, v0, p4

    #@16
    if-ltz v0, :cond_0

    #@18
    .line 72
    return-void
.end method

.method public static closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    .locals 3
    .param p0, "a"    # Ljava/io/Closeable;
    .param p1, "b"    # Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    const/4 v1, 0x0

    #@1
    .line 135
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 140
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    #@7
    .line 144
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    #@9
    return-void

    #@a
    .line 136
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    #@b
    .line 137
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    #@c
    .local v1, "thrown":Ljava/lang/Throwable;
    goto :goto_0

    #@d
    .line 141
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    #@e
    .line 142
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    #@10
    move-object v1, v0

    #@11
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    goto :goto_1

    #@12
    .line 145
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :cond_1
    instance-of v2, v1, Ljava/io/IOException;

    #@14
    if-eqz v2, :cond_2

    #@16
    check-cast v1, Ljava/io/IOException;

    #@18
    throw v1

    #@19
    .line 146
    :cond_2
    instance-of v2, v1, Ljava/lang/RuntimeException;

    #@1b
    if-eqz v2, :cond_3

    #@1d
    check-cast v1, Ljava/lang/RuntimeException;

    #@1f
    throw v1

    #@20
    .line 147
    :cond_3
    instance-of v2, v1, Ljava/lang/Error;

    #@22
    if-eqz v2, :cond_4

    #@24
    check-cast v1, Ljava/lang/Error;

    #@26
    throw v1

    #@27
    .line 148
    :cond_4
    new-instance v2, Ljava/lang/AssertionError;

    #@29
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2c
    throw v2
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    #@0
    .prologue
    .line 88
    if-eqz p0, :cond_0

    #@2
    .line 90
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 87
    :cond_0
    :goto_0
    return-void

    #@6
    .line 93
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0

    #@8
    .line 91
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@9
    .line 92
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 2
    .param p0, "serverSocket"    # Ljava/net/ServerSocket;

    #@0
    .prologue
    .line 118
    if-eqz p0, :cond_0

    #@2
    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 117
    :cond_0
    :goto_0
    return-void

    #@6
    .line 123
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0

    #@8
    .line 121
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@9
    .line 122
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;

    #@0
    .prologue
    .line 103
    if-eqz p0, :cond_0

    #@2
    .line 105
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 102
    :cond_0
    :goto_0
    return-void

    #@6
    .line 108
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0

    #@8
    .line 106
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@9
    .line 107
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1
.end method

.method public static discard(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p0, "source"    # Lcom/android/okhttp/okio/Source;
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 158
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internal/Util;->skipAll(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 159
    :catch_0
    move-exception v0

    #@6
    .line 160
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@7
    return v1
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 80
    if-eq p0, p1, :cond_0

    #@2
    if-eqz p0, :cond_1

    #@4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static getDefaultPort(Ljava/lang/String;)I
    .locals 1
    .param p0, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    const-string/jumbo v0, "http"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/16 v0, 0x50

    #@b
    return v0

    #@c
    .line 68
    :cond_0
    const-string/jumbo v0, "https"

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    const/16 v0, 0x1bb

    #@17
    return v0

    #@18
    .line 69
    :cond_1
    const/4 v0, -0x1

    #@19
    return v0
.end method

.method private static getEffectivePort(Ljava/lang/String;I)I
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "specifiedPort"    # I

    #@0
    .prologue
    .line 63
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_0

    #@3
    .end local p1    # "specifiedPort":I
    :goto_0
    return p1

    #@4
    .restart local p1    # "specifiedPort":I
    :cond_0
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    #@7
    move-result p1

    #@8
    goto :goto_0
.end method

.method public static getEffectivePort(Ljava/net/URI;)I
    .locals 2
    .param p0, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static getEffectivePort(Ljava/net/URL;)I
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/lang/String;I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 226
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 231
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/Object;

    #@6
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static immutableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 236
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    #@5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "first":[Ljava/lang/Object;, "[TT;"
    .local p1, "second":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    #@1
    .line 264
    new-instance v2, Ljava/util/ArrayList;

    #@3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 265
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v6, p0

    #@7
    move v5, v4

    #@8
    :goto_0
    if-ge v5, v6, :cond_2

    #@a
    aget-object v0, p0, v5

    #@c
    .line 266
    .local v0, "a":Ljava/lang/Object;, "TT;"
    array-length v7, p1

    #@d
    move v3, v4

    #@e
    :goto_1
    if-ge v3, v7, :cond_0

    #@10
    aget-object v1, p1, v3

    #@12
    .line 267
    .local v1, "b":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v8

    #@16
    if-eqz v8, :cond_1

    #@18
    .line 268
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 265
    .end local v1    # "b":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v3, v5, 0x1

    #@1d
    move v5, v3

    #@1e
    goto :goto_0

    #@1f
    .line 266
    .restart local v1    # "b":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_1

    #@22
    .line 273
    .end local v0    # "a":Ljava/lang/Object;, "TT;"
    .end local v1    # "b":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object v2
.end method

.method public static intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 255
    .local p0, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "first":[Ljava/lang/Object;, "[TT;"
    .local p2, "second":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2}, Lcom/android/okhttp/internal/Util;->intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 256
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [Ljava/lang/Object;

    #@e
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public static md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    :try_start_0
    const-string/jumbo v3, "MD5"

    #@3
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v2

    #@7
    .line 195
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    const-string/jumbo v3, "UTF-8"

    #@a
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    #@11
    move-result-object v1

    #@12
    .line 196
    .local v1, "md5bytes":[B
    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 197
    .end local v1    # "md5bytes":[B
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    #@1c
    .line 198
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/AssertionError;

    #@1e
    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@21
    throw v3
.end method

.method public static sha1(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;
    .locals 4
    .param p0, "s"    # Lcom/android/okhttp/okio/ByteString;

    #@0
    .prologue
    .line 216
    :try_start_0
    const-string/jumbo v3, "SHA-1"

    #@3
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v1

    #@7
    .line 217
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->toByteArray()[B

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    #@e
    move-result-object v2

    #@f
    .line 218
    .local v2, "sha1Bytes":[B
    invoke-static {v2}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v3

    #@13
    return-object v3

    #@14
    .line 219
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "sha1Bytes":[B
    :catch_0
    move-exception v0

    #@15
    .line 220
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    #@17
    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1a
    throw v3
.end method

.method public static shaBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 205
    :try_start_0
    const-string/jumbo v3, "SHA-1"

    #@3
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v1

    #@7
    .line 206
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    const-string/jumbo v3, "UTF-8"

    #@a
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    #@11
    move-result-object v2

    #@12
    .line 207
    .local v2, "sha1Bytes":[B
    invoke-static {v2}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 208
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "sha1Bytes":[B
    :catch_0
    move-exception v0

    #@1c
    .line 209
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/AssertionError;

    #@1e
    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@21
    throw v3
.end method

.method public static skipAll(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .param p0, "source"    # Lcom/android/okhttp/okio/Source;
    .param p1, "duration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide v10, 0x7fffffffffffffffL

    #@5
    .line 169
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@8
    move-result-wide v2

    #@9
    .line 170
    .local v2, "now":J
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@c
    move-result-object v6

    #@d
    invoke-virtual {v6}, Lcom/android/okhttp/okio/Timeout;->hasDeadline()Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_0

    #@13
    .line 171
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime()J

    #@1a
    move-result-wide v6

    #@1b
    sub-long v4, v6, v2

    #@1d
    .line 173
    .local v4, "originalDuration":J
    :goto_0
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@20
    move-result-object v6

    #@21
    int-to-long v8, p1

    #@22
    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@25
    move-result-wide v8

    #@26
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    #@29
    move-result-wide v8

    #@2a
    add-long/2addr v8, v2

    #@2b
    invoke-virtual {v6, v8, v9}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    #@2e
    .line 175
    :try_start_0
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    #@30
    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@33
    .line 176
    .local v1, "skipBuffer":Lcom/android/okhttp/okio/Buffer;
    :goto_1
    const-wide/16 v6, 0x800

    #@35
    invoke-interface {p0, v1, v6, v7}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@38
    move-result-wide v6

    #@39
    const-wide/16 v8, -0x1

    #@3b
    cmp-long v6, v6, v8

    #@3d
    if-eqz v6, :cond_1

    #@3f
    .line 177
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->clear()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    goto :goto_1

    #@43
    .line 180
    .end local v1    # "skipBuffer":Lcom/android/okhttp/okio/Buffer;
    :catch_0
    move-exception v0

    #@44
    .line 181
    .local v0, "e":Ljava/io/InterruptedIOException;
    const/4 v6, 0x0

    #@45
    .line 183
    cmp-long v7, v4, v10

    #@47
    if-nez v7, :cond_3

    #@49
    .line 184
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    #@50
    .line 181
    :goto_2
    return v6

    #@51
    .line 172
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v4    # "originalDuration":J
    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    #@56
    .restart local v4    # "originalDuration":J
    goto :goto_0

    #@57
    .line 179
    .restart local v1    # "skipBuffer":Lcom/android/okhttp/okio/Buffer;
    :cond_1
    const/4 v6, 0x1

    #@58
    .line 183
    cmp-long v7, v4, v10

    #@5a
    if-nez v7, :cond_2

    #@5c
    .line 184
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v7}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    #@63
    .line 179
    :goto_3
    return v6

    #@64
    .line 186
    :cond_2
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@67
    move-result-object v7

    #@68
    add-long v8, v2, v4

    #@6a
    invoke-virtual {v7, v8, v9}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    #@6d
    goto :goto_3

    #@6e
    .end local v1    # "skipBuffer":Lcom/android/okhttp/okio/Buffer;
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_3
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@71
    move-result-object v7

    #@72
    add-long v8, v2, v4

    #@74
    invoke-virtual {v7, v8, v9}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    #@77
    goto :goto_2

    #@78
    .line 182
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v6

    #@79
    .line 183
    cmp-long v7, v4, v10

    #@7b
    if-nez v7, :cond_4

    #@7d
    .line 184
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@80
    move-result-object v7

    #@81
    invoke-virtual {v7}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    #@84
    .line 182
    :goto_4
    throw v6

    #@85
    .line 186
    :cond_4
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@88
    move-result-object v7

    #@89
    add-long v8, v2, v4

    #@8b
    invoke-virtual {v7, v8, v9}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    #@8e
    goto :goto_4
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z

    #@0
    .prologue
    .line 240
    new-instance v0, Lcom/android/okhttp/internal/Util$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/Util$1;-><init>(Ljava/lang/String;Z)V

    #@5
    return-object v0
.end method
