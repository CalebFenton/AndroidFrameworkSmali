.class public Lorg/apache/xml/utils/FastStringBuffer;
.super Ljava/lang/Object;
.source "FastStringBuffer.java"


# static fields
.field private static final greylist CARRY_WS:I = 0x4

.field static final greylist DEBUG_FORCE_FIXED_CHUNKSIZE:Z = true

.field static final greylist DEBUG_FORCE_INIT_BITS:I = 0x0

.field static final greylist SINGLE_SPACE:[C

.field public static final greylist SUPPRESS_BOTH:I = 0x3

.field public static final greylist SUPPRESS_LEADING_WS:I = 0x1

.field public static final greylist SUPPRESS_TRAILING_WS:I = 0x2


# instance fields
.field greylist m_array:[[C

.field greylist m_chunkBits:I

.field greylist m_chunkMask:I

.field greylist m_chunkSize:I

.field greylist m_firstFree:I

.field greylist m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

.field greylist m_lastChunk:I

.field greylist m_maxChunkBits:I

.field greylist m_rebundleBits:I


# direct methods
.method static constructor greylist <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 1082
    new-array v0, v0, [C

    const/16 v1, 0x20

    const/4 v2, 0x0

    aput-char v1, v0, v2

    sput-object v0, Lorg/apache/xml/utils/FastStringBuffer;->SINGLE_SPACE:[C

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 4

    const/16 v0, 0xf

    const/4 v1, 0x2

    const/16 v2, 0xa

    .line 260
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(III)V

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 4

    const/16 v0, 0xf

    const/4 v1, 0x2

    .line 246
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(III)V

    return-void
.end method

.method public constructor greylist <init>(II)V
    .registers 4

    const/4 v0, 0x2

    .line 232
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(III)V

    return-void
.end method

.method public constructor greylist <init>(III)V
    .registers 5

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 153
    iput p2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 162
    iput p2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    const/16 v0, 0x10

    .line 210
    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 216
    iput p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    .line 217
    iput p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    .line 218
    iput p3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    const/4 p3, 0x1

    shl-int p1, p3, p1

    .line 219
    iput p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    add-int/lit8 p3, p1, -0x1

    .line 220
    iput p3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    .line 221
    new-array p0, p1, [C

    aput-object p0, v0, p2

    return-void
.end method

.method private constructor greylist <init>(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 6

    .line 1264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 101
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    .line 108
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    const/4 v0, 0x2

    .line 118
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 162
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    const/4 v1, 0x0

    .line 171
    iput-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 1267
    iget v1, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    .line 1268
    iget v1, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    .line 1269
    iget v1, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    .line 1270
    iget v2, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 1271
    iget v2, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    .line 1272
    iget-object v2, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iput-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 1273
    iget-object v2, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iput-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 1277
    iget v2, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 1278
    iget v2, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    const/16 v2, 0x10

    .line 1281
    new-array v2, v2, [[C

    iput-object v2, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 1282
    iput-object p0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 1287
    iput v3, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 1288
    iput v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    .line 1289
    iget p0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    add-int/2addr p0, v1

    iput p0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int p0, v3, p0

    .line 1290
    iput p0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr p0, v3

    .line 1291
    iput p0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    return-void
.end method

.method private greylist getChars(II[CI)V
    .registers 5

    .line 0
    return-void
.end method

.method static greylist sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    and-int/lit8 v3, p4, 0x4

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    :goto_10
    add-int/2addr p2, p1

    if-eqz v0, :cond_23

    :goto_13
    if-ge p1, p2, :cond_20

    .line 1142
    aget-char v0, p0, p1

    invoke-static {v0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_20

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_20
    if-ne p1, p2, :cond_23

    return p4

    :cond_23
    :goto_23
    if-ge p1, p2, :cond_54

    move v0, p1

    :goto_26
    if-ge v0, p2, :cond_33

    .line 1158
    aget-char v4, p0, v0

    invoke-static {v4}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_33

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_33
    if-eq p1, v0, :cond_42

    if-eqz v3, :cond_3d

    .line 1165
    sget-object v3, Lorg/apache/xml/utils/FastStringBuffer;->SINGLE_SPACE:[C

    invoke-interface {p3, v3, v1, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    move v3, v1

    :cond_3d
    sub-int v4, v0, p1

    .line 1168
    invoke-interface {p3, p0, p1, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_42
    move p1, v0

    :goto_43
    if-ge p1, p2, :cond_50

    .line 1176
    aget-char v4, p0, p1

    invoke-static {v4}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_50

    add-int/lit8 p1, p1, 0x1

    goto :goto_43

    :cond_50
    if-eq v0, p1, :cond_23

    move v3, v2

    goto :goto_23

    :cond_54
    if-eqz v3, :cond_57

    const/4 v1, 0x4

    :cond_57
    and-int/lit8 p0, p4, 0x2

    or-int/2addr p0, v1

    return p0
.end method

.method public static greylist sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1203
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    return-void
.end method

.method private final greylist setLength(ILorg/apache/xml/utils/FastStringBuffer;)V
    .registers 6

    .line 360
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v1, p1, v0

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    if-nez v1, :cond_10

    .line 362
    iget-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v2, :cond_10

    .line 364
    invoke-direct {v2, p1, p2}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(ILorg/apache/xml/utils/FastStringBuffer;)V

    return-void

    .line 371
    :cond_10
    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    .line 372
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    .line 373
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    .line 374
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 375
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    .line 376
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iput-object v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 377
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    iput-object v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 378
    iput v1, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 381
    iget p0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p0, p1

    iput p0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    return-void
.end method


# virtual methods
.method public final greylist append(C)V
    .registers 7

    .line 424
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    if-ge v0, v1, :cond_d

    .line 425
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v0, v0, v1

    goto :goto_4b

    .line 430
    :cond_d
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v1, v0

    .line 432
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ne v2, v1, :cond_20

    add-int/lit8 v2, v1, 0x10

    .line 434
    new-array v2, v2, [[C

    .line 436
    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    iput-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 442
    :cond_20
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v0, v0, v1

    if-nez v0, :cond_49

    .line 448
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int v0, v3, v0

    if-ne v1, v0, :cond_3e

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v0, v1, :cond_3e

    .line 454
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 458
    :cond_3e
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v2, v2, [C

    aput-object v2, v0, v1

    move-object v0, v2

    .line 461
    :cond_49
    iput v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    .line 465
    :goto_4b
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final greylist append(Ljava/lang/String;)V
    .registers 9

    if-nez p1, :cond_3

    goto :goto_9

    .line 482
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    .line 488
    :cond_a
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v2

    .line 489
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-lez v0, :cond_6c

    if-le v1, v0, :cond_1c

    move v1, v0

    :cond_1c
    add-int v4, v3, v1

    .line 499
    iget-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v5, v5, v6

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    invoke-virtual {p1, v3, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    sub-int/2addr v0, v1

    if-lez v0, :cond_6a

    .line 510
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v3, v1

    .line 512
    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-ne v5, v3, :cond_3e

    add-int/lit8 v5, v3, 0x10

    .line 514
    new-array v5, v5, [[C

    .line 516
    invoke-static {v1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    iput-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 522
    :cond_3e
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v3

    if-nez v1, :cond_66

    .line 528
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int v1, v6, v1

    if-ne v3, v1, :cond_5c

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v1, v3, :cond_5c

    .line 534
    new-instance v1, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v1, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 538
    :cond_5c
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v5, v5, [C

    aput-object v5, v1, v3

    .line 541
    :cond_66
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 542
    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    :cond_6a
    move v3, v4

    goto :goto_17

    .line 547
    :cond_6c
    iget p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    return-void
.end method

.method public final greylist append(Ljava/lang/StringBuffer;)V
    .registers 9

    if-nez p1, :cond_3

    goto :goto_9

    .line 564
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    .line 570
    :cond_a
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v2

    .line 571
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-lez v0, :cond_6c

    if-le v1, v0, :cond_1c

    move v1, v0

    :cond_1c
    add-int v4, v3, v1

    .line 581
    iget-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v5, v5, v6

    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    invoke-virtual {p1, v3, v4, v5, v6}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    sub-int/2addr v0, v1

    if-lez v0, :cond_6a

    .line 592
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v3, v1

    .line 594
    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-ne v5, v3, :cond_3e

    add-int/lit8 v5, v3, 0x10

    .line 596
    new-array v5, v5, [[C

    .line 598
    invoke-static {v1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    iput-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 604
    :cond_3e
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v3

    if-nez v1, :cond_66

    .line 610
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int v1, v6, v1

    if-ne v3, v1, :cond_5c

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v1, v3, :cond_5c

    .line 616
    new-instance v1, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v1, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 620
    :cond_5c
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v5, v5, [C

    aput-object v5, v1, v3

    .line 623
    :cond_66
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 624
    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    :cond_6a
    move v3, v4

    goto :goto_17

    .line 629
    :cond_6c
    iget p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    return-void
.end method

.method public final greylist append(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 13

    if-nez p1, :cond_3

    goto :goto_9

    .line 734
    :cond_3
    invoke-virtual {p1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    .line 740
    :cond_a
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v2

    .line 741
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    :cond_17
    :goto_17
    if-lez v0, :cond_93

    if-le v1, v0, :cond_1c

    move v1, v0

    .line 751
    :cond_1c
    iget v4, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    add-int v5, v3, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget v7, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int/2addr v5, v7

    .line 753
    iget v7, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v7, v3

    sub-int/2addr v4, v7

    if-le v4, v1, :cond_2c

    move v4, v1

    .line 759
    :cond_2c
    iget-object v8, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v8, v8, v5

    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v9, v9, v10

    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    invoke-static {v8, v7, v9, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq v4, v1, :cond_51

    .line 763
    iget-object v7, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v7, v5

    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v7, v7, v8

    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v8, v4

    sub-int v4, v1, v4

    invoke-static {v5, v2, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_51
    sub-int/2addr v0, v1

    add-int/2addr v3, v1

    if-lez v0, :cond_17

    .line 775
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v4, v1

    .line 777
    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/2addr v5, v6

    if-ne v5, v4, :cond_66

    add-int/lit8 v5, v4, 0x10

    .line 779
    new-array v5, v5, [[C

    .line 781
    invoke-static {v1, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 783
    iput-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 787
    :cond_66
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/2addr v4, v6

    iput v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v4

    if-nez v1, :cond_8e

    .line 793
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int v1, v6, v1

    if-ne v4, v1, :cond_84

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v1, v4, :cond_84

    .line 799
    new-instance v1, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v1, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 803
    :cond_84
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v5, v5, [C

    aput-object v5, v1, v4

    .line 806
    :cond_8e
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 807
    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_17

    .line 812
    :cond_93
    iget p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    return-void
.end method

.method public final greylist append([CII)V
    .registers 9

    if-nez p3, :cond_3

    return-void

    .line 653
    :cond_3
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v0, v0, v1

    .line 654
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    sub-int/2addr v0, v1

    :cond_e
    :goto_e
    if-lez p3, :cond_62

    if-le v0, p3, :cond_13

    move v0, p3

    .line 664
    :cond_13
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v1, v1, v2

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    if-lez p3, :cond_e

    .line 675
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    array-length v1, v0

    .line 677
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ne v2, v1, :cond_35

    add-int/lit8 v2, v1, 0x10

    .line 679
    new-array v2, v2, [[C

    .line 681
    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 683
    iput-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 687
    :cond_35
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    aget-object v0, v0, v1

    if-nez v0, :cond_5d

    .line 693
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    shl-int v0, v3, v0

    if-ne v1, v0, :cond_53

    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    if-ge v0, v1, :cond_53

    .line 699
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    .line 703
    :cond_53
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array v2, v2, [C

    aput-object v2, v0, v1

    .line 706
    :cond_5d
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 707
    iput v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    goto :goto_e

    .line 712
    :cond_62
    iget p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    return-void
.end method

.method public greylist charAt(I)C
    .registers 4

    .line 950
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v0

    if-nez v0, :cond_12

    .line 952
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v1, :cond_12

    .line 953
    iget p0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p0, p1

    invoke-virtual {v1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    move-result p0

    return p0

    .line 955
    :cond_12
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v0, v1, v0

    iget p0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p0, p1

    aget-char p0, v0, p0

    return p0
.end method

.method protected greylist getOneChunkString(III)Ljava/lang/String;
    .registers 5

    .line 875
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object p0, p0, p1

    invoke-direct {v0, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public greylist getString(II)Ljava/lang/String;
    .registers 6

    .line 864
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v1, p1, v0

    .line 865
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int/2addr p1, v2

    add-int v2, v1, p2

    if-ge v2, v0, :cond_14

    .line 866
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-nez v0, :cond_14

    .line 867
    invoke-virtual {p0, p1, v1, p2}, Lorg/apache/xml/utils/FastStringBuffer;->getOneChunkString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 869
    :cond_14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0, p1, v1, p2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 870
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method greylist getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;
    .registers 6

    .line 886
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p2, v0

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p2, v1

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method greylist getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;
    .registers 8

    .line 917
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int v1, p2, v0

    add-int/2addr v1, p3

    add-int/2addr v1, p4

    ushr-int p4, v1, v0

    .line 919
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr v0, v1

    :goto_b
    if-ge p2, p4, :cond_28

    if-nez p2, :cond_1a

    .line 925
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v1, :cond_1a

    .line 926
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v2, p3

    invoke-virtual {v1, p1, p3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    goto :goto_24

    .line 928
    :cond_1a
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v1, v1, p2

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v2, p3

    invoke-virtual {p1, v1, p3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_24
    add-int/lit8 p2, p2, 0x1

    const/4 p3, 0x0

    goto :goto_b

    :cond_28
    if-nez p4, :cond_33

    .line 933
    iget-object p2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz p2, :cond_33

    sub-int/2addr v0, p3

    .line 934
    invoke-virtual {p2, p1, p3, v0}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    return-object p1

    :cond_33
    if-le v0, p3, :cond_3d

    .line 936
    iget-object p0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object p0, p0, p4

    sub-int/2addr v0, p3

    invoke-virtual {p1, p0, p3, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_3d
    return-object p1
.end method

.method public greylist isWhitespace(II)Z
    .registers 6

    .line 827
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v0

    .line 828
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p1, v1

    .line 829
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v1, p1

    :goto_a
    if-lez p2, :cond_2d

    if-gt p2, v1, :cond_f

    move v1, p2

    :cond_f
    if-nez v0, :cond_1a

    .line 836
    iget-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v2, :cond_1a

    .line 837
    invoke-virtual {v2, p1, v1}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result p1

    goto :goto_22

    .line 839
    :cond_1a
    iget-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v2, v2, v0

    invoke-static {v2, p1, v1}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result p1

    :goto_22
    const/4 v2, 0x0

    if-nez p1, :cond_26

    return v2

    :cond_26
    sub-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    .line 850
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    move p1, v2

    goto :goto_a

    :cond_2d
    const/4 p0, 0x1

    return p0
.end method

.method public final greylist length()I
    .registers 3

    .line 280
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int/2addr v0, v1

    iget p0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final greylist reset()V
    .registers 4

    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 292
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    move-object v1, p0

    .line 297
    :goto_6
    iget-object v2, v1, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v2, :cond_c

    move-object v1, v2

    goto :goto_6

    .line 302
    :cond_c
    iget v2, v1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    .line 303
    iget v2, v1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    .line 304
    iget v1, v1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    const/4 v1, 0x0

    .line 307
    iput-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    const/4 v1, 0x2

    .line 308
    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/16 v2, 0x10

    aput v2, v1, v0

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[C

    iput-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    .line 309
    iget p0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    new-array p0, p0, [C

    aput-object p0, v1, v0

    return-void
.end method

.method public greylist sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    add-int/2addr p3, p2

    .line 1048
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v1, p2, v0

    .line 1049
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p2, v2

    ushr-int v0, p3, v0

    and-int/2addr p3, v2

    const/4 v2, 0x1

    :goto_c
    if-ge v1, v0, :cond_2d

    if-nez v1, :cond_1d

    .line 1055
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v3, :cond_1d

    .line 1056
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v2, p2

    .line 1057
    invoke-virtual {v3, p1, p2, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    move-result p2

    :goto_1b
    move v2, p2

    goto :goto_29

    .line 1060
    :cond_1d
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v3, v3, v1

    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v4, p2

    .line 1061
    invoke-static {v3, p2, v4, p1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    move-result p2

    goto :goto_1b

    :goto_29
    add-int/lit8 v1, v1, 0x1

    const/4 p2, 0x0

    goto :goto_c

    :cond_2d
    if-nez v0, :cond_39

    .line 1069
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v1, :cond_39

    sub-int/2addr p3, p2

    .line 1071
    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    move-result p0

    return p0

    :cond_39
    if-le p3, p2, :cond_47

    .line 1074
    iget-object p0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object p0, p0, v0

    sub-int/2addr p3, p2

    or-int/lit8 v0, v2, 0x2

    .line 1075
    invoke-static {p0, p2, p3, p1, v0}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    move-result p0

    return p0

    :cond_47
    return v2
.end method

.method public greylist sendSAXComment(Lorg/xml/sax/ext/LexicalHandler;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1225
    invoke-virtual {p0, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    .line 1226
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void
.end method

.method public greylist sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 982
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v1, p2, v0

    .line 983
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int v3, p2, v2

    add-int v4, v3, p3

    if-ge v4, v2, :cond_18

    .line 984
    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-nez v4, :cond_18

    .line 985
    iget-object p0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object p0, p0, v1

    invoke-interface {p1, p0, v3, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void

    :cond_18
    add-int/2addr p2, p3

    ushr-int p3, p2, v0

    and-int/2addr p2, v2

    :goto_1c
    if-ge v1, p3, :cond_39

    if-nez v1, :cond_2b

    .line 995
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v0, :cond_2b

    .line 996
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_35

    .line 999
    :cond_2b
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object v0, v0, v1

    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    sub-int/2addr v2, v3

    invoke-interface {p1, v0, v3, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :goto_35
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    goto :goto_1c

    :cond_39
    if-nez p3, :cond_44

    .line 1005
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v0, :cond_44

    sub-int/2addr p2, v3

    .line 1006
    invoke-virtual {v0, p1, v3, p2}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    return-void

    :cond_44
    if-le p2, v3, :cond_4e

    .line 1009
    iget-object p0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    aget-object p0, p0, p3

    sub-int/2addr p2, v3

    invoke-interface {p1, p0, v3, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_4e
    return-void
.end method

.method public final greylist setLength(I)V
    .registers 4

    .line 326
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    ushr-int v0, p1, v0

    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    if-nez v0, :cond_10

    .line 328
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v1, :cond_10

    .line 331
    invoke-direct {v1, p1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(ILorg/apache/xml/utils/FastStringBuffer;)V

    return-void

    .line 335
    :cond_10
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    and-int/2addr p1, v1

    iput p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    if-nez p1, :cond_21

    if-lez v0, :cond_21

    add-int/lit8 v0, v0, -0x1

    .line 344
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    .line 345
    iget p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    iput p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    :cond_21
    return-void
.end method

.method public final greylist size()I
    .registers 3

    .line 270
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int/2addr v0, v1

    iget p0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 401
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    shl-int/2addr v0, v1

    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    add-int/2addr v0, v1

    .line 403
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
