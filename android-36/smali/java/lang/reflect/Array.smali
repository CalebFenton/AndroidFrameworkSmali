.class public final Ljava/lang/reflect/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;

    .line 832
    if-eqz p0, :cond_16

    .line 834
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_11

    .line 835
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 837
    :cond_11
    invoke-static {p0}, Ljava/lang/reflect/Array;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 833
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 181
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 182
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 184
    :cond_a
    instance-of v0, p0, [Z

    if-eqz v0, :cond_1b

    .line 185
    move-object v0, p0

    check-cast v0, [Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_18

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1a

    :cond_18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1a
    return-object v0

    .line 187
    :cond_1b
    instance-of v0, p0, [B

    if-eqz v0, :cond_29

    .line 188
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 190
    :cond_29
    instance-of v0, p0, [C

    if-eqz v0, :cond_37

    .line 191
    move-object v0, p0

    check-cast v0, [C

    aget-char v0, v0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 193
    :cond_37
    instance-of v0, p0, [S

    if-eqz v0, :cond_45

    .line 194
    move-object v0, p0

    check-cast v0, [S

    aget-short v0, v0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 196
    :cond_45
    instance-of v0, p0, [I

    if-eqz v0, :cond_53

    .line 197
    move-object v0, p0

    check-cast v0, [I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 199
    :cond_53
    instance-of v0, p0, [J

    if-eqz v0, :cond_61

    .line 200
    move-object v0, p0

    check-cast v0, [J

    aget-wide v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 202
    :cond_61
    instance-of v0, p0, [F

    if-eqz v0, :cond_70

    .line 203
    new-instance v0, Ljava/lang/Float;

    move-object v1, p0

    check-cast v1, [F

    aget v1, v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0

    .line 205
    :cond_70
    instance-of v0, p0, [D

    if-eqz v0, :cond_7f

    .line 206
    new-instance v0, Ljava/lang/Double;

    move-object v1, p0

    check-cast v1, [D

    aget-wide v1, v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    .line 208
    :cond_7f
    if-nez p0, :cond_89

    .line 209
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_89
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api getBoolean(Ljava/lang/Object;I)Z
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 233
    instance-of v0, p0, [Z

    if-eqz v0, :cond_a

    .line 234
    move-object v0, p0

    check-cast v0, [Z

    aget-boolean v0, v0, p1

    return v0

    .line 236
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api getByte(Ljava/lang/Object;I)B
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 258
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    .line 259
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    return v0

    .line 261
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api getChar(Ljava/lang/Object;I)C
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 283
    instance-of v0, p0, [C

    if-eqz v0, :cond_a

    .line 284
    move-object v0, p0

    check-cast v0, [C

    aget-char v0, v0, p1

    return v0

    .line 286
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api getDouble(Ljava/lang/Object;I)D
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 434
    instance-of v0, p0, [D

    if-eqz v0, :cond_a

    .line 435
    move-object v0, p0

    check-cast v0, [D

    aget-wide v0, v0, p1

    return-wide v0

    .line 436
    :cond_a
    instance-of v0, p0, [B

    if-eqz v0, :cond_15

    .line 437
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-double v0, v0

    return-wide v0

    .line 438
    :cond_15
    instance-of v0, p0, [C

    if-eqz v0, :cond_20

    .line 439
    move-object v0, p0

    check-cast v0, [C

    aget-char v0, v0, p1

    int-to-double v0, v0

    return-wide v0

    .line 440
    :cond_20
    instance-of v0, p0, [F

    if-eqz v0, :cond_2b

    .line 441
    move-object v0, p0

    check-cast v0, [F

    aget v0, v0, p1

    float-to-double v0, v0

    return-wide v0

    .line 442
    :cond_2b
    instance-of v0, p0, [I

    if-eqz v0, :cond_36

    .line 443
    move-object v0, p0

    check-cast v0, [I

    aget v0, v0, p1

    int-to-double v0, v0

    return-wide v0

    .line 444
    :cond_36
    instance-of v0, p0, [J

    if-eqz v0, :cond_41

    .line 445
    move-object v0, p0

    check-cast v0, [J

    aget-wide v0, v0, p1

    long-to-double v0, v0

    return-wide v0

    .line 446
    :cond_41
    instance-of v0, p0, [S

    if-eqz v0, :cond_4c

    .line 447
    move-object v0, p0

    check-cast v0, [S

    aget-short v0, v0, p1

    int-to-double v0, v0

    return-wide v0

    .line 449
    :cond_4c
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api getFloat(Ljava/lang/Object;I)F
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 399
    instance-of v0, p0, [F

    if-eqz v0, :cond_a

    .line 400
    move-object v0, p0

    check-cast v0, [F

    aget v0, v0, p1

    return v0

    .line 401
    :cond_a
    instance-of v0, p0, [B

    if-eqz v0, :cond_15

    .line 402
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-float v0, v0

    return v0

    .line 403
    :cond_15
    instance-of v0, p0, [C

    if-eqz v0, :cond_20

    .line 404
    move-object v0, p0

    check-cast v0, [C

    aget-char v0, v0, p1

    int-to-float v0, v0

    return v0

    .line 405
    :cond_20
    instance-of v0, p0, [I

    if-eqz v0, :cond_2b

    .line 406
    move-object v0, p0

    check-cast v0, [I

    aget v0, v0, p1

    int-to-float v0, v0

    return v0

    .line 407
    :cond_2b
    instance-of v0, p0, [J

    if-eqz v0, :cond_36

    .line 408
    move-object v0, p0

    check-cast v0, [J

    aget-wide v0, v0, p1

    long-to-float v0, v0

    return v0

    .line 409
    :cond_36
    instance-of v0, p0, [S

    if-eqz v0, :cond_41

    .line 410
    move-object v0, p0

    check-cast v0, [S

    aget-short v0, v0, p1

    int-to-float v0, v0

    return v0

    .line 412
    :cond_41
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api getInt(Ljava/lang/Object;I)I
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 335
    instance-of v0, p0, [I

    if-eqz v0, :cond_a

    .line 336
    move-object v0, p0

    check-cast v0, [I

    aget v0, v0, p1

    return v0

    .line 337
    :cond_a
    instance-of v0, p0, [B

    if-eqz v0, :cond_14

    .line 338
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    return v0

    .line 339
    :cond_14
    instance-of v0, p0, [C

    if-eqz v0, :cond_1e

    .line 340
    move-object v0, p0

    check-cast v0, [C

    aget-char v0, v0, p1

    return v0

    .line 341
    :cond_1e
    instance-of v0, p0, [S

    if-eqz v0, :cond_28

    .line 342
    move-object v0, p0

    check-cast v0, [S

    aget-short v0, v0, p1

    return v0

    .line 344
    :cond_28
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api getLength(Ljava/lang/Object;)I
    .registers 2
    .param p0, "array"    # Ljava/lang/Object;

    .line 140
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 141
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    return v0

    .line 142
    :cond_9
    instance-of v0, p0, [Z

    if-eqz v0, :cond_12

    .line 143
    move-object v0, p0

    check-cast v0, [Z

    array-length v0, v0

    return v0

    .line 144
    :cond_12
    instance-of v0, p0, [B

    if-eqz v0, :cond_1b

    .line 145
    move-object v0, p0

    check-cast v0, [B

    array-length v0, v0

    return v0

    .line 146
    :cond_1b
    instance-of v0, p0, [C

    if-eqz v0, :cond_24

    .line 147
    move-object v0, p0

    check-cast v0, [C

    array-length v0, v0

    return v0

    .line 148
    :cond_24
    instance-of v0, p0, [D

    if-eqz v0, :cond_2d

    .line 149
    move-object v0, p0

    check-cast v0, [D

    array-length v0, v0

    return v0

    .line 150
    :cond_2d
    instance-of v0, p0, [F

    if-eqz v0, :cond_36

    .line 151
    move-object v0, p0

    check-cast v0, [F

    array-length v0, v0

    return v0

    .line 152
    :cond_36
    instance-of v0, p0, [I

    if-eqz v0, :cond_3f

    .line 153
    move-object v0, p0

    check-cast v0, [I

    array-length v0, v0

    return v0

    .line 154
    :cond_3f
    instance-of v0, p0, [J

    if-eqz v0, :cond_48

    .line 155
    move-object v0, p0

    check-cast v0, [J

    array-length v0, v0

    return v0

    .line 156
    :cond_48
    instance-of v0, p0, [S

    if-eqz v0, :cond_51

    .line 157
    move-object v0, p0

    check-cast v0, [S

    array-length v0, v0

    return v0

    .line 159
    :cond_51
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api getLong(Ljava/lang/Object;I)J
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 366
    instance-of v0, p0, [J

    if-eqz v0, :cond_a

    .line 367
    move-object v0, p0

    check-cast v0, [J

    aget-wide v0, v0, p1

    return-wide v0

    .line 368
    :cond_a
    instance-of v0, p0, [B

    if-eqz v0, :cond_15

    .line 369
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 370
    :cond_15
    instance-of v0, p0, [C

    if-eqz v0, :cond_20

    .line 371
    move-object v0, p0

    check-cast v0, [C

    aget-char v0, v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 372
    :cond_20
    instance-of v0, p0, [I

    if-eqz v0, :cond_2b

    .line 373
    move-object v0, p0

    check-cast v0, [I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 374
    :cond_2b
    instance-of v0, p0, [S

    if-eqz v0, :cond_36

    .line 375
    move-object v0, p0

    check-cast v0, [S

    aget-short v0, v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 377
    :cond_36
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api getShort(Ljava/lang/Object;I)S
    .registers 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 308
    instance-of v0, p0, [S

    if-eqz v0, :cond_a

    .line 309
    move-object v0, p0

    check-cast v0, [S

    aget-short v0, v0, p1

    return v0

    .line 310
    :cond_a
    instance-of v0, p0, [B

    if-eqz v0, :cond_15

    .line 311
    move-object v0, p0

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-short v0, v0

    return v0

    .line 313
    :cond_15
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static greylist-max-o incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;

    .line 828
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array has incompatible type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o newArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .line 776
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_b

    .line 777
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 778
    :cond_b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_12

    .line 779
    new-array v0, p1, [C

    return-object v0

    .line 780
    :cond_12
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_19

    .line 781
    new-array v0, p1, [I

    return-object v0

    .line 782
    :cond_19
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_20

    .line 783
    new-array v0, p1, [B

    return-object v0

    .line 784
    :cond_20
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_27

    .line 785
    new-array v0, p1, [Z

    return-object v0

    .line 786
    :cond_27
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2e

    .line 787
    new-array v0, p1, [S

    return-object v0

    .line 788
    :cond_2e
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_35

    .line 789
    new-array v0, p1, [J

    return-object v0

    .line 790
    :cond_35
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3c

    .line 791
    new-array v0, p1, [F

    return-object v0

    .line 792
    :cond_3c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_43

    .line 793
    new-array v0, p1, [D

    return-object v0

    .line 794
    :cond_43
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4f

    .line 795
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t allocate an array of void"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_4f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static whitelist test-api newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .line 79
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
    .registers 5
    .param p1, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .line 116
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p1

    if-lez v0, :cond_23

    array-length v0, p1

    const/16 v1, 0xff

    if-gt v0, v1, :cond_23

    .line 119
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1b

    .line 122
    if-eqz p0, :cond_13

    .line 125
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 123
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "componentType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t allocate an array of void"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad number of dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;

    .line 824
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api set(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 476
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2b

    .line 477
    if-eqz p2, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_24

    .line 478
    :cond_1f
    invoke-static {p0}, Ljava/lang/reflect/Array;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 480
    :cond_24
    :goto_24
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    aput-object p2, v0, p1

    goto/16 :goto_a4

    .line 482
    :cond_2b
    if-eqz p2, :cond_a5

    .line 485
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3c

    .line 486
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    goto :goto_a4

    .line 487
    :cond_3c
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_4b

    .line 488
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto :goto_a4

    .line 489
    :cond_4b
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_5a

    .line 490
    move-object v0, p2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setChar(Ljava/lang/Object;IC)V

    goto :goto_a4

    .line 491
    :cond_5a
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_69

    .line 492
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    goto :goto_a4

    .line 493
    :cond_69
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_78

    .line 494
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto :goto_a4

    .line 495
    :cond_78
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_87

    .line 496
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_a4

    .line 497
    :cond_87
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_96

    .line 498
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto :goto_a4

    .line 499
    :cond_96
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_a4

    .line 500
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    .line 503
    :cond_a4
    :goto_a4
    return-void

    .line 483
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primitive array can\'t take null values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_ad
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api setBoolean(Ljava/lang/Object;IZ)V
    .registers 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "z"    # Z

    .line 526
    instance-of v0, p0, [Z

    if-eqz v0, :cond_a

    .line 527
    move-object v0, p0

    check-cast v0, [Z

    aput-boolean p2, v0, p1

    .line 531
    return-void

    .line 529
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api setByte(Ljava/lang/Object;IB)V
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 553
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    .line 554
    move-object v0, p0

    check-cast v0, [B

    aput-byte p2, v0, p1

    goto :goto_3f

    .line 555
    :cond_a
    instance-of v0, p0, [D

    if-eqz v0, :cond_15

    .line 556
    move-object v0, p0

    check-cast v0, [D

    int-to-double v1, p2

    aput-wide v1, v0, p1

    goto :goto_3f

    .line 557
    :cond_15
    instance-of v0, p0, [F

    if-eqz v0, :cond_20

    .line 558
    move-object v0, p0

    check-cast v0, [F

    int-to-float v1, p2

    aput v1, v0, p1

    goto :goto_3f

    .line 559
    :cond_20
    instance-of v0, p0, [I

    if-eqz v0, :cond_2a

    .line 560
    move-object v0, p0

    check-cast v0, [I

    aput p2, v0, p1

    goto :goto_3f

    .line 561
    :cond_2a
    instance-of v0, p0, [J

    if-eqz v0, :cond_35

    .line 562
    move-object v0, p0

    check-cast v0, [J

    int-to-long v1, p2

    aput-wide v1, v0, p1

    goto :goto_3f

    .line 563
    :cond_35
    instance-of v0, p0, [S

    if-eqz v0, :cond_40

    .line 564
    move-object v0, p0

    check-cast v0, [S

    int-to-short v1, p2

    aput-short v1, v0, p1

    .line 568
    :goto_3f
    return-void

    .line 566
    :cond_40
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api setChar(Ljava/lang/Object;IC)V
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 590
    instance-of v0, p0, [C

    if-eqz v0, :cond_a

    .line 591
    move-object v0, p0

    check-cast v0, [C

    aput-char p2, v0, p1

    goto :goto_34

    .line 592
    :cond_a
    instance-of v0, p0, [D

    if-eqz v0, :cond_15

    .line 593
    move-object v0, p0

    check-cast v0, [D

    int-to-double v1, p2

    aput-wide v1, v0, p1

    goto :goto_34

    .line 594
    :cond_15
    instance-of v0, p0, [F

    if-eqz v0, :cond_20

    .line 595
    move-object v0, p0

    check-cast v0, [F

    int-to-float v1, p2

    aput v1, v0, p1

    goto :goto_34

    .line 596
    :cond_20
    instance-of v0, p0, [I

    if-eqz v0, :cond_2a

    .line 597
    move-object v0, p0

    check-cast v0, [I

    aput p2, v0, p1

    goto :goto_34

    .line 598
    :cond_2a
    instance-of v0, p0, [J

    if-eqz v0, :cond_35

    .line 599
    move-object v0, p0

    check-cast v0, [J

    int-to-long v1, p2

    aput-wide v1, v0, p1

    .line 603
    :goto_34
    return-void

    .line 601
    :cond_35
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api setDouble(Ljava/lang/Object;ID)V
    .registers 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 752
    instance-of v0, p0, [D

    if-eqz v0, :cond_a

    .line 753
    move-object v0, p0

    check-cast v0, [D

    aput-wide p2, v0, p1

    .line 757
    return-void

    .line 755
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api setFloat(Ljava/lang/Object;IF)V
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 723
    instance-of v0, p0, [F

    if-eqz v0, :cond_a

    .line 724
    move-object v0, p0

    check-cast v0, [F

    aput p2, v0, p1

    goto :goto_14

    .line 725
    :cond_a
    instance-of v0, p0, [D

    if-eqz v0, :cond_15

    .line 726
    move-object v0, p0

    check-cast v0, [D

    float-to-double v1, p2

    aput-wide v1, v0, p1

    .line 730
    :goto_14
    return-void

    .line 728
    :cond_15
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api setInt(Ljava/lang/Object;II)V
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 660
    instance-of v0, p0, [I

    if-eqz v0, :cond_a

    .line 661
    move-object v0, p0

    check-cast v0, [I

    aput p2, v0, p1

    goto :goto_2a

    .line 662
    :cond_a
    instance-of v0, p0, [D

    if-eqz v0, :cond_15

    .line 663
    move-object v0, p0

    check-cast v0, [D

    int-to-double v1, p2

    aput-wide v1, v0, p1

    goto :goto_2a

    .line 664
    :cond_15
    instance-of v0, p0, [F

    if-eqz v0, :cond_20

    .line 665
    move-object v0, p0

    check-cast v0, [F

    int-to-float v1, p2

    aput v1, v0, p1

    goto :goto_2a

    .line 666
    :cond_20
    instance-of v0, p0, [J

    if-eqz v0, :cond_2b

    .line 667
    move-object v0, p0

    check-cast v0, [J

    int-to-long v1, p2

    aput-wide v1, v0, p1

    .line 671
    :goto_2a
    return-void

    .line 669
    :cond_2b
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api setLong(Ljava/lang/Object;IJ)V
    .registers 7
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 693
    instance-of v0, p0, [J

    if-eqz v0, :cond_a

    .line 694
    move-object v0, p0

    check-cast v0, [J

    aput-wide p2, v0, p1

    goto :goto_1f

    .line 695
    :cond_a
    instance-of v0, p0, [D

    if-eqz v0, :cond_15

    .line 696
    move-object v0, p0

    check-cast v0, [D

    long-to-double v1, p2

    aput-wide v1, v0, p1

    goto :goto_1f

    .line 697
    :cond_15
    instance-of v0, p0, [F

    if-eqz v0, :cond_20

    .line 698
    move-object v0, p0

    check-cast v0, [F

    long-to-float v1, p2

    aput v1, v0, p1

    .line 702
    :goto_1f
    return-void

    .line 700
    :cond_20
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api setShort(Ljava/lang/Object;IS)V
    .registers 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "s"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 625
    instance-of v0, p0, [S

    if-eqz v0, :cond_a

    .line 626
    move-object v0, p0

    check-cast v0, [S

    aput-short p2, v0, p1

    goto :goto_34

    .line 627
    :cond_a
    instance-of v0, p0, [D

    if-eqz v0, :cond_15

    .line 628
    move-object v0, p0

    check-cast v0, [D

    int-to-double v1, p2

    aput-wide v1, v0, p1

    goto :goto_34

    .line 629
    :cond_15
    instance-of v0, p0, [F

    if-eqz v0, :cond_20

    .line 630
    move-object v0, p0

    check-cast v0, [F

    int-to-float v1, p2

    aput v1, v0, p1

    goto :goto_34

    .line 631
    :cond_20
    instance-of v0, p0, [I

    if-eqz v0, :cond_2a

    .line 632
    move-object v0, p0

    check-cast v0, [I

    aput p2, v0, p1

    goto :goto_34

    .line 633
    :cond_2a
    instance-of v0, p0, [J

    if-eqz v0, :cond_35

    .line 634
    move-object v0, p0

    check-cast v0, [J

    int-to-long v1, p2

    aput-wide v1, v0, p1

    .line 638
    :goto_34
    return-void

    .line 636
    :cond_35
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
