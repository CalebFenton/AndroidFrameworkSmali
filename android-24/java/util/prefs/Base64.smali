.class Ljava/util/prefs/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final altBase64ToInt:[B

.field private static final base64ToInt:[B

.field private static final intToAltBase64:[C

.field private static final intToBase64:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x40

    #@2
    .line 100
    new-array v0, v1, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Ljava/util/prefs/Base64;->intToBase64:[C

    #@9
    .line 115
    new-array v0, v1, [C

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Ljava/util/prefs/Base64;->intToAltBase64:[C

    #@10
    .line 214
    const/16 v0, 0x7b

    #@12
    new-array v0, v0, [B

    #@14
    fill-array-data v0, :array_2

    #@17
    sput-object v0, Ljava/util/prefs/Base64;->base64ToInt:[B

    #@19
    .line 228
    const/16 v0, 0x7f

    #@1b
    new-array v0, v0, [B

    #@1d
    fill-array-data v0, :array_3

    #@20
    sput-object v0, Ljava/util/prefs/Base64;->altBase64ToInt:[B

    #@22
    .line 36
    return-void

    #@23
    .line 100
    nop

    #@24
    :array_0
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

    #@68
    .line 115
    :array_1
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

    #@ac
    .line 214
    :array_2
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

    #@ee
    .line 228
    :array_3
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

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static altBase64ToByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 143
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Ljava/util/prefs/Base64;->base64ToByteArray(Ljava/lang/String;Z)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static base64ToByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/util/prefs/Base64;->base64ToByteArray(Ljava/lang/String;Z)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static base64ToByteArray(Ljava/lang/String;Z)[B
    .locals 19
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "alternate"    # Z

    #@0
    .prologue
    .line 147
    if-eqz p1, :cond_0

    #@2
    sget-object v2, Ljava/util/prefs/Base64;->altBase64ToInt:[B

    #@4
    .line 148
    .local v2, "alphaToInt":[B
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@7
    move-result v16

    #@8
    .line 149
    .local v16, "sLen":I
    div-int/lit8 v12, v16, 0x4

    #@a
    .line 150
    .local v12, "numGroups":I
    mul-int/lit8 v17, v12, 0x4

    #@c
    move/from16 v0, v17

    #@e
    move/from16 v1, v16

    #@10
    if-eq v0, v1, :cond_1

    #@12
    .line 151
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #@14
    .line 152
    const-string/jumbo v18, "String length must be a multiple of four."

    #@17
    .line 151
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v17

    #@1b
    .line 147
    .end local v2    # "alphaToInt":[B
    .end local v12    # "numGroups":I
    .end local v16    # "sLen":I
    :cond_0
    sget-object v2, Ljava/util/prefs/Base64;->base64ToInt:[B

    #@1d
    .restart local v2    # "alphaToInt":[B
    goto :goto_0

    #@1e
    .line 153
    .restart local v12    # "numGroups":I
    .restart local v16    # "sLen":I
    :cond_1
    const/4 v10, 0x0

    #@1f
    .line 154
    .local v10, "missingBytesInLastGroup":I
    move v11, v12

    #@20
    .line 155
    .local v11, "numFullGroups":I
    if-eqz v16, :cond_3

    #@22
    .line 156
    add-int/lit8 v17, v16, -0x1

    #@24
    move-object/from16 v0, p0

    #@26
    move/from16 v1, v17

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v17

    #@2c
    const/16 v18, 0x3d

    #@2e
    move/from16 v0, v17

    #@30
    move/from16 v1, v18

    #@32
    if-ne v0, v1, :cond_2

    #@34
    .line 157
    const/4 v10, 0x1

    #@35
    .line 158
    add-int/lit8 v11, v12, -0x1

    #@37
    .line 160
    :cond_2
    add-int/lit8 v17, v16, -0x2

    #@39
    move-object/from16 v0, p0

    #@3b
    move/from16 v1, v17

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@40
    move-result v17

    #@41
    const/16 v18, 0x3d

    #@43
    move/from16 v0, v17

    #@45
    move/from16 v1, v18

    #@47
    if-ne v0, v1, :cond_3

    #@49
    .line 161
    add-int/lit8 v10, v10, 0x1

    #@4b
    .line 163
    :cond_3
    mul-int/lit8 v17, v12, 0x3

    #@4d
    sub-int v17, v17, v10

    #@4f
    move/from16 v0, v17

    #@51
    new-array v15, v0, [B

    #@53
    .line 166
    .local v15, "result":[B
    const/4 v8, 0x0

    #@54
    .local v8, "inCursor":I
    const/4 v13, 0x0

    #@55
    .line 167
    .local v13, "outCursor":I
    const/4 v7, 0x0

    #@56
    .local v7, "i":I
    move v14, v13

    #@57
    .end local v13    # "outCursor":I
    .local v14, "outCursor":I
    move v9, v8

    #@58
    .end local v8    # "inCursor":I
    .local v9, "inCursor":I
    :goto_1
    if-ge v7, v11, :cond_4

    #@5a
    .line 168
    add-int/lit8 v8, v9, 0x1

    #@5c
    .end local v9    # "inCursor":I
    .restart local v8    # "inCursor":I
    move-object/from16 v0, p0

    #@5e
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    #@61
    move-result v17

    #@62
    move/from16 v0, v17

    #@64
    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    #@67
    move-result v3

    #@68
    .line 169
    .local v3, "ch0":I
    add-int/lit8 v9, v8, 0x1

    #@6a
    .end local v8    # "inCursor":I
    .restart local v9    # "inCursor":I
    move-object/from16 v0, p0

    #@6c
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    #@6f
    move-result v17

    #@70
    move/from16 v0, v17

    #@72
    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    #@75
    move-result v4

    #@76
    .line 170
    .local v4, "ch1":I
    add-int/lit8 v8, v9, 0x1

    #@78
    .end local v9    # "inCursor":I
    .restart local v8    # "inCursor":I
    move-object/from16 v0, p0

    #@7a
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    #@7d
    move-result v17

    #@7e
    move/from16 v0, v17

    #@80
    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    #@83
    move-result v5

    #@84
    .line 171
    .local v5, "ch2":I
    add-int/lit8 v9, v8, 0x1

    #@86
    .end local v8    # "inCursor":I
    .restart local v9    # "inCursor":I
    move-object/from16 v0, p0

    #@88
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    #@8b
    move-result v17

    #@8c
    move/from16 v0, v17

    #@8e
    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    #@91
    move-result v6

    #@92
    .line 172
    .local v6, "ch3":I
    add-int/lit8 v13, v14, 0x1

    #@94
    .end local v14    # "outCursor":I
    .restart local v13    # "outCursor":I
    shl-int/lit8 v17, v3, 0x2

    #@96
    shr-int/lit8 v18, v4, 0x4

    #@98
    or-int v17, v17, v18

    #@9a
    move/from16 v0, v17

    #@9c
    int-to-byte v0, v0

    #@9d
    move/from16 v17, v0

    #@9f
    aput-byte v17, v15, v14

    #@a1
    .line 173
    add-int/lit8 v14, v13, 0x1

    #@a3
    .end local v13    # "outCursor":I
    .restart local v14    # "outCursor":I
    shl-int/lit8 v17, v4, 0x4

    #@a5
    shr-int/lit8 v18, v5, 0x2

    #@a7
    or-int v17, v17, v18

    #@a9
    move/from16 v0, v17

    #@ab
    int-to-byte v0, v0

    #@ac
    move/from16 v17, v0

    #@ae
    aput-byte v17, v15, v13

    #@b0
    .line 174
    add-int/lit8 v13, v14, 0x1

    #@b2
    .end local v14    # "outCursor":I
    .restart local v13    # "outCursor":I
    shl-int/lit8 v17, v5, 0x6

    #@b4
    or-int v17, v17, v6

    #@b6
    move/from16 v0, v17

    #@b8
    int-to-byte v0, v0

    #@b9
    move/from16 v17, v0

    #@bb
    aput-byte v17, v15, v14

    #@bd
    .line 167
    add-int/lit8 v7, v7, 0x1

    #@bf
    move v14, v13

    #@c0
    .end local v13    # "outCursor":I
    .restart local v14    # "outCursor":I
    goto :goto_1

    #@c1
    .line 178
    .end local v3    # "ch0":I
    .end local v4    # "ch1":I
    .end local v5    # "ch2":I
    .end local v6    # "ch3":I
    :cond_4
    if-eqz v10, :cond_6

    #@c3
    .line 179
    add-int/lit8 v8, v9, 0x1

    #@c5
    .end local v9    # "inCursor":I
    .restart local v8    # "inCursor":I
    move-object/from16 v0, p0

    #@c7
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    #@ca
    move-result v17

    #@cb
    move/from16 v0, v17

    #@cd
    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    #@d0
    move-result v3

    #@d1
    .line 180
    .restart local v3    # "ch0":I
    add-int/lit8 v9, v8, 0x1

    #@d3
    .end local v8    # "inCursor":I
    .restart local v9    # "inCursor":I
    move-object/from16 v0, p0

    #@d5
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    #@d8
    move-result v17

    #@d9
    move/from16 v0, v17

    #@db
    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    #@de
    move-result v4

    #@df
    .line 181
    .restart local v4    # "ch1":I
    add-int/lit8 v13, v14, 0x1

    #@e1
    .end local v14    # "outCursor":I
    .restart local v13    # "outCursor":I
    shl-int/lit8 v17, v3, 0x2

    #@e3
    shr-int/lit8 v18, v4, 0x4

    #@e5
    or-int v17, v17, v18

    #@e7
    move/from16 v0, v17

    #@e9
    int-to-byte v0, v0

    #@ea
    move/from16 v17, v0

    #@ec
    aput-byte v17, v15, v14

    #@ee
    .line 183
    const/16 v17, 0x1

    #@f0
    move/from16 v0, v17

    #@f2
    if-ne v10, v0, :cond_5

    #@f4
    .line 184
    add-int/lit8 v8, v9, 0x1

    #@f6
    .end local v9    # "inCursor":I
    .restart local v8    # "inCursor":I
    move-object/from16 v0, p0

    #@f8
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    #@fb
    move-result v17

    #@fc
    move/from16 v0, v17

    #@fe
    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    #@101
    move-result v5

    #@102
    .line 185
    .restart local v5    # "ch2":I
    add-int/lit8 v14, v13, 0x1

    #@104
    .end local v13    # "outCursor":I
    .restart local v14    # "outCursor":I
    shl-int/lit8 v17, v4, 0x4

    #@106
    shr-int/lit8 v18, v5, 0x2

    #@108
    or-int v17, v17, v18

    #@10a
    move/from16 v0, v17

    #@10c
    int-to-byte v0, v0

    #@10d
    move/from16 v17, v0

    #@10f
    aput-byte v17, v15, v13

    #@111
    move v13, v14

    #@112
    .line 190
    .end local v3    # "ch0":I
    .end local v4    # "ch1":I
    .end local v5    # "ch2":I
    .end local v14    # "outCursor":I
    .restart local v13    # "outCursor":I
    :goto_2
    return-object v15

    #@113
    .end local v8    # "inCursor":I
    .restart local v3    # "ch0":I
    .restart local v4    # "ch1":I
    .restart local v9    # "inCursor":I
    :cond_5
    move v8, v9

    #@114
    .end local v9    # "inCursor":I
    .restart local v8    # "inCursor":I
    goto :goto_2

    #@115
    .end local v3    # "ch0":I
    .end local v4    # "ch1":I
    .end local v8    # "inCursor":I
    .end local v13    # "outCursor":I
    .restart local v9    # "inCursor":I
    .restart local v14    # "outCursor":I
    :cond_6
    move v13, v14

    #@116
    .end local v14    # "outCursor":I
    .restart local v13    # "outCursor":I
    move v8, v9

    #@117
    .end local v9    # "inCursor":I
    .restart local v8    # "inCursor":I
    goto :goto_2
.end method

.method private static base64toInt(C[B)I
    .locals 4
    .param p0, "c"    # C
    .param p1, "alphaToInt"    # [B

    #@0
    .prologue
    .line 201
    aget-byte v0, p1, p0

    #@2
    .line 202
    .local v0, "result":I
    if-gez v0, :cond_0

    #@4
    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Illegal character "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 204
    :cond_0
    return v0
.end method

.method static byteArrayToAltBase64([B)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # [B

    #@0
    .prologue
    .line 52
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Ljava/util/prefs/Base64;->byteArrayToBase64([BZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static byteArrayToBase64([B)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # [B

    #@0
    .prologue
    .line 42
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/util/prefs/Base64;->byteArrayToBase64([BZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static byteArrayToBase64([BZ)Ljava/lang/String;
    .locals 14
    .param p0, "a"    # [B
    .param p1, "alternate"    # Z

    #@0
    .prologue
    .line 56
    array-length v0, p0

    #@1
    .line 57
    .local v0, "aLen":I
    div-int/lit8 v9, v0, 0x3

    #@3
    .line 58
    .local v9, "numFullGroups":I
    mul-int/lit8 v12, v9, 0x3

    #@5
    sub-int v8, v0, v12

    #@7
    .line 59
    .local v8, "numBytesInPartialGroup":I
    add-int/lit8 v12, v0, 0x2

    #@9
    div-int/lit8 v12, v12, 0x3

    #@b
    mul-int/lit8 v11, v12, 0x4

    #@d
    .line 60
    .local v11, "resultLen":I
    new-instance v10, Ljava/lang/StringBuffer;

    #@f
    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    #@12
    .line 61
    .local v10, "result":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    #@14
    sget-object v7, Ljava/util/prefs/Base64;->intToAltBase64:[C

    #@16
    .line 64
    .local v7, "intToAlpha":[C
    :goto_0
    const/4 v5, 0x0

    #@17
    .line 65
    .local v5, "inCursor":I
    const/4 v4, 0x0

    #@18
    .local v4, "i":I
    move v6, v5

    #@19
    .end local v5    # "inCursor":I
    .local v6, "inCursor":I
    :goto_1
    if-ge v4, v9, :cond_1

    #@1b
    .line 66
    add-int/lit8 v5, v6, 0x1

    #@1d
    .end local v6    # "inCursor":I
    .restart local v5    # "inCursor":I
    aget-byte v12, p0, v6

    #@1f
    and-int/lit16 v1, v12, 0xff

    #@21
    .line 67
    .local v1, "byte0":I
    add-int/lit8 v6, v5, 0x1

    #@23
    .end local v5    # "inCursor":I
    .restart local v6    # "inCursor":I
    aget-byte v12, p0, v5

    #@25
    and-int/lit16 v2, v12, 0xff

    #@27
    .line 68
    .local v2, "byte1":I
    add-int/lit8 v5, v6, 0x1

    #@29
    .end local v6    # "inCursor":I
    .restart local v5    # "inCursor":I
    aget-byte v12, p0, v6

    #@2b
    and-int/lit16 v3, v12, 0xff

    #@2d
    .line 69
    .local v3, "byte2":I
    shr-int/lit8 v12, v1, 0x2

    #@2f
    aget-char v12, v7, v12

    #@31
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@34
    .line 70
    shl-int/lit8 v12, v1, 0x4

    #@36
    and-int/lit8 v12, v12, 0x3f

    #@38
    shr-int/lit8 v13, v2, 0x4

    #@3a
    or-int/2addr v12, v13

    #@3b
    aget-char v12, v7, v12

    #@3d
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@40
    .line 71
    shl-int/lit8 v12, v2, 0x2

    #@42
    and-int/lit8 v12, v12, 0x3f

    #@44
    shr-int/lit8 v13, v3, 0x6

    #@46
    or-int/2addr v12, v13

    #@47
    aget-char v12, v7, v12

    #@49
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4c
    .line 72
    and-int/lit8 v12, v3, 0x3f

    #@4e
    aget-char v12, v7, v12

    #@50
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@53
    .line 65
    add-int/lit8 v4, v4, 0x1

    #@55
    move v6, v5

    #@56
    .end local v5    # "inCursor":I
    .restart local v6    # "inCursor":I
    goto :goto_1

    #@57
    .line 61
    .end local v1    # "byte0":I
    .end local v2    # "byte1":I
    .end local v3    # "byte2":I
    .end local v4    # "i":I
    .end local v6    # "inCursor":I
    .end local v7    # "intToAlpha":[C
    :cond_0
    sget-object v7, Ljava/util/prefs/Base64;->intToBase64:[C

    #@59
    .restart local v7    # "intToAlpha":[C
    goto :goto_0

    #@5a
    .line 76
    .restart local v4    # "i":I
    .restart local v6    # "inCursor":I
    :cond_1
    if-eqz v8, :cond_3

    #@5c
    .line 77
    add-int/lit8 v5, v6, 0x1

    #@5e
    .end local v6    # "inCursor":I
    .restart local v5    # "inCursor":I
    aget-byte v12, p0, v6

    #@60
    and-int/lit16 v1, v12, 0xff

    #@62
    .line 78
    .restart local v1    # "byte0":I
    shr-int/lit8 v12, v1, 0x2

    #@64
    aget-char v12, v7, v12

    #@66
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@69
    .line 79
    const/4 v12, 0x1

    #@6a
    if-ne v8, v12, :cond_2

    #@6c
    .line 80
    shl-int/lit8 v12, v1, 0x4

    #@6e
    and-int/lit8 v12, v12, 0x3f

    #@70
    aget-char v12, v7, v12

    #@72
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@75
    .line 81
    const-string/jumbo v12, "=="

    #@78
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7b
    .line 92
    .end local v1    # "byte0":I
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@7e
    move-result-object v12

    #@7f
    return-object v12

    #@80
    .line 84
    .restart local v1    # "byte0":I
    :cond_2
    add-int/lit8 v6, v5, 0x1

    #@82
    .end local v5    # "inCursor":I
    .restart local v6    # "inCursor":I
    aget-byte v12, p0, v5

    #@84
    and-int/lit16 v2, v12, 0xff

    #@86
    .line 85
    .restart local v2    # "byte1":I
    shl-int/lit8 v12, v1, 0x4

    #@88
    and-int/lit8 v12, v12, 0x3f

    #@8a
    shr-int/lit8 v13, v2, 0x4

    #@8c
    or-int/2addr v12, v13

    #@8d
    aget-char v12, v7, v12

    #@8f
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@92
    .line 86
    shl-int/lit8 v12, v2, 0x2

    #@94
    and-int/lit8 v12, v12, 0x3f

    #@96
    aget-char v12, v7, v12

    #@98
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@9b
    .line 87
    const/16 v12, 0x3d

    #@9d
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@a0
    move v5, v6

    #@a1
    .end local v6    # "inCursor":I
    .restart local v5    # "inCursor":I
    goto :goto_2

    #@a2
    .end local v1    # "byte0":I
    .end local v2    # "byte1":I
    .end local v5    # "inCursor":I
    .restart local v6    # "inCursor":I
    :cond_3
    move v5, v6

    #@a3
    .end local v6    # "inCursor":I
    .restart local v5    # "inCursor":I
    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 240
    const/4 v9, 0x0

    #@1
    aget-object v9, p0, v9

    #@3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6
    move-result v6

    #@7
    .line 241
    .local v6, "numRuns":I
    const/4 v9, 0x1

    #@8
    aget-object v9, p0, v9

    #@a
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d
    move-result v5

    #@e
    .line 242
    .local v5, "numBytes":I
    new-instance v7, Ljava/util/Random;

    #@10
    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    #@13
    .line 243
    .local v7, "rnd":Ljava/util/Random;
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_4

    #@16
    .line 244
    const/4 v3, 0x0

    #@17
    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_3

    #@19
    .line 245
    new-array v0, v3, [B

    #@1b
    .line 246
    .local v0, "arr":[B
    const/4 v4, 0x0

    #@1c
    .local v4, "k":I
    :goto_2
    if-ge v4, v3, :cond_0

    #@1e
    .line 247
    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    #@21
    move-result v9

    #@22
    int-to-byte v9, v9

    #@23
    aput-byte v9, v0, v4

    #@25
    .line 246
    add-int/lit8 v4, v4, 0x1

    #@27
    goto :goto_2

    #@28
    .line 249
    :cond_0
    invoke-static {v0}, Ljava/util/prefs/Base64;->byteArrayToBase64([B)Ljava/lang/String;

    #@2b
    move-result-object v8

    #@2c
    .line 250
    .local v8, "s":Ljava/lang/String;
    invoke-static {v8}, Ljava/util/prefs/Base64;->base64ToByteArray(Ljava/lang/String;)[B

    #@2f
    move-result-object v1

    #@30
    .line 251
    .local v1, "b":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@33
    move-result v9

    #@34
    if-nez v9, :cond_1

    #@36
    .line 252
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@38
    const-string/jumbo v10, "Dismal failure!"

    #@3b
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3e
    .line 254
    :cond_1
    invoke-static {v0}, Ljava/util/prefs/Base64;->byteArrayToAltBase64([B)Ljava/lang/String;

    #@41
    move-result-object v8

    #@42
    .line 255
    invoke-static {v8}, Ljava/util/prefs/Base64;->altBase64ToByteArray(Ljava/lang/String;)[B

    #@45
    move-result-object v1

    #@46
    .line 256
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@49
    move-result v9

    #@4a
    if-nez v9, :cond_2

    #@4c
    .line 257
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4e
    const-string/jumbo v10, "Alternate dismal failure!"

    #@51
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@54
    .line 244
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@56
    goto :goto_1

    #@57
    .line 243
    .end local v0    # "arr":[B
    .end local v1    # "b":[B
    .end local v4    # "k":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 239
    .end local v3    # "j":I
    :cond_4
    return-void
.end method
