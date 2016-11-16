.class public final Ljava/lang/reflect/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 774
    if-nez p0, :cond_0

    #@2
    .line 775
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "array == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 776
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 777
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    #@18
    move-result-object v0

    #@19
    throw v0

    #@1a
    .line 779
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    #@1d
    move-result-object v0

    #@1e
    throw v0
.end method

.method private static native createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation
.end method

.method private static native createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    instance-of v0, p0, [Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 170
    check-cast p0, [Ljava/lang/Object;

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-object v0, p0, p1

    #@8
    return-object v0

    #@9
    .line 172
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [Z

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 173
    check-cast p0, [Z

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    aget-boolean v0, p0, p1

    #@11
    if-eqz v0, :cond_1

    #@13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@15
    :goto_0
    return-object v0

    #@16
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@18
    goto :goto_0

    #@19
    .line 175
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [B

    #@1b
    if-eqz v0, :cond_3

    #@1d
    .line 176
    check-cast p0, [B

    #@1f
    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    #@21
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@24
    move-result-object v0

    #@25
    return-object v0

    #@26
    .line 178
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [C

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 179
    check-cast p0, [C

    #@2c
    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    #@2e
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@31
    move-result-object v0

    #@32
    return-object v0

    #@33
    .line 181
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [S

    #@35
    if-eqz v0, :cond_5

    #@37
    .line 182
    check-cast p0, [S

    #@39
    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    #@3b
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@3e
    move-result-object v0

    #@3f
    return-object v0

    #@40
    .line 184
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [I

    #@42
    if-eqz v0, :cond_6

    #@44
    .line 185
    check-cast p0, [I

    #@46
    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    #@48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v0

    #@4c
    return-object v0

    #@4d
    .line 187
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [J

    #@4f
    if-eqz v0, :cond_7

    #@51
    .line 188
    check-cast p0, [J

    #@53
    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    #@55
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@58
    move-result-object v0

    #@59
    return-object v0

    #@5a
    .line 190
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, [F

    #@5c
    if-eqz v0, :cond_8

    #@5e
    .line 191
    new-instance v0, Ljava/lang/Float;

    #@60
    check-cast p0, [F

    #@62
    .end local p0    # "array":Ljava/lang/Object;
    aget v1, p0, p1

    #@64
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    #@67
    return-object v0

    #@68
    .line 193
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_8
    instance-of v0, p0, [D

    #@6a
    if-eqz v0, :cond_9

    #@6c
    .line 194
    new-instance v0, Ljava/lang/Double;

    #@6e
    check-cast p0, [D

    #@70
    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v2, p0, p1

    #@72
    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    #@75
    return-object v0

    #@76
    .line 196
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    if-nez p0, :cond_a

    #@78
    .line 197
    new-instance v0, Ljava/lang/NullPointerException;

    #@7a
    const-string/jumbo v1, "array == null"

    #@7d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@80
    throw v0

    #@81
    .line 199
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    #@84
    move-result-object v0

    #@85
    throw v0
.end method

.method public static getBoolean(Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    instance-of v0, p0, [Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 220
    check-cast p0, [Z

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-boolean v0, p0, p1

    #@8
    return v0

    #@9
    .line 222
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@c
    move-result-object v0

    #@d
    throw v0
.end method

.method public static getByte(Ljava/lang/Object;I)B
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    instance-of v0, p0, [B

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 243
    check-cast p0, [B

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    #@8
    return v0

    #@9
    .line 245
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@c
    move-result-object v0

    #@d
    throw v0
.end method

.method public static getChar(Ljava/lang/Object;I)C
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    instance-of v0, p0, [C

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 266
    check-cast p0, [C

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    #@8
    return v0

    #@9
    .line 268
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@c
    move-result-object v0

    #@d
    throw v0
.end method

.method public static getDouble(Ljava/lang/Object;I)D
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 406
    instance-of v0, p0, [D

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 407
    check-cast p0, [D

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    #@8
    return-wide v0

    #@9
    .line 408
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 409
    check-cast p0, [B

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    #@11
    int-to-double v0, v0

    #@12
    return-wide v0

    #@13
    .line 410
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 411
    check-cast p0, [C

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    #@1b
    int-to-double v0, v0

    #@1c
    return-wide v0

    #@1d
    .line 412
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [F

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 413
    check-cast p0, [F

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    #@25
    float-to-double v0, v0

    #@26
    return-wide v0

    #@27
    .line 414
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [I

    #@29
    if-eqz v0, :cond_4

    #@2b
    .line 415
    check-cast p0, [I

    #@2d
    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    #@2f
    int-to-double v0, v0

    #@30
    return-wide v0

    #@31
    .line 416
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [J

    #@33
    if-eqz v0, :cond_5

    #@35
    .line 417
    check-cast p0, [J

    #@37
    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    #@39
    long-to-double v0, v0

    #@3a
    return-wide v0

    #@3b
    .line 418
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [S

    #@3d
    if-eqz v0, :cond_6

    #@3f
    .line 419
    check-cast p0, [S

    #@41
    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    #@43
    int-to-double v0, v0

    #@44
    return-wide v0

    #@45
    .line 421
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@48
    move-result-object v0

    #@49
    throw v0
.end method

.method public static getFloat(Ljava/lang/Object;I)F
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 373
    instance-of v0, p0, [F

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 374
    check-cast p0, [F

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    #@8
    return v0

    #@9
    .line 375
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 376
    check-cast p0, [B

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    #@11
    int-to-float v0, v0

    #@12
    return v0

    #@13
    .line 377
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 378
    check-cast p0, [C

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    #@1b
    int-to-float v0, v0

    #@1c
    return v0

    #@1d
    .line 379
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 380
    check-cast p0, [I

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    #@25
    int-to-float v0, v0

    #@26
    return v0

    #@27
    .line 381
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    #@29
    if-eqz v0, :cond_4

    #@2b
    .line 382
    check-cast p0, [J

    #@2d
    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    #@2f
    long-to-float v0, v0

    #@30
    return v0

    #@31
    .line 383
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [S

    #@33
    if-eqz v0, :cond_5

    #@35
    .line 384
    check-cast p0, [S

    #@37
    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    #@39
    int-to-float v0, v0

    #@3a
    return v0

    #@3b
    .line 386
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@3e
    move-result-object v0

    #@3f
    throw v0
.end method

.method public static getInt(Ljava/lang/Object;I)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    instance-of v0, p0, [I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 314
    check-cast p0, [I

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    #@8
    return v0

    #@9
    .line 315
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 316
    check-cast p0, [B

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    #@11
    return v0

    #@12
    .line 317
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 318
    check-cast p0, [C

    #@18
    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    #@1a
    return v0

    #@1b
    .line 319
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [S

    #@1d
    if-eqz v0, :cond_3

    #@1f
    .line 320
    check-cast p0, [S

    #@21
    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    #@23
    return v0

    #@24
    .line 322
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@27
    move-result-object v0

    #@28
    throw v0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 130
    instance-of v0, p0, [Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 131
    check-cast p0, [Ljava/lang/Object;

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@7
    return v0

    #@8
    .line 132
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 133
    check-cast p0, [Z

    #@e
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@f
    return v0

    #@10
    .line 134
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [B

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 135
    check-cast p0, [B

    #@16
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@17
    return v0

    #@18
    .line 136
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [C

    #@1a
    if-eqz v0, :cond_3

    #@1c
    .line 137
    check-cast p0, [C

    #@1e
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@1f
    return v0

    #@20
    .line 138
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [D

    #@22
    if-eqz v0, :cond_4

    #@24
    .line 139
    check-cast p0, [D

    #@26
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@27
    return v0

    #@28
    .line 140
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [F

    #@2a
    if-eqz v0, :cond_5

    #@2c
    .line 141
    check-cast p0, [F

    #@2e
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@2f
    return v0

    #@30
    .line 142
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [I

    #@32
    if-eqz v0, :cond_6

    #@34
    .line 143
    check-cast p0, [I

    #@36
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@37
    return v0

    #@38
    .line 144
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [J

    #@3a
    if-eqz v0, :cond_7

    #@3c
    .line 145
    check-cast p0, [J

    #@3e
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@3f
    return v0

    #@40
    .line 146
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, [S

    #@42
    if-eqz v0, :cond_8

    #@44
    .line 147
    check-cast p0, [S

    #@46
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@47
    return v0

    #@48
    .line 149
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_8
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@4b
    move-result-object v0

    #@4c
    throw v0
.end method

.method public static getLong(Ljava/lang/Object;I)J
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 342
    instance-of v0, p0, [J

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 343
    check-cast p0, [J

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    #@8
    return-wide v0

    #@9
    .line 344
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 345
    check-cast p0, [B

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    #@11
    int-to-long v0, v0

    #@12
    return-wide v0

    #@13
    .line 346
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 347
    check-cast p0, [C

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    #@1b
    int-to-long v0, v0

    #@1c
    return-wide v0

    #@1d
    .line 348
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 349
    check-cast p0, [I

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    #@25
    int-to-long v0, v0

    #@26
    return-wide v0

    #@27
    .line 350
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [S

    #@29
    if-eqz v0, :cond_4

    #@2b
    .line 351
    check-cast p0, [S

    #@2d
    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    #@2f
    int-to-long v0, v0

    #@30
    return-wide v0

    #@31
    .line 353
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@34
    move-result-object v0

    #@35
    throw v0
.end method

.method public static getShort(Ljava/lang/Object;I)S
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 288
    instance-of v0, p0, [S

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 289
    check-cast p0, [S

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    #@8
    return v0

    #@9
    .line 290
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 291
    check-cast p0, [B

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    #@11
    int-to-short v0, v0

    #@12
    return v0

    #@13
    .line 293
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@16
    move-result-object v0

    #@17
    throw v0
.end method

.method private static incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 770
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Array has incompatible type: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method

.method private static newArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    #@0
    .prologue
    .line 736
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 737
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 738
    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@d
    if-ne p0, v0, :cond_1

    #@f
    .line 739
    new-array v0, p1, [C

    #@11
    return-object v0

    #@12
    .line 740
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@14
    if-ne p0, v0, :cond_2

    #@16
    .line 741
    new-array v0, p1, [I

    #@18
    return-object v0

    #@19
    .line 742
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@1b
    if-ne p0, v0, :cond_3

    #@1d
    .line 743
    new-array v0, p1, [B

    #@1f
    return-object v0

    #@20
    .line 744
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@22
    if-ne p0, v0, :cond_4

    #@24
    .line 745
    new-array v0, p1, [Z

    #@26
    return-object v0

    #@27
    .line 746
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@29
    if-ne p0, v0, :cond_5

    #@2b
    .line 747
    new-array v0, p1, [S

    #@2d
    return-object v0

    #@2e
    .line 748
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@30
    if-ne p0, v0, :cond_6

    #@32
    .line 749
    new-array v0, p1, [J

    #@34
    return-object v0

    #@35
    .line 750
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@37
    if-ne p0, v0, :cond_7

    #@39
    .line 751
    new-array v0, p1, [F

    #@3b
    return-object v0

    #@3c
    .line 752
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@3e
    if-ne p0, v0, :cond_8

    #@40
    .line 753
    new-array v0, p1, [D

    #@42
    return-object v0

    #@43
    .line 754
    :cond_8
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@45
    if-ne p0, v0, :cond_9

    #@47
    .line 755
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@49
    const-string/jumbo v1, "Can\'t allocate an array of void"

    #@4c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v0

    #@50
    .line 757
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    #@52
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@55
    throw v0
.end method

.method public static newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newArray(Ljava/lang/Class;I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
    .locals 3
    .param p1, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p1

    #@1
    if-lez v0, :cond_0

    #@3
    array-length v0, p1

    #@4
    const/16 v1, 0xff

    #@6
    if-le v0, v1, :cond_1

    #@8
    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Bad number of dimensions: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    array-length v2, p1

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 112
    :cond_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@25
    if-ne p0, v0, :cond_2

    #@27
    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    const-string/jumbo v1, "Can\'t allocate an array of void"

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 115
    :cond_2
    if-nez p0, :cond_3

    #@32
    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    #@34
    const-string/jumbo v1, "componentType == null"

    #@37
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 118
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    return-object v0
.end method

.method private static notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 766
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Not an array: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method

.method public static set(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 442
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 443
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    #@d
    move-result-object v0

    #@e
    throw v0

    #@f
    .line 446
    :cond_0
    instance-of v0, p0, [Ljava/lang/Object;

    #@11
    if-eqz v0, :cond_4

    #@13
    .line 447
    if-eqz p2, :cond_1

    #@15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_3

    #@23
    .line 450
    :cond_1
    check-cast p0, [Ljava/lang/Object;

    #@25
    .end local p0    # "array":Ljava/lang/Object;
    aput-object p2, p0, p1

    #@27
    .line 441
    .end local p2    # "value":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void

    #@28
    .line 448
    .restart local p0    # "array":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    invoke-static {p0}, Ljava/lang/reflect/Array;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    #@2b
    move-result-object v0

    #@2c
    throw v0

    #@2d
    .line 452
    :cond_4
    if-nez p2, :cond_5

    #@2f
    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v1, "Primitive array can\'t take null values."

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 455
    :cond_5
    instance-of v0, p2, Ljava/lang/Boolean;

    #@3a
    if-eqz v0, :cond_6

    #@3c
    .line 456
    check-cast p2, Ljava/lang/Boolean;

    #@3e
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@41
    move-result v0

    #@42
    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    #@45
    goto :goto_0

    #@46
    .line 457
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, Ljava/lang/Byte;

    #@48
    if-eqz v0, :cond_7

    #@4a
    .line 458
    check-cast p2, Ljava/lang/Byte;

    #@4c
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    #@4f
    move-result v0

    #@50
    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    #@53
    goto :goto_0

    #@54
    .line 459
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p2, Ljava/lang/Character;

    #@56
    if-eqz v0, :cond_8

    #@58
    .line 460
    check-cast p2, Ljava/lang/Character;

    #@5a
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    #@5d
    move-result v0

    #@5e
    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setChar(Ljava/lang/Object;IC)V

    #@61
    goto :goto_0

    #@62
    .line 461
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v0, p2, Ljava/lang/Short;

    #@64
    if-eqz v0, :cond_9

    #@66
    .line 462
    check-cast p2, Ljava/lang/Short;

    #@68
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    #@6b
    move-result v0

    #@6c
    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    #@6f
    goto :goto_0

    #@70
    .line 463
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v0, p2, Ljava/lang/Integer;

    #@72
    if-eqz v0, :cond_a

    #@74
    .line 464
    check-cast p2, Ljava/lang/Integer;

    #@76
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@79
    move-result v0

    #@7a
    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    #@7d
    goto :goto_0

    #@7e
    .line 465
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v0, p2, Ljava/lang/Long;

    #@80
    if-eqz v0, :cond_b

    #@82
    .line 466
    check-cast p2, Ljava/lang/Long;

    #@84
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    #@87
    move-result-wide v0

    #@88
    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    #@8b
    goto :goto_0

    #@8c
    .line 467
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v0, p2, Ljava/lang/Float;

    #@8e
    if-eqz v0, :cond_c

    #@90
    .line 468
    check-cast p2, Ljava/lang/Float;

    #@92
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@95
    move-result v0

    #@96
    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    #@99
    goto :goto_0

    #@9a
    .line 469
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v0, p2, Ljava/lang/Double;

    #@9c
    if-eqz v0, :cond_2

    #@9e
    .line 470
    check-cast p2, Ljava/lang/Double;

    #@a0
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    #@a3
    move-result-wide v0

    #@a4
    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    #@a7
    goto :goto_0
.end method

.method public static setBoolean(Ljava/lang/Object;IZ)V
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 494
    instance-of v0, p0, [Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 495
    check-cast p0, [Z

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput-boolean p2, p0, p1

    #@8
    .line 493
    return-void

    #@9
    .line 497
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@c
    move-result-object v0

    #@d
    throw v0
.end method

.method public static setByte(Ljava/lang/Object;IB)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    instance-of v0, p0, [B

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 521
    check-cast p0, [B

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput-byte p2, p0, p1

    #@8
    .line 519
    :goto_0
    return-void

    #@9
    .line 522
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 523
    check-cast p0, [D

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    #@10
    aput-wide v0, p0, p1

    #@12
    goto :goto_0

    #@13
    .line 524
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 525
    check-cast p0, [F

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    #@1a
    aput v0, p0, p1

    #@1c
    goto :goto_0

    #@1d
    .line 526
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 527
    check-cast p0, [I

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    #@25
    goto :goto_0

    #@26
    .line 528
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 529
    check-cast p0, [J

    #@2c
    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    #@2d
    aput-wide v0, p0, p1

    #@2f
    goto :goto_0

    #@30
    .line 530
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [S

    #@32
    if-eqz v0, :cond_5

    #@34
    .line 531
    check-cast p0, [S

    #@36
    .end local p0    # "array":Ljava/lang/Object;
    int-to-short v0, p2

    #@37
    aput-short v0, p0, p1

    #@39
    goto :goto_0

    #@3a
    .line 533
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@3d
    move-result-object v0

    #@3e
    throw v0
.end method

.method public static setChar(Ljava/lang/Object;IC)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 556
    instance-of v0, p0, [C

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 557
    check-cast p0, [C

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput-char p2, p0, p1

    #@8
    .line 555
    :goto_0
    return-void

    #@9
    .line 558
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 559
    check-cast p0, [D

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    #@10
    aput-wide v0, p0, p1

    #@12
    goto :goto_0

    #@13
    .line 560
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 561
    check-cast p0, [F

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    #@1a
    aput v0, p0, p1

    #@1c
    goto :goto_0

    #@1d
    .line 562
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 563
    check-cast p0, [I

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    #@25
    goto :goto_0

    #@26
    .line 564
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 565
    check-cast p0, [J

    #@2c
    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    #@2d
    aput-wide v0, p0, p1

    #@2f
    goto :goto_0

    #@30
    .line 567
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@33
    move-result-object v0

    #@34
    throw v0
.end method

.method public static setDouble(Ljava/lang/Object;ID)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 714
    instance-of v0, p0, [D

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 715
    check-cast p0, [D

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput-wide p2, p0, p1

    #@8
    .line 713
    return-void

    #@9
    .line 717
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@c
    move-result-object v0

    #@d
    throw v0
.end method

.method public static setFloat(Ljava/lang/Object;IF)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 686
    instance-of v0, p0, [F

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 687
    check-cast p0, [F

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    #@8
    .line 685
    :goto_0
    return-void

    #@9
    .line 688
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 689
    check-cast p0, [D

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    float-to-double v0, p2

    #@10
    aput-wide v0, p0, p1

    #@12
    goto :goto_0

    #@13
    .line 691
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@16
    move-result-object v0

    #@17
    throw v0
.end method

.method public static setInt(Ljava/lang/Object;II)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 624
    instance-of v0, p0, [I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 625
    check-cast p0, [I

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    #@8
    .line 623
    :goto_0
    return-void

    #@9
    .line 626
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 627
    check-cast p0, [D

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    #@10
    aput-wide v0, p0, p1

    #@12
    goto :goto_0

    #@13
    .line 628
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 629
    check-cast p0, [F

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    #@1a
    aput v0, p0, p1

    #@1c
    goto :goto_0

    #@1d
    .line 630
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [J

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 631
    check-cast p0, [J

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    #@24
    aput-wide v0, p0, p1

    #@26
    goto :goto_0

    #@27
    .line 633
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@2a
    move-result-object v0

    #@2b
    throw v0
.end method

.method public static setLong(Ljava/lang/Object;IJ)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 656
    instance-of v0, p0, [J

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 657
    check-cast p0, [J

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput-wide p2, p0, p1

    #@8
    .line 655
    :goto_0
    return-void

    #@9
    .line 658
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 659
    check-cast p0, [D

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    long-to-double v0, p2

    #@10
    aput-wide v0, p0, p1

    #@12
    goto :goto_0

    #@13
    .line 660
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 661
    check-cast p0, [F

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    long-to-float v0, p2

    #@1a
    aput v0, p0, p1

    #@1c
    goto :goto_0

    #@1d
    .line 663
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@20
    move-result-object v0

    #@21
    throw v0
.end method

.method public static setShort(Ljava/lang/Object;IS)V
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 590
    instance-of v0, p0, [S

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 591
    check-cast p0, [S

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput-short p2, p0, p1

    #@8
    .line 589
    :goto_0
    return-void

    #@9
    .line 592
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 593
    check-cast p0, [D

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    #@10
    aput-wide v0, p0, p1

    #@12
    goto :goto_0

    #@13
    .line 594
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 595
    check-cast p0, [F

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    #@1a
    aput v0, p0, p1

    #@1c
    goto :goto_0

    #@1d
    .line 596
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 597
    check-cast p0, [I

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    #@25
    goto :goto_0

    #@26
    .line 598
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 599
    check-cast p0, [J

    #@2c
    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    #@2d
    aput-wide v0, p0, p1

    #@2f
    goto :goto_0

    #@30
    .line 601
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@33
    move-result-object v0

    #@34
    throw v0
.end method
