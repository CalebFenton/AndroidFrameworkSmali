.class public final Ljava/lang/reflect/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 51
    if-nez p0, :cond_0

    #@2
    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "array == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 53
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
    .line 54
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    #@18
    move-result-object v0

    #@19
    throw v0

    #@1a
    .line 56
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
    .line 71
    instance-of v0, p0, [Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 72
    check-cast p0, [Ljava/lang/Object;

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-object v0, p0, p1

    #@8
    return-object v0

    #@9
    .line 74
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [Z

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 75
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
    .line 77
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [B

    #@1b
    if-eqz v0, :cond_3

    #@1d
    .line 78
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
    .line 80
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [C

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 81
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
    .line 83
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [S

    #@35
    if-eqz v0, :cond_5

    #@37
    .line 84
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
    .line 86
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [I

    #@42
    if-eqz v0, :cond_6

    #@44
    .line 87
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
    .line 89
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [J

    #@4f
    if-eqz v0, :cond_7

    #@51
    .line 90
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
    .line 92
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, [F

    #@5c
    if-eqz v0, :cond_8

    #@5e
    .line 93
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
    .line 95
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_8
    instance-of v0, p0, [D

    #@6a
    if-eqz v0, :cond_9

    #@6c
    .line 96
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
    .line 98
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_9
    if-nez p0, :cond_a

    #@78
    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    #@7a
    const-string/jumbo v1, "array == null"

    #@7d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@80
    throw v0

    #@81
    .line 101
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
    .line 115
    instance-of v0, p0, [Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 116
    check-cast p0, [Z

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-boolean v0, p0, p1

    #@8
    return v0

    #@9
    .line 118
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
    .line 132
    instance-of v0, p0, [B

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 133
    check-cast p0, [B

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    #@8
    return v0

    #@9
    .line 135
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
    .line 149
    instance-of v0, p0, [C

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 150
    check-cast p0, [C

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    #@8
    return v0

    #@9
    .line 152
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
    .line 167
    instance-of v0, p0, [D

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 168
    check-cast p0, [D

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    #@8
    return-wide v0

    #@9
    .line 169
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 170
    check-cast p0, [B

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    #@11
    int-to-double v0, v0

    #@12
    return-wide v0

    #@13
    .line 171
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 172
    check-cast p0, [C

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    #@1b
    int-to-double v0, v0

    #@1c
    return-wide v0

    #@1d
    .line 173
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [F

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 174
    check-cast p0, [F

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    #@25
    float-to-double v0, v0

    #@26
    return-wide v0

    #@27
    .line 175
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [I

    #@29
    if-eqz v0, :cond_4

    #@2b
    .line 176
    check-cast p0, [I

    #@2d
    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    #@2f
    int-to-double v0, v0

    #@30
    return-wide v0

    #@31
    .line 177
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [J

    #@33
    if-eqz v0, :cond_5

    #@35
    .line 178
    check-cast p0, [J

    #@37
    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    #@39
    long-to-double v0, v0

    #@3a
    return-wide v0

    #@3b
    .line 179
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [S

    #@3d
    if-eqz v0, :cond_6

    #@3f
    .line 180
    check-cast p0, [S

    #@41
    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    #@43
    int-to-double v0, v0

    #@44
    return-wide v0

    #@45
    .line 182
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
    .line 197
    instance-of v0, p0, [F

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 198
    check-cast p0, [F

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    #@8
    return v0

    #@9
    .line 199
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 200
    check-cast p0, [B

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    #@11
    int-to-float v0, v0

    #@12
    return v0

    #@13
    .line 201
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 202
    check-cast p0, [C

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    #@1b
    int-to-float v0, v0

    #@1c
    return v0

    #@1d
    .line 203
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 204
    check-cast p0, [I

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    #@25
    int-to-float v0, v0

    #@26
    return v0

    #@27
    .line 205
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    #@29
    if-eqz v0, :cond_4

    #@2b
    .line 206
    check-cast p0, [J

    #@2d
    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    #@2f
    long-to-float v0, v0

    #@30
    return v0

    #@31
    .line 207
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [S

    #@33
    if-eqz v0, :cond_5

    #@35
    .line 208
    check-cast p0, [S

    #@37
    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    #@39
    int-to-float v0, v0

    #@3a
    return v0

    #@3b
    .line 210
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
    .line 225
    instance-of v0, p0, [I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 226
    check-cast p0, [I

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    #@8
    return v0

    #@9
    .line 227
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 228
    check-cast p0, [B

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    #@11
    return v0

    #@12
    .line 229
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 230
    check-cast p0, [C

    #@18
    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    #@1a
    return v0

    #@1b
    .line 231
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [S

    #@1d
    if-eqz v0, :cond_3

    #@1f
    .line 232
    check-cast p0, [S

    #@21
    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    #@23
    return v0

    #@24
    .line 234
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
    .line 245
    instance-of v0, p0, [Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 246
    check-cast p0, [Ljava/lang/Object;

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@7
    return v0

    #@8
    .line 247
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [Z

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 248
    check-cast p0, [Z

    #@e
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@f
    return v0

    #@10
    .line 249
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [B

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 250
    check-cast p0, [B

    #@16
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@17
    return v0

    #@18
    .line 251
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [C

    #@1a
    if-eqz v0, :cond_3

    #@1c
    .line 252
    check-cast p0, [C

    #@1e
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@1f
    return v0

    #@20
    .line 253
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [D

    #@22
    if-eqz v0, :cond_4

    #@24
    .line 254
    check-cast p0, [D

    #@26
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@27
    return v0

    #@28
    .line 255
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [F

    #@2a
    if-eqz v0, :cond_5

    #@2c
    .line 256
    check-cast p0, [F

    #@2e
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@2f
    return v0

    #@30
    .line 257
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [I

    #@32
    if-eqz v0, :cond_6

    #@34
    .line 258
    check-cast p0, [I

    #@36
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@37
    return v0

    #@38
    .line 259
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [J

    #@3a
    if-eqz v0, :cond_7

    #@3c
    .line 260
    check-cast p0, [J

    #@3e
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@3f
    return v0

    #@40
    .line 261
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, [S

    #@42
    if-eqz v0, :cond_8

    #@44
    .line 262
    check-cast p0, [S

    #@46
    .end local p0    # "array":Ljava/lang/Object;
    array-length v0, p0

    #@47
    return v0

    #@48
    .line 264
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
    .line 279
    instance-of v0, p0, [J

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 280
    check-cast p0, [J

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-wide v0, p0, p1

    #@8
    return-wide v0

    #@9
    .line 281
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 282
    check-cast p0, [B

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    #@11
    int-to-long v0, v0

    #@12
    return-wide v0

    #@13
    .line 283
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [C

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 284
    check-cast p0, [C

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    aget-char v0, p0, p1

    #@1b
    int-to-long v0, v0

    #@1c
    return-wide v0

    #@1d
    .line 285
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 286
    check-cast p0, [I

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    aget v0, p0, p1

    #@25
    int-to-long v0, v0

    #@26
    return-wide v0

    #@27
    .line 287
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [S

    #@29
    if-eqz v0, :cond_4

    #@2b
    .line 288
    check-cast p0, [S

    #@2d
    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    #@2f
    int-to-long v0, v0

    #@30
    return-wide v0

    #@31
    .line 290
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
    .line 305
    instance-of v0, p0, [S

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 306
    check-cast p0, [S

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aget-short v0, p0, p1

    #@8
    return v0

    #@9
    .line 307
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [B

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 308
    check-cast p0, [B

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    aget-byte v0, p0, p1

    #@11
    int-to-short v0, v0

    #@12
    return v0

    #@13
    .line 310
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
    .line 47
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

.method public static newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
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
    .line 353
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 354
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 355
    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@d
    if-ne p0, v0, :cond_1

    #@f
    .line 356
    new-array v0, p1, [C

    #@11
    return-object v0

    #@12
    .line 357
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@14
    if-ne p0, v0, :cond_2

    #@16
    .line 358
    new-array v0, p1, [I

    #@18
    return-object v0

    #@19
    .line 359
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@1b
    if-ne p0, v0, :cond_3

    #@1d
    .line 360
    new-array v0, p1, [B

    #@1f
    return-object v0

    #@20
    .line 361
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@22
    if-ne p0, v0, :cond_4

    #@24
    .line 362
    new-array v0, p1, [Z

    #@26
    return-object v0

    #@27
    .line 363
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@29
    if-ne p0, v0, :cond_5

    #@2b
    .line 364
    new-array v0, p1, [S

    #@2d
    return-object v0

    #@2e
    .line 365
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@30
    if-ne p0, v0, :cond_6

    #@32
    .line 366
    new-array v0, p1, [J

    #@34
    return-object v0

    #@35
    .line 367
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@37
    if-ne p0, v0, :cond_7

    #@39
    .line 368
    new-array v0, p1, [F

    #@3b
    return-object v0

    #@3c
    .line 369
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@3e
    if-ne p0, v0, :cond_8

    #@40
    .line 370
    new-array v0, p1, [D

    #@42
    return-object v0

    #@43
    .line 371
    :cond_8
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@45
    if-ne p0, v0, :cond_9

    #@47
    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@49
    const-string/jumbo v1, "Can\'t allocate an array of void"

    #@4c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v0

    #@50
    .line 374
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    #@52
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@55
    throw v0
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
            Ljava/lang/NegativeArraySizeException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
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
    .line 327
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
    .line 329
    :cond_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@25
    if-ne p0, v0, :cond_2

    #@27
    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    const-string/jumbo v1, "Can\'t allocate an array of void"

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 332
    :cond_2
    if-nez p0, :cond_3

    #@32
    .line 333
    new-instance v0, Ljava/lang/NullPointerException;

    #@34
    const-string/jumbo v1, "componentType == null"

    #@37
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 335
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
    .line 43
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
    .line 395
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
    .line 396
    invoke-static {p0}, Ljava/lang/reflect/Array;->notAnArray(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    #@d
    move-result-object v0

    #@e
    throw v0

    #@f
    .line 399
    :cond_0
    instance-of v0, p0, [Ljava/lang/Object;

    #@11
    if-eqz v0, :cond_4

    #@13
    .line 400
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
    .line 403
    :cond_1
    check-cast p0, [Ljava/lang/Object;

    #@25
    .end local p0    # "array":Ljava/lang/Object;
    aput-object p2, p0, p1

    #@27
    .line 394
    .end local p2    # "value":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void

    #@28
    .line 401
    .restart local p0    # "array":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    invoke-static {p0}, Ljava/lang/reflect/Array;->incompatibleType(Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    #@2b
    move-result-object v0

    #@2c
    throw v0

    #@2d
    .line 405
    :cond_4
    if-nez p2, :cond_5

    #@2f
    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v1, "Primitive array can\'t take null values."

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 408
    :cond_5
    instance-of v0, p2, Ljava/lang/Boolean;

    #@3a
    if-eqz v0, :cond_6

    #@3c
    .line 409
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
    .line 410
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, Ljava/lang/Byte;

    #@48
    if-eqz v0, :cond_7

    #@4a
    .line 411
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
    .line 412
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p2, Ljava/lang/Character;

    #@56
    if-eqz v0, :cond_8

    #@58
    .line 413
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
    .line 414
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v0, p2, Ljava/lang/Short;

    #@64
    if-eqz v0, :cond_9

    #@66
    .line 415
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
    .line 416
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v0, p2, Ljava/lang/Integer;

    #@72
    if-eqz v0, :cond_a

    #@74
    .line 417
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
    .line 418
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v0, p2, Ljava/lang/Long;

    #@80
    if-eqz v0, :cond_b

    #@82
    .line 419
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
    .line 420
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v0, p2, Ljava/lang/Float;

    #@8e
    if-eqz v0, :cond_c

    #@90
    .line 421
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
    .line 422
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v0, p2, Ljava/lang/Double;

    #@9c
    if-eqz v0, :cond_2

    #@9e
    .line 423
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
    .line 439
    instance-of v0, p0, [Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 440
    check-cast p0, [Z

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput-boolean p2, p0, p1

    #@8
    .line 438
    return-void

    #@9
    .line 442
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
    .line 457
    instance-of v0, p0, [B

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 458
    check-cast p0, [B

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput-byte p2, p0, p1

    #@8
    .line 456
    :goto_0
    return-void

    #@9
    .line 459
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 460
    check-cast p0, [D

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    #@10
    aput-wide v0, p0, p1

    #@12
    goto :goto_0

    #@13
    .line 461
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 462
    check-cast p0, [F

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    #@1a
    aput v0, p0, p1

    #@1c
    goto :goto_0

    #@1d
    .line 463
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 464
    check-cast p0, [I

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    #@25
    goto :goto_0

    #@26
    .line 465
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 466
    check-cast p0, [J

    #@2c
    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    #@2d
    aput-wide v0, p0, p1

    #@2f
    goto :goto_0

    #@30
    .line 467
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [S

    #@32
    if-eqz v0, :cond_5

    #@34
    .line 468
    check-cast p0, [S

    #@36
    .end local p0    # "array":Ljava/lang/Object;
    int-to-short v0, p2

    #@37
    aput-short v0, p0, p1

    #@39
    goto :goto_0

    #@3a
    .line 470
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
    .line 485
    instance-of v0, p0, [C

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 486
    check-cast p0, [C

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput-char p2, p0, p1

    #@8
    .line 484
    :goto_0
    return-void

    #@9
    .line 487
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 488
    check-cast p0, [D

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    #@10
    aput-wide v0, p0, p1

    #@12
    goto :goto_0

    #@13
    .line 489
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 490
    check-cast p0, [F

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    #@1a
    aput v0, p0, p1

    #@1c
    goto :goto_0

    #@1d
    .line 491
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 492
    check-cast p0, [I

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    #@25
    goto :goto_0

    #@26
    .line 493
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 494
    check-cast p0, [J

    #@2c
    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    #@2d
    aput-wide v0, p0, p1

    #@2f
    goto :goto_0

    #@30
    .line 496
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
    .line 511
    instance-of v0, p0, [D

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 512
    check-cast p0, [D

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput-wide p2, p0, p1

    #@8
    .line 510
    return-void

    #@9
    .line 514
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
    .line 529
    instance-of v0, p0, [F

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 530
    check-cast p0, [F

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    #@8
    .line 528
    :goto_0
    return-void

    #@9
    .line 531
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 532
    check-cast p0, [D

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    float-to-double v0, p2

    #@10
    aput-wide v0, p0, p1

    #@12
    goto :goto_0

    #@13
    .line 534
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
    .line 549
    instance-of v0, p0, [I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 550
    check-cast p0, [I

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    #@8
    .line 548
    :goto_0
    return-void

    #@9
    .line 551
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 552
    check-cast p0, [D

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    #@10
    aput-wide v0, p0, p1

    #@12
    goto :goto_0

    #@13
    .line 553
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 554
    check-cast p0, [F

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    #@1a
    aput v0, p0, p1

    #@1c
    goto :goto_0

    #@1d
    .line 555
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [J

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 556
    check-cast p0, [J

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    #@24
    aput-wide v0, p0, p1

    #@26
    goto :goto_0

    #@27
    .line 558
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
    .line 573
    instance-of v0, p0, [J

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 574
    check-cast p0, [J

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput-wide p2, p0, p1

    #@8
    .line 572
    :goto_0
    return-void

    #@9
    .line 575
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 576
    check-cast p0, [D

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    long-to-double v0, p2

    #@10
    aput-wide v0, p0, p1

    #@12
    goto :goto_0

    #@13
    .line 577
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 578
    check-cast p0, [F

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    long-to-float v0, p2

    #@1a
    aput v0, p0, p1

    #@1c
    goto :goto_0

    #@1d
    .line 580
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
    .line 595
    instance-of v0, p0, [S

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 596
    check-cast p0, [S

    #@6
    .end local p0    # "array":Ljava/lang/Object;
    aput-short p2, p0, p1

    #@8
    .line 594
    :goto_0
    return-void

    #@9
    .line 597
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, [D

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 598
    check-cast p0, [D

    #@f
    .end local p0    # "array":Ljava/lang/Object;
    int-to-double v0, p2

    #@10
    aput-wide v0, p0, p1

    #@12
    goto :goto_0

    #@13
    .line 599
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, [F

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 600
    check-cast p0, [F

    #@19
    .end local p0    # "array":Ljava/lang/Object;
    int-to-float v0, p2

    #@1a
    aput v0, p0, p1

    #@1c
    goto :goto_0

    #@1d
    .line 601
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [I

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 602
    check-cast p0, [I

    #@23
    .end local p0    # "array":Ljava/lang/Object;
    aput p2, p0, p1

    #@25
    goto :goto_0

    #@26
    .line 603
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [J

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 604
    check-cast p0, [J

    #@2c
    .end local p0    # "array":Ljava/lang/Object;
    int-to-long v0, p2

    #@2d
    aput-wide v0, p0, p1

    #@2f
    goto :goto_0

    #@30
    .line 606
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->badArray(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    #@33
    move-result-object v0

    #@34
    throw v0
.end method
