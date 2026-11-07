.class public final Lcom/android/okhttp/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final greylist EMPTY_BYTE_ARRAY:[B
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final blacklist EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final greylist UTF_8:Ljava/nio/charset/Charset;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 47
    new-array v1, v0, [B

    sput-object v1, Lcom/android/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 48
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/okhttp/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 52
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkOffsetAndCount(JJJ)V
    .registers 10

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    cmp-long v0, p2, p0

    if-gtz v0, :cond_12

    sub-long/2addr p0, p2

    cmp-long p0, p0, p4

    if-ltz p0, :cond_12

    return-void

    .line 59
    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static greylist closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    const/4 p0, 0x0

    goto :goto_6

    :catchall_5
    move-exception p0

    .line 129
    :goto_6
    :try_start_6
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    goto :goto_e

    :catchall_a
    move-exception p1

    if-nez p0, :cond_e

    move-object p0, p1

    :cond_e
    :goto_e
    if-nez p0, :cond_11

    return-void

    .line 134
    :cond_11
    instance-of p1, p0, Ljava/io/IOException;

    if-nez p1, :cond_29

    .line 135
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_26

    .line 136
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_20

    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 137
    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 135
    :cond_26
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 134
    :cond_29
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method public static greylist closeQuietly(Ljava/io/Closeable;)V
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    if-eqz p0, :cond_8

    .line 76
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    return-void

    :catch_6
    move-exception p0

    .line 78
    throw p0

    :catch_8
    :cond_8
    return-void
.end method

.method public static blacklist closeQuietly(Ljava/net/ServerSocket;)V
    .registers 1

    if-eqz p0, :cond_8

    .line 108
    :try_start_2
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    return-void

    :catch_6
    move-exception p0

    .line 110
    throw p0

    :catch_8
    :cond_8
    return-void
.end method

.method public static blacklist closeQuietly(Ljava/net/Socket;)V
    .registers 2

    if-eqz p0, :cond_11

    .line 91
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_11

    return-void

    :catch_6
    move-exception p0

    .line 95
    throw p0

    :catch_8
    move-exception p0

    .line 93
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    throw p0

    :catch_11
    :cond_11
    :goto_11
    return-void
.end method

.method public static blacklist concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 305
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 306
    array-length v3, p0

    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    aput-object p1, v1, v0

    return-object v1
.end method

.method public static blacklist contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 301
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist discard(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .registers 3

    .line 147
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internal/Util;->skipAll(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;
    .registers 5

    .line 266
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 268
    :cond_27
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    if-nez p1, :cond_3d

    .line 269
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_3c

    goto :goto_3d

    :cond_3c
    return-object v0

    .line 270
    :cond_3d
    :goto_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist immutableList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs blacklist immutableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist immutableMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_22

    aget-object v4, p0, v3

    .line 255
    array-length v5, p1

    move v6, v2

    :goto_e
    if-ge v6, v5, :cond_1f

    aget-object v7, p1, v6

    .line 256
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 257
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_22
    return-object v0
.end method

.method public static blacklist intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .line 244
    invoke-static {p1, p2}, Lcom/android/okhttp/internal/Util;->intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 245
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .registers 2

    .line 296
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 297
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 183
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 184
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 185
    invoke-static {p0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 187
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static blacklist sha1(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;
    .registers 2

    .line 205
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 207
    invoke-static {p0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 209
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static blacklist shaBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 194
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 195
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 196
    invoke-static {p0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 198
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static blacklist skipAll(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 159
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Timeout;->hasDeadline()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_1d

    .line 160
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_1e

    :cond_1d
    move-wide v5, v3

    .line 162
    :goto_1e
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v2

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    .line 164
    :try_start_2f
    new-instance p1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    :goto_34
    const-wide/16 v7, 0x800

    .line 165
    invoke-interface {p0, p1, v7, v8}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long p2, v7, v9

    if-eqz p2, :cond_46

    .line 166
    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->clear()V
    :try_end_43
    .catch Ljava/io/InterruptedIOException; {:try_start_2f .. :try_end_43} :catch_71
    .catchall {:try_start_2f .. :try_end_43} :catchall_44

    goto :goto_34

    :catchall_44
    move-exception p1

    goto :goto_5c

    :cond_46
    cmp-long p1, v5, v3

    const/4 p2, 0x1

    if-nez p1, :cond_53

    .line 173
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    return p2

    .line 175
    :cond_53
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    return p2

    :goto_5c
    cmp-long p2, v5, v3

    if-nez p2, :cond_68

    .line 173
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    goto :goto_70

    .line 175
    :cond_68
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    .line 177
    :goto_70
    throw p1

    :catch_71
    cmp-long p1, v5, v3

    if-nez p1, :cond_7d

    .line 173
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    goto :goto_85

    .line 175
    :cond_7d
    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    :goto_85
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .registers 3

    .line 229
    new-instance v0, Lcom/android/okhttp/internal/Util$1;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/Util$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static blacklist toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 276
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_3d

    .line 277
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x7f

    const/16 v5, 0x1f

    if-le v3, v5, :cond_1a

    if-ge v3, v4, :cond_1a

    .line 276
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_6

    .line 280
    :cond_1a
    new-instance v3, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v3}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 281
    invoke-virtual {v3, p0, v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/android/okhttp/okio/Buffer;

    :goto_22
    if-ge v2, v0, :cond_39

    .line 283
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-le v1, v5, :cond_2e

    if-ge v1, v4, :cond_2e

    move v6, v1

    goto :goto_30

    :cond_2e
    const/16 v6, 0x3f

    .line 284
    :goto_30
    invoke-virtual {v3, v6}, Lcom/android/okhttp/okio/Buffer;->writeUtf8CodePoint(I)Lcom/android/okhttp/okio/Buffer;

    .line 282
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_22

    .line 286
    :cond_39
    invoke-virtual {v3}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    :cond_3d
    return-object p0
.end method
