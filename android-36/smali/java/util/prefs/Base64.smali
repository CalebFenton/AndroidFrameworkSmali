.class Ljava/util/prefs/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final blacklist altBase64ToInt:[B

.field private static final blacklist base64ToInt:[B

.field private static final blacklist intToAltBase64:[C

.field private static final blacklist intToBase64:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 100
    const/16 v0, 0x40

    new-array v1, v0, [C

    fill-array-data v1, :array_24

    sput-object v1, Ljava/util/prefs/Base64;->intToBase64:[C

    .line 115
    new-array v0, v0, [C

    fill-array-data v0, :array_68

    sput-object v0, Ljava/util/prefs/Base64;->intToAltBase64:[C

    .line 214
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_ac

    sput-object v0, Ljava/util/prefs/Base64;->base64ToInt:[B

    .line 228
    const/16 v0, 0x7f

    new-array v0, v0, [B

    fill-array-data v0, :array_ee

    sput-object v0, Ljava/util/prefs/Base64;->altBase64ToInt:[B

    return-void

    nop

    :array_24
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_68
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2cs
        0x2ds
        0x2es
        0x3as
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5ds
        0x5es
        0x60s
        0x5fs
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x3fs
    .end array-data

    :array_ac
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data

    :array_ee
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        -0x1t
        0x3et
        0x9t
        0xat
        0xbt
        -0x1t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xct
        0xdt
        0xet
        -0x1t
        0xft
        0x3ft
        0x10t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x11t
        -0x1t
        0x12t
        0x13t
        0x15t
        0x14t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist altBase64ToByteArray(Ljava/lang/String;)[B
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 143
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/prefs/Base64;->base64ToByteArray(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static blacklist base64ToByteArray(Ljava/lang/String;)[B
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/prefs/Base64;->base64ToByteArray(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist base64ToByteArray(Ljava/lang/String;Z)[B
    .registers 19
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "alternate"    # Z

    .line 147
    move-object/from16 v0, p0

    if-eqz p1, :cond_7

    sget-object v1, Ljava/util/prefs/Base64;->altBase64ToInt:[B

    goto :goto_9

    :cond_7
    sget-object v1, Ljava/util/prefs/Base64;->base64ToInt:[B

    .line 148
    .local v1, "alphaToInt":[B
    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 149
    .local v2, "sLen":I
    div-int/lit8 v3, v2, 0x4

    .line 150
    .local v3, "numGroups":I
    mul-int/lit8 v4, v3, 0x4

    if-ne v4, v2, :cond_c1

    .line 153
    const/4 v4, 0x0

    .line 154
    .local v4, "missingBytesInLastGroup":I
    move v5, v3

    .line 155
    .local v5, "numFullGroups":I
    if-eqz v2, :cond_2f

    .line 156
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_25

    .line 157
    add-int/lit8 v4, v4, 0x1

    .line 158
    add-int/lit8 v5, v5, -0x1

    .line 160
    :cond_25
    add-int/lit8 v6, v2, -0x2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_2f

    .line 161
    add-int/lit8 v4, v4, 0x1

    .line 163
    :cond_2f
    mul-int/lit8 v6, v3, 0x3

    sub-int/2addr v6, v4

    new-array v6, v6, [B

    .line 166
    .local v6, "result":[B
    const/4 v7, 0x0

    .local v7, "inCursor":I
    const/4 v8, 0x0

    .line 167
    .local v8, "outCursor":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_37
    if-ge v9, v5, :cond_84

    .line 168
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "inCursor":I
    .local v10, "inCursor":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v1}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v7

    .line 169
    .local v7, "ch0":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "inCursor":I
    .local v11, "inCursor":I
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v1}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v10

    .line 170
    .local v10, "ch1":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "inCursor":I
    .local v12, "inCursor":I
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11, v1}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v11

    .line 171
    .local v11, "ch2":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "inCursor":I
    .local v13, "inCursor":I
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12, v1}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v12

    .line 172
    .local v12, "ch3":I
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "outCursor":I
    .local v14, "outCursor":I
    shl-int/lit8 v15, v7, 0x2

    shr-int/lit8 v16, v10, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v6, v8

    .line 173
    add-int/lit8 v8, v14, 0x1

    .end local v14    # "outCursor":I
    .restart local v8    # "outCursor":I
    shl-int/lit8 v15, v10, 0x4

    shr-int/lit8 v16, v11, 0x2

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v6, v14

    .line 174
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "outCursor":I
    .restart local v14    # "outCursor":I
    shl-int/lit8 v15, v11, 0x6

    or-int/2addr v15, v12

    int-to-byte v15, v15

    aput-byte v15, v6, v8

    .line 167
    .end local v7    # "ch0":I
    .end local v10    # "ch1":I
    .end local v11    # "ch2":I
    .end local v12    # "ch3":I
    add-int/lit8 v9, v9, 0x1

    move v7, v13

    move v8, v14

    goto :goto_37

    .line 178
    .end local v9    # "i":I
    .end local v13    # "inCursor":I
    .end local v14    # "outCursor":I
    .local v7, "inCursor":I
    .restart local v8    # "outCursor":I
    :cond_84
    if-eqz v4, :cond_c0

    .line 179
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "inCursor":I
    .local v9, "inCursor":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v1}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v7

    .line 180
    .local v7, "ch0":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "inCursor":I
    .local v10, "inCursor":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v1}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v9

    .line 181
    .local v9, "ch1":I
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "outCursor":I
    .local v11, "outCursor":I
    shl-int/lit8 v12, v7, 0x2

    shr-int/lit8 v13, v9, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v6, v8

    .line 183
    const/4 v8, 0x1

    if-ne v4, v8, :cond_be

    .line 184
    add-int/lit8 v8, v10, 0x1

    .end local v10    # "inCursor":I
    .local v8, "inCursor":I
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v1}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v10

    .line 185
    .local v10, "ch2":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "outCursor":I
    .local v12, "outCursor":I
    shl-int/lit8 v13, v9, 0x4

    shr-int/lit8 v14, v10, 0x2

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v6, v11

    move v7, v8

    move v8, v12

    goto :goto_c0

    .line 183
    .end local v8    # "inCursor":I
    .end local v12    # "outCursor":I
    .local v10, "inCursor":I
    .restart local v11    # "outCursor":I
    :cond_be
    move v7, v10

    move v8, v11

    .line 190
    .end local v9    # "ch1":I
    .end local v10    # "inCursor":I
    .end local v11    # "outCursor":I
    .local v7, "inCursor":I
    .local v8, "outCursor":I
    :cond_c0
    :goto_c0
    return-object v6

    .line 151
    .end local v4    # "missingBytesInLastGroup":I
    .end local v5    # "numFullGroups":I
    .end local v6    # "result":[B
    .end local v7    # "inCursor":I
    .end local v8    # "outCursor":I
    :cond_c1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "String length must be a multiple of four."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static blacklist base64toInt(C[B)I
    .registers 6
    .param p0, "c"    # C
    .param p1, "alphaToInt"    # [B

    .line 201
    aget-byte v0, p1, p0

    .line 202
    .local v0, "result":I
    if-ltz v0, :cond_5

    .line 204
    return v0

    .line 203
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist byteArrayToAltBase64([B)Ljava/lang/String;
    .registers 2
    .param p0, "a"    # [B

    .line 52
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/prefs/Base64;->byteArrayToBase64([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist byteArrayToBase64([B)Ljava/lang/String;
    .registers 2
    .param p0, "a"    # [B

    .line 42
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/prefs/Base64;->byteArrayToBase64([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist byteArrayToBase64([BZ)Ljava/lang/String;
    .registers 15
    .param p0, "a"    # [B
    .param p1, "alternate"    # Z

    .line 56
    array-length v0, p0

    .line 57
    .local v0, "aLen":I
    div-int/lit8 v1, v0, 0x3

    .line 58
    .local v1, "numFullGroups":I
    mul-int/lit8 v2, v1, 0x3

    sub-int v2, v0, v2

    .line 59
    .local v2, "numBytesInPartialGroup":I
    add-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    .line 60
    .local v3, "resultLen":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 61
    .local v4, "result":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_17

    sget-object v5, Ljava/util/prefs/Base64;->intToAltBase64:[C

    goto :goto_19

    :cond_17
    sget-object v5, Ljava/util/prefs/Base64;->intToBase64:[C

    .line 64
    .local v5, "intToAlpha":[C
    :goto_19
    const/4 v6, 0x0

    .line 65
    .local v6, "inCursor":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1b
    if-ge v7, v1, :cond_59

    .line 66
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "inCursor":I
    .local v8, "inCursor":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 67
    .local v6, "byte0":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "inCursor":I
    .local v9, "inCursor":I
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    .line 68
    .local v8, "byte1":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "inCursor":I
    .local v10, "inCursor":I
    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    .line 69
    .local v9, "byte2":I
    shr-int/lit8 v11, v6, 0x2

    aget-char v11, v5, v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    shl-int/lit8 v11, v6, 0x4

    and-int/lit8 v11, v11, 0x3f

    shr-int/lit8 v12, v8, 0x4

    or-int/2addr v11, v12

    aget-char v11, v5, v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    shl-int/lit8 v11, v8, 0x2

    and-int/lit8 v11, v11, 0x3f

    shr-int/lit8 v12, v9, 0x6

    or-int/2addr v11, v12

    aget-char v11, v5, v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    and-int/lit8 v11, v9, 0x3f

    aget-char v11, v5, v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    .end local v6    # "byte0":I
    .end local v8    # "byte1":I
    .end local v9    # "byte2":I
    add-int/lit8 v7, v7, 0x1

    move v6, v10

    goto :goto_1b

    .line 76
    .end local v7    # "i":I
    .end local v10    # "inCursor":I
    .local v6, "inCursor":I
    :cond_59
    if-eqz v2, :cond_9c

    .line 77
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "inCursor":I
    .local v7, "inCursor":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 78
    .local v6, "byte0":I
    shr-int/lit8 v8, v6, 0x2

    aget-char v8, v5, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    const/4 v8, 0x1

    if-ne v2, v8, :cond_7b

    .line 80
    shl-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v5, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    const-string v8, "=="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v6, v7

    goto :goto_9c

    .line 84
    :cond_7b
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "inCursor":I
    .local v8, "inCursor":I
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    .line 85
    .local v7, "byte1":I
    shl-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0x3f

    shr-int/lit8 v10, v7, 0x4

    or-int/2addr v9, v10

    aget-char v9, v5, v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    shl-int/lit8 v9, v7, 0x2

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v5, v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    const/16 v9, 0x3d

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v8

    .line 92
    .end local v7    # "byte1":I
    .end local v8    # "inCursor":I
    .local v6, "inCursor":I
    :cond_9c
    :goto_9c
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static blacklist main([Ljava/lang/String;)V
    .registers 11
    .param p0, "args"    # [Ljava/lang/String;

    .line 240
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "numRuns":I
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, "numBytes":I
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 243
    .local v2, "rnd":Ljava/util/Random;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v0, :cond_58

    .line 244
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_17
    if-ge v4, v1, :cond_55

    .line 245
    new-array v5, v4, [B

    .line 246
    .local v5, "arr":[B
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1c
    if-ge v6, v4, :cond_28

    .line 247
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 246
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 249
    .end local v6    # "k":I
    :cond_28
    invoke-static {v5}, Ljava/util/prefs/Base64;->byteArrayToBase64([B)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Ljava/util/prefs/Base64;->base64ToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 251
    .local v7, "b":[B
    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_3d

    .line 252
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Dismal failure!"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    :cond_3d
    invoke-static {v5}, Ljava/util/prefs/Base64;->byteArrayToAltBase64([B)Ljava/lang/String;

    move-result-object v6

    .line 255
    invoke-static {v6}, Ljava/util/prefs/Base64;->altBase64ToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 256
    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_52

    .line 257
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Alternate dismal failure!"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    .end local v5    # "arr":[B
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "b":[B
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 243
    .end local v4    # "j":I
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 260
    .end local v3    # "i":I
    :cond_58
    return-void
.end method
