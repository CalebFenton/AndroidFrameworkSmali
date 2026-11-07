.class public final Landroid/net/connectivity/com/google/protobuf/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;,
        Landroid/net/connectivity/com/google/protobuf/Internal$FloatList;,
        Landroid/net/connectivity/com/google/protobuf/Internal$DoubleList;,
        Landroid/net/connectivity/com/google/protobuf/Internal$LongList;,
        Landroid/net/connectivity/com/google/protobuf/Internal$BooleanList;,
        Landroid/net/connectivity/com/google/protobuf/Internal$IntList;,
        Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;,
        Landroid/net/connectivity/com/google/protobuf/Internal$MapAdapter;,
        Landroid/net/connectivity/com/google/protobuf/Internal$ListAdapter;,
        Landroid/net/connectivity/com/google/protobuf/Internal$EnumVerifier;,
        Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final blacklist EMPTY_BYTE_ARRAY:[B

.field public static final blacklist EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

.field public static final blacklist EMPTY_CODED_INPUT_STREAM:Landroid/net/connectivity/com/google/protobuf/CodedInputStream;

.field static final blacklist ISO_8859_1:Ljava/nio/charset/Charset;

.field static final blacklist US_ASCII:Ljava/nio/charset/Charset;

.field static final blacklist UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/Internal;->US_ASCII:Ljava/nio/charset/Charset;

    .line 59
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 60
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 380
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 383
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    .line 386
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 387
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->newInstance([B)Landroid/net/connectivity/com/google/protobuf/CodedInputStream;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/Internal;->EMPTY_CODED_INPUT_STREAM:Landroid/net/connectivity/com/google/protobuf/CodedInputStream;

    .line 386
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist byteArrayDefaultValue(Ljava/lang/String;)[B
    .registers 2
    .param p0, "bytes"    # Ljava/lang/String;

    .line 120
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist byteBufferDefaultValue(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 2
    .param p0, "bytes"    # Ljava/lang/String;

    .line 129
    invoke-static {p0}, Landroid/net/connectivity/com/google/protobuf/Internal;->byteArrayDefaultValue(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist bytesDefaultValue(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2
    .param p0, "bytes"    # Ljava/lang/String;

    .line 112
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFrom([B)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static blacklist checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 64
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 67
    return-object p0

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static blacklist checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 72
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 75
    return-object p0

    .line 73
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist copyByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "source"    # Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 145
    .local v0, "temp":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 146
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 147
    .local v1, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 148
    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 149
    return-object v1
.end method

.method public static blacklist equals(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 262
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 263
    return v2

    .line 265
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 266
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    .line 267
    return v2

    .line 265
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 270
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist equalsByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 4
    .param p0, "a"    # Ljava/nio/ByteBuffer;
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .line 311
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 312
    const/4 v0, 0x0

    return v0

    .line 316
    :cond_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist equalsByteBuffer(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)Z"
        }
    .end annotation

    .line 321
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 322
    return v2

    .line 324
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 325
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Landroid/net/connectivity/com/google/protobuf/Internal;->equalsByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 326
    return v2

    .line 324
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 329
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getDefaultInstance(Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/net/connectivity/com/google/protobuf/MessageLite;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 371
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-string v0, "getDefaultInstance"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 372
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/MessageLite;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 373
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_12
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get default instance for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist hashBoolean(Z)I
    .registers 2
    .param p0, "b"    # Z

    .line 237
    if-eqz p0, :cond_5

    const/16 v0, 0x4cf

    goto :goto_7

    :cond_5
    const/16 v0, 0x4d5

    :goto_7
    return v0
.end method

.method public static blacklist hashCode(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation

    .line 275
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x1

    .line 276
    .local v0, "hash":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 277
    .local v2, "bytes":[B
    mul-int/lit8 v3, v0, 0x1f

    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashCode([B)I

    move-result v4

    add-int v0, v3, v4

    .line 278
    .end local v2    # "bytes":[B
    goto :goto_5

    .line 279
    :cond_1a
    return v0
.end method

.method public static blacklist hashCode([B)I
    .registers 3
    .param p0, "bytes"    # [B

    .line 288
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashCode([BII)I

    move-result v0

    return v0
.end method

.method static blacklist hashCode([BII)I
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 297
    invoke-static {p2, p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/Internal;->partialHash(I[BII)I

    move-result v0

    .line 298
    .local v0, "h":I
    if-nez v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    return v1
.end method

.method public static blacklist hashCodeByteBuffer(Ljava/nio/ByteBuffer;)I
    .registers 8
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 345
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 347
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/net/connectivity/com/google/protobuf/Internal;->partialHash(I[BII)I

    move-result v0

    .line 348
    .local v0, "h":I
    if-nez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v0

    :goto_1f
    return v1

    .line 353
    .end local v0    # "h":I
    :cond_20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v2, 0x1000

    if-le v0, v2, :cond_29

    goto :goto_2d

    :cond_29
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 354
    .local v2, "bufferSize":I
    :goto_2d
    new-array v0, v2, [B

    .line 355
    .local v0, "buffer":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 356
    .local v3, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 357
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    .line 358
    .local v4, "h":I
    :goto_3a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_55

    .line 360
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-gt v5, v2, :cond_4b

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    goto :goto_4c

    :cond_4b
    move v5, v2

    .line 361
    .local v5, "length":I
    :goto_4c
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 362
    invoke-static {v4, v0, v6, v5}, Landroid/net/connectivity/com/google/protobuf/Internal;->partialHash(I[BII)I

    move-result v4

    .line 363
    .end local v5    # "length":I
    goto :goto_3a

    .line 364
    :cond_55
    if-nez v4, :cond_58

    goto :goto_59

    :cond_58
    move v1, v4

    :goto_59
    return v1
.end method

.method public static blacklist hashCodeByteBuffer(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)I"
        }
    .end annotation

    .line 334
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const/4 v0, 0x1

    .line 335
    .local v0, "hash":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 336
    .local v2, "bytes":Ljava/nio/ByteBuffer;
    mul-int/lit8 v3, v0, 0x1f

    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashCodeByteBuffer(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int v0, v3, v4

    .line 337
    .end local v2    # "bytes":Ljava/nio/ByteBuffer;
    goto :goto_5

    .line 338
    :cond_1a
    return v0
.end method

.method public static blacklist hashEnum(Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;)I
    .registers 2
    .param p0, "e"    # Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;

    .line 248
    invoke-interface {p0}, Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    return v0
.end method

.method public static blacklist hashEnumList(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;",
            ">;)I"
        }
    .end annotation

    .line 253
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;>;"
    const/4 v0, 0x1

    .line 254
    .local v0, "hash":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;

    .line 255
    .local v2, "e":Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;
    mul-int/lit8 v3, v0, 0x1f

    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/Internal;->hashEnum(Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;)I

    move-result v4

    add-int v0, v3, v4

    .line 256
    .end local v2    # "e":Landroid/net/connectivity/com/google/protobuf/Internal$EnumLite;
    goto :goto_5

    .line 257
    :cond_1a
    return v0
.end method

.method public static blacklist hashLong(J)I
    .registers 4
    .param p0, "n"    # J

    .line 228
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist isValidUtf8(Landroid/net/connectivity/com/google/protobuf/ByteString;)Z
    .registers 2
    .param p0, "byteString"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 179
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    return v0
.end method

.method public static blacklist isValidUtf8([B)Z
    .registers 2
    .param p0, "byteArray"    # [B

    .line 184
    invoke-static {p0}, Landroid/net/connectivity/com/google/protobuf/Utf8;->isValidUtf8([B)Z

    move-result v0

    return v0
.end method

.method static blacklist mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "destination"    # Ljava/lang/Object;
    .param p1, "source"    # Ljava/lang/Object;

    .line 392
    move-object v0, p0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->toBuilder()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    invoke-interface {v0, v1}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->buildPartial()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method static blacklist partialHash(I[BII)I
    .registers 7
    .param p0, "h"    # I
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 303
    move v0, p2

    .local v0, "i":I
    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_e

    .line 304
    mul-int/lit8 v1, p0, 0x1f

    aget-byte v2, p1, v0

    add-int p0, v1, v2

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 306
    .end local v0    # "i":I
    :cond_e
    return p0
.end method

.method public static blacklist stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Landroid/net/connectivity/com/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static blacklist toByteArray(Ljava/lang/String;)[B
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 189
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toStringUtf8([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .line 194
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
