.class public Lorg/apache/xml/utils/XMLChar;
.super Ljava/lang/Object;
.source "XMLChar.java"


# static fields
.field private static final greylist CHARS:[B

.field public static final greylist MASK_CONTENT:I = 0x20

.field public static final greylist MASK_NAME:I = 0x8

.field public static final greylist MASK_NAME_START:I = 0x4

.field public static final greylist MASK_NCNAME:I = 0x80

.field public static final greylist MASK_NCNAME_START:I = 0x40

.field public static final greylist MASK_PUBID:I = 0x10

.field public static final greylist MASK_SPACE:I = 0x2

.field public static final greylist MASK_VALID:I = 0x1


# direct methods
.method static constructor greylist <clinit>()V
    .registers 21

    const/high16 v1, 0x10000

    .line 54
    new-array v1, v1, [B

    sput-object v1, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/16 v4, 0x20

    const/16 v5, 0x8

    .line 98
    new-array v6, v5, [I

    fill-array-data v6, :array_1c4

    .line 106
    filled-new-array {v4, v1, v3, v2}, [I

    move-result-object v4

    const/16 v7, 0x2d

    const/16 v8, 0x2e

    .line 115
    filled-new-array {v7, v8}, [I

    move-result-object v7

    const/16 v8, 0x5f

    const/16 v9, 0x3a

    .line 123
    filled-new-array {v9, v8}, [I

    move-result-object v8

    .line 131
    new-array v10, v1, [I

    fill-array-data v10, :array_1d8

    const/4 v11, 0x6

    .line 136
    new-array v12, v11, [I

    fill-array-data v12, :array_1ee

    const/16 v13, 0x12e

    .line 144
    new-array v14, v13, [I

    fill-array-data v14, :array_1fe

    const/16 v15, 0x35

    move/from16 v16, v9

    .line 187
    new-array v9, v15, [I

    fill-array-data v9, :array_45e

    const/16 v1, 0x84

    .line 204
    new-array v15, v1, [I

    fill-array-data v15, :array_4cc

    const/16 v1, 0x1d

    .line 224
    new-array v13, v1, [I

    fill-array-data v13, :array_5d8

    const/16 v1, 0x1e

    const/16 v17, 0x2

    .line 235
    new-array v0, v1, [I

    fill-array-data v0, :array_616

    .line 246
    new-array v1, v11, [I

    fill-array-data v1, :array_656

    .line 250
    new-array v11, v5, [I

    fill-array-data v11, :array_666

    const/16 v5, 0x26

    move-object/from16 v18, v0

    const/16 v0, 0x5d

    move-object/from16 v19, v1

    const/16 v1, 0x3c

    .line 258
    filled-new-array {v1, v5, v2, v3, v0}, [I

    move-result-object v0

    const/4 v2, 0x0

    :goto_74
    const/16 v3, 0x8

    if-ge v2, v3, :cond_8f

    .line 268
    aget v3, v6, v2

    :goto_7a
    add-int/lit8 v5, v2, 0x1

    aget v5, v6, v5

    if-gt v3, v5, :cond_8c

    .line 269
    sget-object v5, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v20, v5, v3

    or-int/lit8 v1, v20, 0x21

    int-to-byte v1, v1

    aput-byte v1, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    :cond_8c
    add-int/lit8 v2, v2, 0x2

    goto :goto_74

    :cond_8f
    const/4 v1, 0x0

    :goto_90
    const/4 v2, 0x5

    if-ge v1, v2, :cond_a1

    .line 275
    sget-object v2, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v3, v0, v1

    aget-byte v5, v2, v3

    and-int/lit8 v5, v5, -0x21

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    :cond_a1
    const/4 v0, 0x0

    :goto_a2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_b3

    .line 280
    sget-object v1, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v2, v4, v0

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_a2

    :cond_b3
    const/4 v0, 0x0

    :goto_b4
    move/from16 v1, v17

    if-ge v0, v1, :cond_c8

    .line 285
    sget-object v1, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v2, v8, v0

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0xcc

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    const/16 v17, 0x2

    goto :goto_b4

    :cond_c8
    const/4 v0, 0x0

    const/16 v1, 0x12e

    :goto_cb
    if-ge v0, v1, :cond_e6

    .line 289
    aget v2, v14, v0

    :goto_cf
    add-int/lit8 v3, v0, 0x1

    aget v3, v14, v3

    if-gt v2, v3, :cond_e1

    .line 290
    sget-object v3, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v4, v3, v2

    or-int/lit16 v4, v4, 0xcc

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_cf

    :cond_e1
    const/16 v17, 0x2

    add-int/lit8 v0, v0, 0x2

    goto :goto_cb

    :cond_e6
    const/4 v0, 0x0

    const/16 v1, 0x35

    :goto_e9
    if-ge v0, v1, :cond_f9

    .line 295
    sget-object v2, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v3, v9, v0

    aget-byte v4, v2, v3

    or-int/lit16 v4, v4, 0xcc

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_e9

    :cond_f9
    const/4 v0, 0x0

    :goto_fa
    const/4 v1, 0x2

    if-ge v0, v1, :cond_10b

    .line 301
    sget-object v1, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v2, v7, v0

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x88

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_fa

    :cond_10b
    const/4 v0, 0x0

    const/16 v1, 0x1e

    :goto_10e
    if-ge v0, v1, :cond_129

    .line 304
    aget v2, v18, v0

    :goto_112
    add-int/lit8 v3, v0, 0x1

    aget v3, v18, v3

    if-gt v2, v3, :cond_124

    .line 305
    sget-object v3, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v4, v3, v2

    or-int/lit16 v4, v4, 0x88

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_112

    :cond_124
    const/16 v17, 0x2

    add-int/lit8 v0, v0, 0x2

    goto :goto_10e

    :cond_129
    const/4 v0, 0x0

    const/16 v1, 0x84

    :goto_12c
    if-ge v0, v1, :cond_147

    .line 309
    aget v2, v15, v0

    :goto_130
    add-int/lit8 v3, v0, 0x1

    aget v3, v15, v3

    if-gt v2, v3, :cond_142

    .line 310
    sget-object v3, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v4, v3, v2

    or-int/lit16 v4, v4, 0x88

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_130

    :cond_142
    const/16 v17, 0x2

    add-int/lit8 v0, v0, 0x2

    goto :goto_12c

    :cond_147
    const/4 v0, 0x0

    const/16 v1, 0x1d

    :goto_14a
    if-ge v0, v1, :cond_15a

    .line 314
    sget-object v2, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v3, v13, v0

    aget-byte v4, v2, v3

    or-int/lit16 v4, v4, 0x88

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_14a

    :cond_15a
    const/4 v0, 0x0

    :goto_15b
    const/4 v1, 0x6

    if-ge v0, v1, :cond_177

    .line 317
    aget v1, v19, v0

    :goto_160
    add-int/lit8 v2, v0, 0x1

    aget v2, v19, v2

    if-gt v1, v2, :cond_172

    .line 318
    sget-object v2, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v3, v2, v1

    or-int/lit16 v3, v3, 0x88

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_160

    :cond_172
    const/16 v17, 0x2

    add-int/lit8 v0, v0, 0x2

    goto :goto_15b

    :cond_177
    const/4 v0, 0x0

    const/16 v3, 0x8

    :goto_17a
    if-ge v0, v3, :cond_18a

    .line 322
    sget-object v1, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v2, v11, v0

    aget-byte v4, v1, v2

    or-int/lit16 v4, v4, 0x88

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_17a

    .line 326
    :cond_18a
    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v1, v0, v16

    and-int/lit16 v1, v1, -0xc1

    int-to-byte v1, v1

    aput-byte v1, v0, v16

    const/4 v0, 0x0

    :goto_194
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1a6

    .line 330
    sget-object v2, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget v3, v10, v0

    aget-byte v4, v2, v3

    or-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_194

    :cond_1a6
    const/4 v0, 0x6

    const/4 v1, 0x0

    :goto_1a8
    if-ge v1, v0, :cond_1c3

    .line 333
    aget v2, v12, v1

    :goto_1ac
    add-int/lit8 v3, v1, 0x1

    aget v3, v12, v3

    if-gt v2, v3, :cond_1be

    .line 334
    sget-object v3, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v4, v3, v2

    or-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1ac

    :cond_1be
    const/16 v17, 0x2

    add-int/lit8 v1, v1, 0x2

    goto :goto_1a8

    :cond_1c3
    return-void

    :array_1c4
    .array-data 4
        0x9
        0xa
        0xd
        0xd
        0x20
        0xd7ff
        0xe000
        0xfffd
    .end array-data

    :array_1d8
    .array-data 4
        0xa
        0xd
        0x20
        0x21
        0x23
        0x24
        0x25
        0x3d
        0x5f
    .end array-data

    :array_1ee
    .array-data 4
        0x27
        0x3b
        0x3f
        0x5a
        0x61
        0x7a
    .end array-data

    :array_1fe
    .array-data 4
        0x41
        0x5a
        0x61
        0x7a
        0xc0
        0xd6
        0xd8
        0xf6
        0xf8
        0x131
        0x134
        0x13e
        0x141
        0x148
        0x14a
        0x17e
        0x180
        0x1c3
        0x1cd
        0x1f0
        0x1f4
        0x1f5
        0x1fa
        0x217
        0x250
        0x2a8
        0x2bb
        0x2c1
        0x388
        0x38a
        0x38e
        0x3a1
        0x3a3
        0x3ce
        0x3d0
        0x3d6
        0x3e2
        0x3f3
        0x401
        0x40c
        0x40e
        0x44f
        0x451
        0x45c
        0x45e
        0x481
        0x490
        0x4c4
        0x4c7
        0x4c8
        0x4cb
        0x4cc
        0x4d0
        0x4eb
        0x4ee
        0x4f5
        0x4f8
        0x4f9
        0x531
        0x556
        0x561
        0x586
        0x5d0
        0x5ea
        0x5f0
        0x5f2
        0x621
        0x63a
        0x641
        0x64a
        0x671
        0x6b7
        0x6ba
        0x6be
        0x6c0
        0x6ce
        0x6d0
        0x6d3
        0x6e5
        0x6e6
        0x905
        0x939
        0x958
        0x961
        0x985
        0x98c
        0x98f
        0x990
        0x993
        0x9a8
        0x9aa
        0x9b0
        0x9b6
        0x9b9
        0x9dc
        0x9dd
        0x9df
        0x9e1
        0x9f0
        0x9f1
        0xa05
        0xa0a
        0xa0f
        0xa10
        0xa13
        0xa28
        0xa2a
        0xa30
        0xa32
        0xa33
        0xa35
        0xa36
        0xa38
        0xa39
        0xa59
        0xa5c
        0xa72
        0xa74
        0xa85
        0xa8b
        0xa8f
        0xa91
        0xa93
        0xaa8
        0xaaa
        0xab0
        0xab2
        0xab3
        0xab5
        0xab9
        0xb05
        0xb0c
        0xb0f
        0xb10
        0xb13
        0xb28
        0xb2a
        0xb30
        0xb32
        0xb33
        0xb36
        0xb39
        0xb5c
        0xb5d
        0xb5f
        0xb61
        0xb85
        0xb8a
        0xb8e
        0xb90
        0xb92
        0xb95
        0xb99
        0xb9a
        0xb9e
        0xb9f
        0xba3
        0xba4
        0xba8
        0xbaa
        0xbae
        0xbb5
        0xbb7
        0xbb9
        0xc05
        0xc0c
        0xc0e
        0xc10
        0xc12
        0xc28
        0xc2a
        0xc33
        0xc35
        0xc39
        0xc60
        0xc61
        0xc85
        0xc8c
        0xc8e
        0xc90
        0xc92
        0xca8
        0xcaa
        0xcb3
        0xcb5
        0xcb9
        0xce0
        0xce1
        0xd05
        0xd0c
        0xd0e
        0xd10
        0xd12
        0xd28
        0xd2a
        0xd39
        0xd60
        0xd61
        0xe01
        0xe2e
        0xe32
        0xe33
        0xe40
        0xe45
        0xe81
        0xe82
        0xe87
        0xe88
        0xe94
        0xe97
        0xe99
        0xe9f
        0xea1
        0xea3
        0xeaa
        0xeab
        0xead
        0xeae
        0xeb2
        0xeb3
        0xec0
        0xec4
        0xf40
        0xf47
        0xf49
        0xf69
        0x10a0
        0x10c5
        0x10d0
        0x10f6
        0x1102
        0x1103
        0x1105
        0x1107
        0x110b
        0x110c
        0x110e
        0x1112
        0x1154
        0x1155
        0x115f
        0x1161
        0x116d
        0x116e
        0x1172
        0x1173
        0x11ae
        0x11af
        0x11b7
        0x11b8
        0x11bc
        0x11c2
        0x1e00
        0x1e9b
        0x1ea0
        0x1ef9
        0x1f00
        0x1f15
        0x1f18
        0x1f1d
        0x1f20
        0x1f45
        0x1f48
        0x1f4d
        0x1f50
        0x1f57
        0x1f5f
        0x1f7d
        0x1f80
        0x1fb4
        0x1fb6
        0x1fbc
        0x1fc2
        0x1fc4
        0x1fc6
        0x1fcc
        0x1fd0
        0x1fd3
        0x1fd6
        0x1fdb
        0x1fe0
        0x1fec
        0x1ff2
        0x1ff4
        0x1ff6
        0x1ffc
        0x212a
        0x212b
        0x2180
        0x2182
        0x3041
        0x3094
        0x30a1
        0x30fa
        0x3105
        0x312c
        0xac00
        0xd7a3
        0x3021
        0x3029
        0x4e00
        0x9fa5
    .end array-data

    :array_45e
    .array-data 4
        0x386
        0x38c
        0x3da
        0x3dc
        0x3de
        0x3e0
        0x559
        0x6d5
        0x93d
        0x9b2
        0xa5e
        0xa8d
        0xabd
        0xae0
        0xb3d
        0xb9c
        0xcde
        0xe30
        0xe84
        0xe8a
        0xe8d
        0xea5
        0xea7
        0xeb0
        0xebd
        0x1100
        0x1109
        0x113c
        0x113e
        0x1140
        0x114c
        0x114e
        0x1150
        0x1159
        0x1163
        0x1165
        0x1167
        0x1169
        0x1175
        0x119e
        0x11a8
        0x11ab
        0x11ba
        0x11eb
        0x11f0
        0x11f9
        0x1f59
        0x1f5b
        0x1f5d
        0x1fbe
        0x2126
        0x212e
        0x3007
    .end array-data

    :array_4cc
    .array-data 4
        0x300
        0x345
        0x360
        0x361
        0x483
        0x486
        0x591
        0x5a1
        0x5a3
        0x5b9
        0x5bb
        0x5bd
        0x5c1
        0x5c2
        0x64b
        0x652
        0x6d6
        0x6dc
        0x6dd
        0x6df
        0x6e0
        0x6e4
        0x6e7
        0x6e8
        0x6ea
        0x6ed
        0x901
        0x903
        0x93e
        0x94c
        0x951
        0x954
        0x962
        0x963
        0x981
        0x983
        0x9c0
        0x9c4
        0x9c7
        0x9c8
        0x9cb
        0x9cd
        0x9e2
        0x9e3
        0xa40
        0xa42
        0xa47
        0xa48
        0xa4b
        0xa4d
        0xa70
        0xa71
        0xa81
        0xa83
        0xabe
        0xac5
        0xac7
        0xac9
        0xacb
        0xacd
        0xb01
        0xb03
        0xb3e
        0xb43
        0xb47
        0xb48
        0xb4b
        0xb4d
        0xb56
        0xb57
        0xb82
        0xb83
        0xbbe
        0xbc2
        0xbc6
        0xbc8
        0xbca
        0xbcd
        0xc01
        0xc03
        0xc3e
        0xc44
        0xc46
        0xc48
        0xc4a
        0xc4d
        0xc55
        0xc56
        0xc82
        0xc83
        0xcbe
        0xcc4
        0xcc6
        0xcc8
        0xcca
        0xccd
        0xcd5
        0xcd6
        0xd02
        0xd03
        0xd3e
        0xd43
        0xd46
        0xd48
        0xd4a
        0xd4d
        0xe34
        0xe3a
        0xe47
        0xe4e
        0xeb4
        0xeb9
        0xebb
        0xebc
        0xec8
        0xecd
        0xf18
        0xf19
        0xf71
        0xf84
        0xf86
        0xf8b
        0xf90
        0xf95
        0xf99
        0xfad
        0xfb1
        0xfb7
        0x20d0
        0x20dc
        0x302a
        0x302f
    .end array-data

    :array_5d8
    .array-data 4
        0x5bf
        0x5c4
        0x670
        0x93c
        0x94d
        0x9bc
        0x9be
        0x9bf
        0x9d7
        0xa02
        0xa3c
        0xa3e
        0xa3f
        0xabc
        0xb3c
        0xbd7
        0xd57
        0xe31
        0xeb1
        0xf35
        0xf37
        0xf39
        0xf3e
        0xf3f
        0xf97
        0xfb9
        0x20e1
        0x3099
        0x309a
    .end array-data

    :array_616
    .array-data 4
        0x30
        0x39
        0x660
        0x669
        0x6f0
        0x6f9
        0x966
        0x96f
        0x9e6
        0x9ef
        0xa66
        0xa6f
        0xae6
        0xaef
        0xb66
        0xb6f
        0xbe7
        0xbef
        0xc66
        0xc6f
        0xce6
        0xcef
        0xd66
        0xd6f
        0xe50
        0xe59
        0xed0
        0xed9
        0xf20
        0xf29
    .end array-data

    :array_656
    .array-data 4
        0x3031
        0x3035
        0x309d
        0x309e
        0x30fc
        0x30fe
    .end array-data

    :array_666
    .array-data 4
        0xb7
        0x2d0
        0x2d1
        0x387
        0x640
        0xe46
        0xec6
        0x3005
    .end array-data
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist highSurrogate(I)C
    .registers 2

    .line 0
    const/high16 v0, 0x10000

    sub-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0xa

    const v0, 0xd800

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static greylist isContent(I)Z
    .registers 3

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_c

    .line 431
    sget-object v1, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_13

    :cond_c
    if-gt v0, p0, :cond_15

    const v0, 0x10ffff

    if-gt p0, v0, :cond_15

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isHighSurrogate(I)Z
    .registers 2

    .line 0
    const v0, 0xd800

    if-gt v0, p0, :cond_c

    const v0, 0xdbff

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isInvalid(I)Z
    .registers 1

    .line 422
    invoke-static {p0}, Lorg/apache/xml/utils/XMLChar;->isValid(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static greylist isLowSurrogate(I)Z
    .registers 2

    .line 0
    const v0, 0xdc00

    if-gt v0, p0, :cond_c

    const v0, 0xdfff

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isMarkup(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x3c

    if-eq p0, v0, :cond_f

    const/16 v0, 0x26

    if-eq p0, v0, :cond_f

    const/16 v0, 0x25

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist isNCName(I)Z
    .registers 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_e

    .line 496
    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isNCNameStart(I)Z
    .registers 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_e

    .line 485
    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isName(I)Z
    .registers 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_e

    .line 474
    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isNameStart(I)Z
    .registers 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_e

    .line 463
    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isPubid(I)Z
    .registers 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_e

    .line 507
    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isSpace(I)Z
    .registers 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_e

    .line 452
    sget-object v0, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isSupplemental(I)Z
    .registers 2

    .line 0
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_b

    const v0, 0x10ffff

    if-gt p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isValid(I)Z
    .registers 4

    const/4 v0, 0x1

    const/high16 v1, 0x10000

    if-ge p0, v1, :cond_c

    .line 412
    sget-object v2, Lorg/apache/xml/utils/XMLChar;->CHARS:[B

    aget-byte v2, v2, p0

    and-int/2addr v2, v0

    if-nez v2, :cond_13

    :cond_c
    if-gt v1, p0, :cond_14

    const v1, 0x10ffff

    if-gt p0, v1, :cond_14

    :cond_13
    return v0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isValidIANAEncoding(Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_46

    .line 600
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_46

    .line 602
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7a

    const/16 v4, 0x61

    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-lt v2, v6, :cond_19

    if-le v2, v5, :cond_1d

    :cond_19
    if-lt v2, v4, :cond_46

    if-gt v2, v3, :cond_46

    :cond_1d
    const/4 v2, 0x1

    move v7, v2

    :goto_1f
    if-ge v7, v1, :cond_45

    .line 605
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_29

    if-le v8, v5, :cond_42

    :cond_29
    if-lt v8, v4, :cond_2d

    if-le v8, v3, :cond_42

    :cond_2d
    const/16 v9, 0x30

    if-lt v8, v9, :cond_35

    const/16 v9, 0x39

    if-le v8, v9, :cond_42

    :cond_35
    const/16 v9, 0x2e

    if-eq v8, v9, :cond_42

    const/16 v9, 0x5f

    if-eq v8, v9, :cond_42

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_42

    return v0

    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_45
    return v2

    :cond_46
    return v0
.end method

.method public static greylist isValidJavaEncoding(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    .line 629
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3a

    const/4 v2, 0x1

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_39

    .line 632
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x41

    if-lt v4, v5, :cond_19

    const/16 v5, 0x5a

    if-le v4, v5, :cond_36

    :cond_19
    const/16 v5, 0x61

    if-lt v4, v5, :cond_21

    const/16 v5, 0x7a

    if-le v4, v5, :cond_36

    :cond_21
    const/16 v5, 0x30

    if-lt v4, v5, :cond_29

    const/16 v5, 0x39

    if-le v4, v5, :cond_36

    :cond_29
    const/16 v5, 0x2e

    if-eq v4, v5, :cond_36

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_36

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_36

    return v0

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_39
    return v2

    :cond_3a
    return v0
.end method

.method public static greylist isValidNCName(Ljava/lang/String;)Z
    .registers 5

    .line 548
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 550
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 551
    invoke-static {v0}, Lorg/apache/xml/utils/XMLChar;->isNCNameStart(I)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x1

    move v2, v0

    .line 553
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 554
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 555
    invoke-static {v3}, Lorg/apache/xml/utils/XMLChar;->isNCName(I)Z

    move-result v3

    if-nez v3, :cond_26

    return v1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_29
    return v0
.end method

.method public static greylist isValidName(Ljava/lang/String;)Z
    .registers 5

    .line 521
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 523
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 524
    invoke-static {v0}, Lorg/apache/xml/utils/XMLChar;->isNameStart(I)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x1

    move v2, v0

    .line 526
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 527
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 528
    invoke-static {v3}, Lorg/apache/xml/utils/XMLChar;->isName(I)Z

    move-result v3

    if-nez v3, :cond_26

    return v1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_29
    return v0
.end method

.method public static greylist isValidNmtoken(Ljava/lang/String;)Z
    .registers 4

    .line 573
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move v0, v1

    .line 575
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 576
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 577
    invoke-static {v2}, Lorg/apache/xml/utils/XMLChar;->isName(I)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist isValidQName(Ljava/lang/String;)Z
    .registers 5

    const/16 v0, 0x3a

    .line 652
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 654
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_12

    goto :goto_30

    :cond_12
    if-lez v0, :cond_2b

    .line 659
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v3

    .line 660
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 661
    invoke-static {v2}, Lorg/apache/xml/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {p0}, Lorg/apache/xml/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    return v3

    :cond_2a
    return v1

    .line 664
    :cond_2b
    invoke-static {p0}, Lorg/apache/xml/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_30
    :goto_30
    return v1
.end method

.method public static greylist lowSurrogate(I)C
    .registers 2

    .line 0
    const/high16 v0, 0x10000

    sub-int/2addr p0, v0

    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static greylist supplemental(CC)I
    .registers 3

    .line 0
    const v0, 0xd800

    sub-int/2addr p0, v0

    mul-int/lit16 p0, p0, 0x400

    const v0, 0xdc00

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    const/high16 p1, 0x10000

    add-int/2addr p0, p1

    return p0
.end method
