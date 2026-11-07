.class public Lorg/apache/xml/serializer/utils/XML11Char;
.super Ljava/lang/Object;
.source "XML11Char.java"


# static fields
.field public static final greylist MASK_XML11_CONTENT:I = 0x20

.field public static final greylist MASK_XML11_CONTENT_INTERNAL:I = 0x30

.field public static final greylist MASK_XML11_CONTROL:I = 0x10

.field public static final greylist MASK_XML11_NAME:I = 0x8

.field public static final greylist MASK_XML11_NAME_START:I = 0x4

.field public static final greylist MASK_XML11_NCNAME:I = 0x80

.field public static final greylist MASK_XML11_NCNAME_START:I = 0x40

.field public static final greylist MASK_XML11_SPACE:I = 0x2

.field public static final greylist MASK_XML11_VALID:I = 0x1

.field private static final greylist XML11CHARS:[B


# direct methods
.method static constructor greylist <clinit>()V
    .registers 9

    const/high16 v0, 0x10000

    .line 53
    new-array v0, v0, [B

    sput-object v0, Lorg/apache/xml/serializer/utils/XML11Char;->XML11CHARS:[B

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x11

    .line 91
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v4, 0x23

    .line 92
    aput-byte v4, v0, v2

    const/16 v2, 0xa

    const/4 v5, 0x3

    .line 93
    aput-byte v5, v0, v2

    const/16 v2, 0xb

    const/16 v6, 0xd

    .line 94
    invoke-static {v0, v2, v6, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 95
    aput-byte v5, v0, v6

    const/16 v2, 0xe

    const/16 v5, 0x20

    .line 96
    invoke-static {v0, v2, v5, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 97
    aput-byte v4, v0, v5

    const/16 v2, 0x21

    const/16 v5, 0x26

    .line 98
    invoke-static {v0, v2, v5, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 99
    aput-byte v1, v0, v5

    const/16 v5, 0x27

    const/16 v6, 0x2d

    .line 100
    invoke-static {v0, v5, v6, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v5, 0x2f

    const/16 v7, -0x57

    .line 101
    invoke-static {v0, v6, v5, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 102
    aput-byte v2, v0, v5

    const/16 v5, 0x30

    const/16 v8, 0x3a

    .line 103
    invoke-static {v0, v5, v8, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 104
    aput-byte v6, v0, v8

    const/16 v5, 0x3b

    .line 105
    aput-byte v2, v0, v5

    const/16 v5, 0x3c

    .line 106
    aput-byte v1, v0, v5

    const/16 v5, 0x3d

    const/16 v6, 0x41

    .line 107
    invoke-static {v0, v5, v6, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v5, 0x5b

    const/16 v8, -0x13

    .line 108
    invoke-static {v0, v6, v5, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v6, 0x5d

    .line 109
    invoke-static {v0, v5, v6, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 110
    aput-byte v1, v0, v6

    const/16 v1, 0x5e

    .line 111
    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    .line 112
    aput-byte v8, v0, v1

    const/16 v1, 0x60

    .line 113
    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v5, 0x7b

    .line 114
    invoke-static {v0, v1, v5, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x7f

    .line 115
    invoke-static {v0, v5, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v5, 0x85

    .line 116
    invoke-static {v0, v1, v5, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 117
    aput-byte v4, v0, v5

    const/16 v1, 0x86

    const/16 v5, 0xa0

    .line 118
    invoke-static {v0, v1, v5, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0xb7

    .line 119
    invoke-static {v0, v5, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 120
    aput-byte v7, v0, v1

    const/16 v1, 0xb8

    const/16 v3, 0xc0

    .line 121
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0xc0

    const/16 v3, 0xd7

    .line 122
    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0xd7

    .line 123
    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v3, 0xf7

    .line 124
    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0xf7

    .line 125
    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v3, 0x300

    .line 126
    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x300

    const/16 v3, 0x370

    .line 127
    invoke-static {v0, v1, v3, v7}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x370

    const/16 v3, 0x37e

    .line 128
    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x37e

    .line 129
    aput-byte v2, v0, v1

    const/16 v1, 0x37f

    const/16 v3, 0x2000

    .line 130
    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2000

    const/16 v3, 0x200c

    .line 131
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x200c

    const/16 v3, 0x200e

    .line 132
    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x200e

    const/16 v3, 0x2028

    .line 133
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2028

    .line 134
    aput-byte v4, v0, v1

    const/16 v1, 0x2029

    const/16 v3, 0x203f

    .line 135
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x203f

    const/16 v3, 0x2041

    .line 136
    invoke-static {v0, v1, v3, v7}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2041

    const/16 v3, 0x2070

    .line 137
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2070

    const/16 v3, 0x2190

    .line 138
    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2190

    const/16 v3, 0x2c00

    .line 139
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2c00

    const/16 v3, 0x2ff0

    .line 140
    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x2ff0

    const/16 v3, 0x3001

    .line 141
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const/16 v1, 0x3001

    const v3, 0xd800

    .line 142
    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const v1, 0xe000

    const v3, 0xf900

    .line 143
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const v1, 0xf900

    const v3, 0xfdd0

    .line 144
    invoke-static {v0, v1, v3, v8}, Ljava/util/Arrays;->fill([BIIB)V

    const v1, 0xfdd0

    const v3, 0xfdf0

    .line 145
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    const v1, 0xfdf0

    const v2, 0xfffe

    .line 146
    invoke-static {v0, v1, v2, v8}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist isXML11Content(I)Z
    .registers 3

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_c

    .line 208
    sget-object v1, Lorg/apache/xml/serializer/utils/XML11Char;->XML11CHARS:[B

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

.method public static greylist isXML11InternalEntityContent(I)Z
    .registers 3

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_c

    .line 219
    sget-object v1, Lorg/apache/xml/serializer/utils/XML11Char;->XML11CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit8 v1, v1, 0x30

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

.method public static greylist isXML11Invalid(I)Z
    .registers 1

    .line 185
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Valid(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static greylist isXML11NCName(I)Z
    .registers 3

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_c

    .line 267
    sget-object v1, Lorg/apache/xml/serializer/utils/XML11Char;->XML11CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_12

    :cond_c
    if-gt v0, p0, :cond_14

    const/high16 v0, 0xf0000

    if-ge p0, v0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isXML11NCNameStart(I)Z
    .registers 3

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_c

    .line 255
    sget-object v1, Lorg/apache/xml/serializer/utils/XML11Char;->XML11CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_12

    :cond_c
    if-gt v0, p0, :cond_14

    const/high16 v0, 0xf0000

    if-ge p0, v0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isXML11Name(I)Z
    .registers 3

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_c

    .line 243
    sget-object v1, Lorg/apache/xml/serializer/utils/XML11Char;->XML11CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_12

    :cond_c
    if-lt p0, v0, :cond_14

    const/high16 v0, 0xf0000

    if-ge p0, v0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isXML11NameHighSurrogate(I)Z
    .registers 2

    .line 0
    const v0, 0xd800

    if-gt v0, p0, :cond_c

    const v0, 0xdb7f

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isXML11NameStart(I)Z
    .registers 3

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_c

    .line 231
    sget-object v1, Lorg/apache/xml/serializer/utils/XML11Char;->XML11CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_12

    :cond_c
    if-gt v0, p0, :cond_14

    const/high16 v0, 0xf0000

    if-ge p0, v0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isXML11Space(I)Z
    .registers 2

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_e

    .line 161
    sget-object v0, Lorg/apache/xml/serializer/utils/XML11Char;->XML11CHARS:[B

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isXML11Valid(I)Z
    .registers 4

    const/4 v0, 0x1

    const/high16 v1, 0x10000

    if-ge p0, v1, :cond_c

    .line 175
    sget-object v2, Lorg/apache/xml/serializer/utils/XML11Char;->XML11CHARS:[B

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

.method public static greylist isXML11ValidLiteral(I)Z
    .registers 4

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_10

    .line 197
    sget-object v1, Lorg/apache/xml/serializer/utils/XML11Char;->XML11CHARS:[B

    aget-byte v1, v1, p0

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_17

    :cond_10
    if-gt v0, p0, :cond_19

    const v0, 0x10ffff

    if-gt p0, v0, :cond_19

    :cond_17
    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isXML11ValidNCName(Ljava/lang/String;)Z
    .registers 8

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 348
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 349
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11NCNameStart(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_33

    if-le v0, v4, :cond_32

    .line 350
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 351
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 352
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 353
    invoke-static {v2, v3}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v2

    invoke-static {v2}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11NCNameStart(I)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_32

    :cond_30
    const/4 v2, 0x2

    goto :goto_34

    :cond_32
    :goto_32
    return v1

    :cond_33
    move v2, v4

    :goto_34
    if-ge v2, v0, :cond_61

    .line 363
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 364
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11NCName(I)Z

    move-result v5

    if-nez v5, :cond_5f

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_5e

    .line 365
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 366
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 367
    invoke-static {v5}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 368
    invoke-static {v3, v5}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11NCName(I)Z

    move-result v3

    if-nez v3, :cond_5f

    :cond_5e
    return v1

    :cond_5f
    add-int/2addr v2, v4

    goto :goto_34

    :cond_61
    return v4
.end method

.method public static greylist isXML11ValidName(Ljava/lang/String;)Z
    .registers 8

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 298
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 299
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11NameStart(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_33

    if-le v0, v4, :cond_32

    .line 300
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 301
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 302
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 303
    invoke-static {v2, v3}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v2

    invoke-static {v2}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11NameStart(I)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_32

    :cond_30
    const/4 v2, 0x2

    goto :goto_34

    :cond_32
    :goto_32
    return v1

    :cond_33
    move v2, v4

    :goto_34
    if-ge v2, v0, :cond_61

    .line 313
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 314
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Name(I)Z

    move-result v5

    if-nez v5, :cond_5f

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_5e

    .line 315
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 316
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 317
    invoke-static {v5}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 318
    invoke-static {v3, v5}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Name(I)Z

    move-result v3

    if-nez v3, :cond_5f

    :cond_5e
    return v1

    :cond_5f
    add-int/2addr v2, v4

    goto :goto_34

    :cond_61
    return v4
.end method

.method public static greylist isXML11ValidNmtoken(Ljava/lang/String;)Z
    .registers 8

    .line 392
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move v2, v1

    :goto_9
    const/4 v3, 0x1

    if-ge v2, v0, :cond_37

    .line 396
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 397
    invoke-static {v4}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Name(I)Z

    move-result v5

    if-nez v5, :cond_35

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_34

    .line 398
    invoke-static {v4}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 399
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 400
    invoke-static {v5}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 401
    invoke-static {v4, v5}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Name(I)Z

    move-result v4

    if-nez v4, :cond_35

    :cond_34
    return v1

    :cond_35
    add-int/2addr v2, v3

    goto :goto_9

    :cond_37
    return v3
.end method
