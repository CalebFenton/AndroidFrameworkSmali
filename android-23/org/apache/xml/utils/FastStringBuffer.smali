.class public Lorg/apache/xml/utils/FastStringBuffer;
.super Ljava/lang/Object;
.source "FastStringBuffer.java"


# static fields
.field private static final CARRY_WS:I = 0x4

.field static final DEBUG_FORCE_FIXED_CHUNKSIZE:Z = true

.field static final DEBUG_FORCE_INIT_BITS:I = 0x0

.field static final SINGLE_SPACE:[C

.field public static final SUPPRESS_BOTH:I = 0x3

.field public static final SUPPRESS_LEADING_WS:I = 0x1

.field public static final SUPPRESS_TRAILING_WS:I = 0x2


# instance fields
.field m_array:[[C

.field m_chunkBits:I

.field m_chunkMask:I

.field m_chunkSize:I

.field m_firstFree:I

.field m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

.field m_lastChunk:I

.field m_maxChunkBits:I

.field m_rebundleBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 1082
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [C

    #@3
    const/16 v1, 0x20

    #@5
    const/4 v2, 0x0

    #@6
    aput-char v1, v0, v2

    #@8
    sput-object v0, Lorg/apache/xml/utils/FastStringBuffer;->SINGLE_SPACE:[C

    #@a
    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 260
    const/16 v0, 0xa

    #@2
    const/16 v1, 0xf

    #@4
    const/4 v2, 0x2

    #@5
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(III)V

    #@8
    .line 252
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initChunkBits"    # I

    #@0
    .prologue
    .line 246
    const/16 v0, 0xf

    #@2
    const/4 v1, 0x2

    #@3
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(III)V

    #@6
    .line 244
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "initChunkBits"    # I
    .param p2, "maxChunkBits"    # I

    #@0
    .prologue
    .line 232
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(III)V

    #@4
    .line 230
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "initChunkBits"    # I
    .param p2, "maxChunkBits"    # I
    .param p3, "rebundleBits"    # I

    #@0
    .prologue
    const/16 v0, 0xf

    #@2
    const/4 v2, 0x0

    #@3
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 101
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@8
    .line 108
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    #@a
    .line 118
    const/4 v0, 0x2

    #@b
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    #@d
    .line 153
    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@f
    .line 162
    iput v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@11
    .line 171
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@14
    .line 207
    move p2, p1

    #@15
    .line 210
    const/16 v0, 0x10

    #@17
    new-array v0, v0, [[C

    #@19
    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@1b
    .line 213
    if-le p1, p2, :cond_0

    #@1d
    .line 214
    move p1, p2

    #@1e
    .line 216
    :cond_0
    iput p1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@20
    .line 217
    iput p2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    #@22
    .line 218
    iput p3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    #@24
    .line 219
    const/4 v0, 0x1

    #@25
    shl-int/2addr v0, p1

    #@26
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@28
    .line 220
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@2a
    add-int/lit8 v0, v0, -0x1

    #@2c
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@2e
    .line 221
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@30
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@32
    new-array v1, v1, [C

    #@34
    aput-object v1, v0, v2

    #@36
    .line 196
    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 3
    .param p1, "source"    # Lorg/apache/xml/utils/FastStringBuffer;

    #@0
    .prologue
    const/16 v0, 0xf

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 1263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 101
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@9
    .line 108
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    #@b
    .line 118
    const/4 v0, 0x2

    #@c
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    #@e
    .line 153
    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@10
    .line 162
    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@12
    .line 171
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@15
    .line 1267
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@17
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@19
    .line 1268
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    #@1b
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    #@1d
    .line 1269
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    #@1f
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    #@21
    .line 1270
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@23
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@25
    .line 1271
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@27
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@29
    .line 1272
    iget-object v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@2b
    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@2d
    .line 1273
    iget-object v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@2f
    iput-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@31
    .line 1277
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@33
    add-int/lit8 v0, v0, -0x1

    #@35
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@37
    .line 1278
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@39
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@3b
    .line 1281
    const/16 v0, 0x10

    #@3d
    new-array v0, v0, [[C

    #@3f
    iput-object v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@41
    .line 1282
    iput-object p0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@43
    .line 1287
    iput v2, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@45
    .line 1288
    iput v1, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@47
    .line 1289
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@49
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    #@4b
    add-int/2addr v0, v1

    #@4c
    iput v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@4e
    .line 1290
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@50
    shl-int v0, v2, v0

    #@52
    iput v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@54
    .line 1291
    iget v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@56
    add-int/lit8 v0, v0, -0x1

    #@58
    iput v0, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@5a
    .line 1263
    return-void
.end method

.method private getChars(II[CI)V
    .locals 0
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    #@0
    .prologue
    .line 1250
    return-void
.end method

.method static sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I
    .locals 9
    .param p0, "ch"    # [C
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "handler"    # Lorg/xml/sax/ContentHandler;
    .param p4, "edgeTreatmentFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1134
    and-int/lit8 v7, p4, 0x1

    #@3
    if-eqz v7, :cond_0

    #@5
    const/4 v2, 0x1

    #@6
    .line 1135
    .local v2, "processingLeadingWhitespace":Z
    :goto_0
    and-int/lit8 v7, p4, 0x4

    #@8
    if-eqz v7, :cond_1

    #@a
    const/4 v3, 0x1

    #@b
    .line 1136
    .local v3, "seenWhitespace":Z
    :goto_1
    move v0, p1

    #@c
    .line 1137
    .local v0, "currPos":I
    add-int v1, p1, p2

    #@e
    .line 1140
    .local v1, "limit":I
    if-eqz v2, :cond_4

    #@10
    .line 1141
    :goto_2
    if-ge v0, v1, :cond_2

    #@12
    .line 1142
    aget-char v7, p0, v0

    #@14
    invoke-static {v7}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    #@17
    move-result v7

    #@18
    .line 1141
    if-eqz v7, :cond_2

    #@1a
    .line 1143
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_2

    #@1d
    .line 1134
    .end local v0    # "currPos":I
    .end local v1    # "limit":I
    .end local v2    # "processingLeadingWhitespace":Z
    .end local v3    # "seenWhitespace":Z
    :cond_0
    const/4 v2, 0x0

    #@1e
    .restart local v2    # "processingLeadingWhitespace":Z
    goto :goto_0

    #@1f
    .line 1135
    :cond_1
    const/4 v3, 0x0

    #@20
    .restart local v3    # "seenWhitespace":Z
    goto :goto_1

    #@21
    .line 1147
    .restart local v0    # "currPos":I
    .restart local v1    # "limit":I
    :cond_2
    if-ne v0, v1, :cond_4

    #@23
    .line 1148
    return p4

    #@24
    .line 1179
    .local v4, "startNonWhitespace":I
    .local v5, "startWhitespace":I
    :cond_3
    if-eq v5, v0, :cond_4

    #@26
    .line 1180
    const/4 v3, 0x1

    #@27
    .line 1153
    .end local v4    # "startNonWhitespace":I
    .end local v5    # "startWhitespace":I
    :cond_4
    if-ge v0, v1, :cond_9

    #@29
    .line 1154
    move v4, v0

    #@2a
    .line 1157
    .restart local v4    # "startNonWhitespace":I
    :goto_3
    if-ge v0, v1, :cond_5

    #@2c
    .line 1158
    aget-char v7, p0, v0

    #@2e
    invoke-static {v7}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_8

    #@34
    .line 1163
    :cond_5
    if-eq v4, v0, :cond_7

    #@36
    .line 1164
    if-eqz v3, :cond_6

    #@38
    .line 1165
    sget-object v7, Lorg/apache/xml/utils/FastStringBuffer;->SINGLE_SPACE:[C

    #@3a
    const/4 v8, 0x1

    #@3b
    invoke-interface {p3, v7, v6, v8}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@3e
    .line 1166
    const/4 v3, 0x0

    #@3f
    .line 1169
    :cond_6
    sub-int v7, v0, v4

    #@41
    .line 1168
    invoke-interface {p3, p0, v4, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@44
    .line 1172
    :cond_7
    move v5, v0

    #@45
    .line 1175
    .restart local v5    # "startWhitespace":I
    :goto_4
    if-ge v0, v1, :cond_3

    #@47
    .line 1176
    aget-char v7, p0, v0

    #@49
    invoke-static {v7}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    #@4c
    move-result v7

    #@4d
    .line 1175
    if-eqz v7, :cond_3

    #@4f
    .line 1177
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_4

    #@52
    .line 1159
    .end local v5    # "startWhitespace":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_3

    #@55
    .line 1184
    .end local v4    # "startNonWhitespace":I
    :cond_9
    if-eqz v3, :cond_a

    #@57
    const/4 v6, 0x4

    #@58
    .line 1185
    :cond_a
    and-int/lit8 v7, p4, 0x2

    #@5a
    .line 1184
    or-int/2addr v6, v7

    #@5b
    return v6
.end method

.method public static sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p0, "ch"    # [C
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "handler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1204
    const/4 v0, 0x3

    #@1
    .line 1203
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    #@4
    .line 1201
    return-void
.end method

.method private final setLength(ILorg/apache/xml/utils/FastStringBuffer;)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "rootFSB"    # Lorg/apache/xml/utils/FastStringBuffer;

    #@0
    .prologue
    .line 360
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@2
    ushr-int v0, p1, v0

    #@4
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@6
    .line 362
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@8
    if-nez v0, :cond_0

    #@a
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 364
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@10
    invoke-direct {v0, p1, p2}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(ILorg/apache/xml/utils/FastStringBuffer;)V

    #@13
    .line 357
    :goto_0
    return-void

    #@14
    .line 371
    :cond_0
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@16
    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@18
    .line 372
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    #@1a
    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    #@1c
    .line 373
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    #@1e
    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    #@20
    .line 374
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@22
    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@24
    .line 375
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@26
    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@28
    .line 376
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@2a
    iput-object v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@2c
    .line 377
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@2e
    iput-object v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@30
    .line 378
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@32
    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@34
    .line 381
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@36
    and-int/2addr v0, p1

    #@37
    iput v0, p2, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@39
    goto :goto_0
.end method


# virtual methods
.method public final append(C)V
    .locals 7
    .param p1, "value"    # C

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 424
    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@3
    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@5
    if-ge v3, v4, :cond_0

    #@7
    .line 425
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@9
    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@b
    aget-object v0, v3, v4

    #@d
    .line 465
    .local v0, "chunk":[C
    :goto_0
    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@f
    add-int/lit8 v4, v3, 0x1

    #@11
    iput v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@13
    aput-char p1, v0, v3

    #@15
    .line 416
    return-void

    #@16
    .line 430
    .end local v0    # "chunk":[C
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@18
    array-length v1, v3

    #@19
    .line 432
    .local v1, "i":I
    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    if-ne v3, v1, :cond_1

    #@1f
    .line 434
    add-int/lit8 v3, v1, 0x10

    #@21
    new-array v2, v3, [[C

    #@23
    .line 436
    .local v2, "newarray":[[C
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@25
    invoke-static {v3, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@28
    .line 438
    iput-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@2a
    .line 442
    .end local v2    # "newarray":[[C
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@2c
    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@2e
    add-int/lit8 v4, v4, 0x1

    #@30
    iput v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@32
    aget-object v0, v3, v4

    #@34
    .line 444
    .restart local v0    # "chunk":[C
    if-nez v0, :cond_3

    #@36
    .line 448
    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@38
    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    #@3a
    const/4 v5, 0x1

    #@3b
    shl-int v4, v5, v4

    #@3d
    if-ne v3, v4, :cond_2

    #@3f
    .line 449
    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@41
    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    #@43
    if-ge v3, v4, :cond_2

    #@45
    .line 454
    new-instance v3, Lorg/apache/xml/utils/FastStringBuffer;

    #@47
    invoke-direct {v3, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@4a
    iput-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@4c
    .line 458
    :cond_2
    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@4e
    new-array v0, v3, [C

    #@50
    .end local v0    # "chunk":[C
    iget-object v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@52
    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@54
    aput-object v0, v3, v4

    #@56
    .line 461
    .restart local v0    # "chunk":[C
    :cond_3
    iput v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@58
    goto :goto_0
.end method

.method public final append(Ljava/lang/String;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 480
    if-nez p1, :cond_0

    #@3
    .line 481
    return-void

    #@4
    .line 482
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v5

    #@8
    .line 484
    .local v5, "strlen":I
    if-nez v5, :cond_1

    #@a
    .line 485
    return-void

    #@b
    .line 487
    :cond_1
    const/4 v2, 0x0

    #@c
    .line 488
    .local v2, "copyfrom":I
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@e
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@10
    aget-object v1, v6, v7

    #@12
    .line 489
    .local v1, "chunk":[C
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@14
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@16
    sub-int v0, v6, v7

    #@18
    .line 492
    .local v0, "available":I
    :cond_2
    :goto_0
    if-lez v5, :cond_7

    #@1a
    .line 496
    if-le v0, v5, :cond_3

    #@1c
    .line 497
    move v0, v5

    #@1d
    .line 499
    :cond_3
    add-int v6, v2, v0

    #@1f
    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@21
    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@23
    aget-object v7, v7, v8

    #@25
    .line 500
    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@27
    .line 499
    invoke-virtual {p1, v2, v6, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    #@2a
    .line 502
    sub-int/2addr v5, v0

    #@2b
    .line 503
    add-int/2addr v2, v0

    #@2c
    .line 506
    if-lez v5, :cond_2

    #@2e
    .line 510
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@30
    array-length v3, v6

    #@31
    .line 512
    .local v3, "i":I
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@33
    add-int/lit8 v6, v6, 0x1

    #@35
    if-ne v6, v3, :cond_4

    #@37
    .line 514
    add-int/lit8 v6, v3, 0x10

    #@39
    new-array v4, v6, [[C

    #@3b
    .line 516
    .local v4, "newarray":[[C
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@3d
    invoke-static {v6, v9, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@40
    .line 518
    iput-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@42
    .line 522
    .end local v4    # "newarray":[[C
    :cond_4
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@44
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@46
    add-int/lit8 v7, v7, 0x1

    #@48
    iput v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@4a
    aget-object v1, v6, v7

    #@4c
    .line 524
    if-nez v1, :cond_6

    #@4e
    .line 528
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@50
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    #@52
    const/4 v8, 0x1

    #@53
    shl-int v7, v8, v7

    #@55
    if-ne v6, v7, :cond_5

    #@57
    .line 529
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@59
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    #@5b
    if-ge v6, v7, :cond_5

    #@5d
    .line 534
    new-instance v6, Lorg/apache/xml/utils/FastStringBuffer;

    #@5f
    invoke-direct {v6, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@62
    iput-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@64
    .line 538
    :cond_5
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@66
    new-array v1, v6, [C

    #@68
    .end local v1    # "chunk":[C
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@6a
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@6c
    aput-object v1, v6, v7

    #@6e
    .line 541
    .restart local v1    # "chunk":[C
    :cond_6
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@70
    .line 542
    iput v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@72
    goto :goto_0

    #@73
    .line 547
    .end local v3    # "i":I
    :cond_7
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@75
    add-int/2addr v6, v0

    #@76
    iput v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@78
    .line 477
    return-void
.end method

.method public final append(Ljava/lang/StringBuffer;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 562
    if-nez p1, :cond_0

    #@3
    .line 563
    return-void

    #@4
    .line 564
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@7
    move-result v5

    #@8
    .line 566
    .local v5, "strlen":I
    if-nez v5, :cond_1

    #@a
    .line 567
    return-void

    #@b
    .line 569
    :cond_1
    const/4 v2, 0x0

    #@c
    .line 570
    .local v2, "copyfrom":I
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@e
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@10
    aget-object v1, v6, v7

    #@12
    .line 571
    .local v1, "chunk":[C
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@14
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@16
    sub-int v0, v6, v7

    #@18
    .line 574
    .local v0, "available":I
    :cond_2
    :goto_0
    if-lez v5, :cond_7

    #@1a
    .line 578
    if-le v0, v5, :cond_3

    #@1c
    .line 579
    move v0, v5

    #@1d
    .line 581
    :cond_3
    add-int v6, v2, v0

    #@1f
    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@21
    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@23
    aget-object v7, v7, v8

    #@25
    .line 582
    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@27
    .line 581
    invoke-virtual {p1, v2, v6, v7, v8}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    #@2a
    .line 584
    sub-int/2addr v5, v0

    #@2b
    .line 585
    add-int/2addr v2, v0

    #@2c
    .line 588
    if-lez v5, :cond_2

    #@2e
    .line 592
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@30
    array-length v3, v6

    #@31
    .line 594
    .local v3, "i":I
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@33
    add-int/lit8 v6, v6, 0x1

    #@35
    if-ne v6, v3, :cond_4

    #@37
    .line 596
    add-int/lit8 v6, v3, 0x10

    #@39
    new-array v4, v6, [[C

    #@3b
    .line 598
    .local v4, "newarray":[[C
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@3d
    invoke-static {v6, v9, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@40
    .line 600
    iput-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@42
    .line 604
    .end local v4    # "newarray":[[C
    :cond_4
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@44
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@46
    add-int/lit8 v7, v7, 0x1

    #@48
    iput v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@4a
    aget-object v1, v6, v7

    #@4c
    .line 606
    if-nez v1, :cond_6

    #@4e
    .line 610
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@50
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    #@52
    const/4 v8, 0x1

    #@53
    shl-int v7, v8, v7

    #@55
    if-ne v6, v7, :cond_5

    #@57
    .line 611
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@59
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    #@5b
    if-ge v6, v7, :cond_5

    #@5d
    .line 616
    new-instance v6, Lorg/apache/xml/utils/FastStringBuffer;

    #@5f
    invoke-direct {v6, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@62
    iput-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@64
    .line 620
    :cond_5
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@66
    new-array v1, v6, [C

    #@68
    .end local v1    # "chunk":[C
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@6a
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@6c
    aput-object v1, v6, v7

    #@6e
    .line 623
    .restart local v1    # "chunk":[C
    :cond_6
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@70
    .line 624
    iput v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@72
    goto :goto_0

    #@73
    .line 629
    .end local v3    # "i":I
    :cond_7
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@75
    add-int/2addr v6, v0

    #@76
    iput v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@78
    .line 559
    return-void
.end method

.method public final append(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 14
    .param p1, "value"    # Lorg/apache/xml/utils/FastStringBuffer;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 732
    if-nez p1, :cond_0

    #@3
    .line 733
    return-void

    #@4
    .line 734
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    #@7
    move-result v8

    #@8
    .line 736
    .local v8, "strlen":I
    if-nez v8, :cond_1

    #@a
    .line 737
    return-void

    #@b
    .line 739
    :cond_1
    const/4 v2, 0x0

    #@c
    .line 740
    .local v2, "copyfrom":I
    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@e
    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@10
    aget-object v1, v9, v10

    #@12
    .line 741
    .local v1, "chunk":[C
    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@14
    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@16
    sub-int v0, v9, v10

    #@18
    .line 744
    .local v0, "available":I
    :cond_2
    :goto_0
    if-lez v8, :cond_9

    #@1a
    .line 748
    if-le v0, v8, :cond_3

    #@1c
    .line 749
    move v0, v8

    #@1d
    .line 751
    :cond_3
    iget v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@1f
    add-int/2addr v9, v2

    #@20
    add-int/lit8 v9, v9, -0x1

    #@22
    .line 752
    iget v10, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@24
    .line 751
    ushr-int v6, v9, v10

    #@26
    .line 753
    .local v6, "sourcechunk":I
    iget v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@28
    and-int v7, v2, v9

    #@2a
    .line 754
    .local v7, "sourcecolumn":I
    iget v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@2c
    sub-int v5, v9, v7

    #@2e
    .line 756
    .local v5, "runlength":I
    if-le v5, v0, :cond_4

    #@30
    .line 757
    move v5, v0

    #@31
    .line 759
    :cond_4
    iget-object v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@33
    aget-object v9, v9, v6

    #@35
    .line 760
    iget-object v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@37
    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@39
    aget-object v10, v10, v11

    #@3b
    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@3d
    .line 759
    invoke-static {v9, v7, v10, v11, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@40
    .line 762
    if-eq v5, v0, :cond_5

    #@42
    .line 763
    iget-object v9, p1, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@44
    add-int/lit8 v10, v6, 0x1

    #@46
    aget-object v9, v9, v10

    #@48
    .line 764
    iget-object v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@4a
    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@4c
    aget-object v10, v10, v11

    #@4e
    iget v11, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@50
    add-int/2addr v11, v5

    #@51
    .line 765
    sub-int v12, v0, v5

    #@53
    .line 763
    invoke-static {v9, v13, v10, v11, v12}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@56
    .line 767
    :cond_5
    sub-int/2addr v8, v0

    #@57
    .line 768
    add-int/2addr v2, v0

    #@58
    .line 771
    if-lez v8, :cond_2

    #@5a
    .line 775
    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@5c
    array-length v3, v9

    #@5d
    .line 777
    .local v3, "i":I
    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@5f
    add-int/lit8 v9, v9, 0x1

    #@61
    if-ne v9, v3, :cond_6

    #@63
    .line 779
    add-int/lit8 v9, v3, 0x10

    #@65
    new-array v4, v9, [[C

    #@67
    .line 781
    .local v4, "newarray":[[C
    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@69
    invoke-static {v9, v13, v4, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6c
    .line 783
    iput-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@6e
    .line 787
    .end local v4    # "newarray":[[C
    :cond_6
    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@70
    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@72
    add-int/lit8 v10, v10, 0x1

    #@74
    iput v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@76
    aget-object v1, v9, v10

    #@78
    .line 789
    if-nez v1, :cond_8

    #@7a
    .line 793
    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@7c
    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    #@7e
    const/4 v11, 0x1

    #@7f
    shl-int v10, v11, v10

    #@81
    if-ne v9, v10, :cond_7

    #@83
    .line 794
    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@85
    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    #@87
    if-ge v9, v10, :cond_7

    #@89
    .line 799
    new-instance v9, Lorg/apache/xml/utils/FastStringBuffer;

    #@8b
    invoke-direct {v9, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@8e
    iput-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@90
    .line 803
    :cond_7
    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@92
    new-array v1, v9, [C

    #@94
    .end local v1    # "chunk":[C
    iget-object v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@96
    iget v10, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@98
    aput-object v1, v9, v10

    #@9a
    .line 806
    .restart local v1    # "chunk":[C
    :cond_8
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@9c
    .line 807
    iput v13, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@9e
    goto/16 :goto_0

    #@a0
    .line 812
    .end local v3    # "i":I
    .end local v5    # "runlength":I
    .end local v6    # "sourcechunk":I
    .end local v7    # "sourcecolumn":I
    :cond_9
    iget v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@a2
    add-int/2addr v9, v0

    #@a3
    iput v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@a5
    .line 725
    return-void
.end method

.method public final append([CII)V
    .locals 10
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 647
    move v5, p3

    #@2
    .line 649
    .local v5, "strlen":I
    if-nez v5, :cond_0

    #@4
    .line 650
    return-void

    #@5
    .line 652
    :cond_0
    move v2, p2

    #@6
    .line 653
    .local v2, "copyfrom":I
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@8
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@a
    aget-object v1, v6, v7

    #@c
    .line 654
    .local v1, "chunk":[C
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@e
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@10
    sub-int v0, v6, v7

    #@12
    .line 657
    .local v0, "available":I
    :cond_1
    :goto_0
    if-lez v5, :cond_6

    #@14
    .line 661
    if-le v0, v5, :cond_2

    #@16
    .line 662
    move v0, v5

    #@17
    .line 664
    :cond_2
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@19
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@1b
    aget-object v6, v6, v7

    #@1d
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@1f
    invoke-static {p1, v2, v6, v7, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@22
    .line 667
    sub-int/2addr v5, v0

    #@23
    .line 668
    add-int/2addr v2, v0

    #@24
    .line 671
    if-lez v5, :cond_1

    #@26
    .line 675
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@28
    array-length v3, v6

    #@29
    .line 677
    .local v3, "i":I
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@2b
    add-int/lit8 v6, v6, 0x1

    #@2d
    if-ne v6, v3, :cond_3

    #@2f
    .line 679
    add-int/lit8 v6, v3, 0x10

    #@31
    new-array v4, v6, [[C

    #@33
    .line 681
    .local v4, "newarray":[[C
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@35
    invoke-static {v6, v9, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@38
    .line 683
    iput-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@3a
    .line 687
    .end local v4    # "newarray":[[C
    :cond_3
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@3c
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@3e
    add-int/lit8 v7, v7, 0x1

    #@40
    iput v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@42
    aget-object v1, v6, v7

    #@44
    .line 689
    if-nez v1, :cond_5

    #@46
    .line 693
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@48
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_rebundleBits:I

    #@4a
    const/4 v8, 0x1

    #@4b
    shl-int v7, v8, v7

    #@4d
    if-ne v6, v7, :cond_4

    #@4f
    .line 694
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@51
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_maxChunkBits:I

    #@53
    if-ge v6, v7, :cond_4

    #@55
    .line 699
    new-instance v6, Lorg/apache/xml/utils/FastStringBuffer;

    #@57
    invoke-direct {v6, p0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@5a
    iput-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@5c
    .line 703
    :cond_4
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@5e
    new-array v1, v6, [C

    #@60
    .end local v1    # "chunk":[C
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@62
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@64
    aput-object v1, v6, v7

    #@66
    .line 706
    .restart local v1    # "chunk":[C
    :cond_5
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@68
    .line 707
    iput v9, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@6a
    goto :goto_0

    #@6b
    .line 712
    .end local v3    # "i":I
    :cond_6
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@6d
    add-int/2addr v6, v0

    #@6e
    iput v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@70
    .line 644
    return-void
.end method

.method public charAt(I)C
    .locals 3
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 950
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@2
    ushr-int v0, p1, v1

    #@4
    .line 952
    .local v0, "startChunk":I
    if-nez v0, :cond_0

    #@6
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 953
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@c
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@e
    and-int/2addr v2, p1

    #@f
    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->charAt(I)C

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 955
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@16
    aget-object v1, v1, v0

    #@18
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@1a
    and-int/2addr v2, p1

    #@1b
    aget-char v1, v1, v2

    #@1d
    return v1
.end method

.method protected getOneChunkString(III)Ljava/lang/String;
    .locals 2
    .param p1, "startChunk"    # I
    .param p2, "startColumn"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 875
    new-instance v0, Ljava/lang/String;

    #@2
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@4
    aget-object v1, v1, p1

    #@6
    invoke-direct {v0, v1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@9
    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 4
    .param p1, "start"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 864
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@2
    and-int v1, p1, v2

    #@4
    .line 865
    .local v1, "startColumn":I
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@6
    ushr-int v0, p1, v2

    #@8
    .line 866
    .local v0, "startChunk":I
    add-int v2, v1, p2

    #@a
    iget v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@c
    if-ge v2, v3, :cond_0

    #@e
    iget-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@10
    if-nez v2, :cond_0

    #@12
    .line 867
    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/xml/utils/FastStringBuffer;->getOneChunkString(III)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 869
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    #@19
    invoke-direct {v2, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@1c
    invoke-virtual {p0, v2, v0, v1, p2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    return-object v2
.end method

.method getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "start"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 886
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@2
    ushr-int v0, p2, v0

    #@4
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@6
    and-int/2addr v1, p2

    #@7
    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "startChunk"    # I
    .param p3, "startColumn"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 917
    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@2
    shl-int v4, p2, v4

    #@4
    add-int/2addr v4, p3

    #@5
    add-int v1, v4, p4

    #@7
    .line 918
    .local v1, "stop":I
    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@9
    ushr-int v2, v1, v4

    #@b
    .line 919
    .local v2, "stopChunk":I
    iget v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@d
    and-int v3, v1, v4

    #@f
    .line 923
    .local v3, "stopColumn":I
    move v0, p2

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@12
    .line 925
    if-nez v0, :cond_0

    #@14
    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 926
    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@1a
    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@1c
    sub-int/2addr v5, p3

    #@1d
    invoke-virtual {v4, p1, p3, v5}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    #@20
    .line 930
    :goto_1
    const/4 p3, 0x0

    #@21
    .line 923
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 928
    :cond_0
    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@26
    aget-object v4, v4, v0

    #@28
    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@2a
    sub-int/2addr v5, p3

    #@2b
    invoke-virtual {p1, v4, p3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@2e
    goto :goto_1

    #@2f
    .line 933
    :cond_1
    if-nez v2, :cond_3

    #@31
    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@33
    if-eqz v4, :cond_3

    #@35
    .line 934
    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@37
    sub-int v5, v3, p3

    #@39
    invoke-virtual {v4, p1, p3, v5}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;

    #@3c
    .line 938
    :cond_2
    :goto_2
    return-object p1

    #@3d
    .line 935
    :cond_3
    if-le v3, p3, :cond_2

    #@3f
    .line 936
    iget-object v4, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@41
    aget-object v4, v4, v2

    #@43
    sub-int v5, v3, p3

    #@45
    invoke-virtual {p1, v4, p3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@48
    goto :goto_2
.end method

.method public isWhitespace(II)Z
    .locals 7
    .param p1, "start"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 827
    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@3
    ushr-int v3, p1, v5

    #@5
    .line 828
    .local v3, "sourcechunk":I
    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@7
    and-int v4, p1, v5

    #@9
    .line 829
    .local v4, "sourcecolumn":I
    iget v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@b
    sub-int v0, v5, v4

    #@d
    .line 832
    .local v0, "available":I
    :goto_0
    if-lez p2, :cond_3

    #@f
    .line 834
    if-gt p2, v0, :cond_0

    #@11
    move v2, p2

    #@12
    .line 836
    .local v2, "runlength":I
    :goto_1
    if-nez v3, :cond_1

    #@14
    iget-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@16
    if-eqz v5, :cond_1

    #@18
    .line 837
    iget-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@1a
    invoke-virtual {v5, v4, v2}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    #@1d
    move-result v1

    #@1e
    .line 842
    .local v1, "chunkOK":Z
    :goto_2
    if-nez v1, :cond_2

    #@20
    .line 843
    return v6

    #@21
    .line 834
    .end local v1    # "chunkOK":Z
    .end local v2    # "runlength":I
    :cond_0
    move v2, v0

    #@22
    .restart local v2    # "runlength":I
    goto :goto_1

    #@23
    .line 840
    :cond_1
    iget-object v5, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@25
    aget-object v5, v5, v3

    #@27
    .line 839
    invoke-static {v5, v4, v2}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    #@2a
    move-result v1

    #@2b
    .restart local v1    # "chunkOK":Z
    goto :goto_2

    #@2c
    .line 845
    :cond_2
    sub-int/2addr p2, v2

    #@2d
    .line 847
    add-int/lit8 v3, v3, 0x1

    #@2f
    .line 849
    const/4 v4, 0x0

    #@30
    .line 850
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@32
    goto :goto_0

    #@33
    .line 853
    .end local v1    # "chunkOK":Z
    .end local v2    # "runlength":I
    :cond_3
    const/4 v5, 0x1

    #@34
    return v5
.end method

.method public final length()I
    .locals 2

    #@0
    .prologue
    .line 280
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@2
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@4
    shl-int/2addr v0, v1

    #@5
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public final reset()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 291
    iput v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@4
    .line 292
    iput v3, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@6
    .line 295
    move-object v0, p0

    #@7
    .line 297
    .local v0, "innermost":Lorg/apache/xml/utils/FastStringBuffer;
    :goto_0
    iget-object v1, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 299
    iget-object v0, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@d
    goto :goto_0

    #@e
    .line 302
    :cond_0
    iget v1, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@10
    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@12
    .line 303
    iget v1, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@14
    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@16
    .line 304
    iget v1, v0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@18
    iput v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@1a
    .line 307
    iput-object v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@1c
    .line 308
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@1e
    const/16 v2, 0x10

    #@20
    filled-new-array {v2, v3}, [I

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, [[C

    #@2a
    iput-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@2c
    .line 309
    iget-object v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@2e
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@30
    new-array v2, v2, [C

    #@32
    aput-object v2, v1, v3

    #@34
    .line 288
    return-void
.end method

.method public sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I
    .locals 10
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1045
    const/4 v3, 0x1

    #@1
    .line 1047
    .local v3, "stateForNextChunk":I
    add-int v4, p2, p3

    #@3
    .line 1048
    .local v4, "stop":I
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@5
    ushr-int v1, p2, v7

    #@7
    .line 1049
    .local v1, "startChunk":I
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@9
    and-int v2, p2, v7

    #@b
    .line 1050
    .local v2, "startColumn":I
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@d
    ushr-int v5, v4, v7

    #@f
    .line 1051
    .local v5, "stopChunk":I
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@11
    and-int v6, v4, v7

    #@13
    .line 1053
    .local v6, "stopColumn":I
    move v0, v1

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    #@16
    .line 1055
    if-nez v0, :cond_0

    #@18
    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@1a
    if-eqz v7, :cond_0

    #@1c
    .line 1057
    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@1e
    .line 1058
    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@20
    sub-int/2addr v8, v2

    #@21
    .line 1057
    invoke-virtual {v7, p1, v2, v8}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    #@24
    move-result v3

    #@25
    .line 1065
    :goto_1
    const/4 v2, 0x0

    #@26
    .line 1053
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1061
    :cond_0
    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@2b
    aget-object v7, v7, v0

    #@2d
    .line 1062
    iget v8, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@2f
    sub-int/2addr v8, v2

    #@30
    .line 1061
    invoke-static {v7, v2, v8, p1, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    #@33
    move-result v3

    #@34
    goto :goto_1

    #@35
    .line 1069
    :cond_1
    if-nez v5, :cond_3

    #@37
    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@39
    if-eqz v7, :cond_3

    #@3b
    .line 1071
    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@3d
    sub-int v8, v6, v2

    #@3f
    invoke-virtual {v7, p1, v2, v8}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    #@42
    move-result v3

    #@43
    .line 1079
    :cond_2
    :goto_2
    return v3

    #@44
    .line 1072
    :cond_3
    if-le v6, v2, :cond_2

    #@46
    .line 1075
    iget-object v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@48
    aget-object v7, v7, v5

    #@4a
    .line 1076
    sub-int v8, v6, v2

    #@4c
    .line 1077
    or-int/lit8 v9, v3, 0x2

    #@4e
    .line 1075
    invoke-static {v7, v2, v8, p1, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;I)I

    #@51
    move-result v3

    #@52
    goto :goto_2
.end method

.method public sendSAXComment(Lorg/xml/sax/ext/LexicalHandler;II)V
    .locals 3
    .param p1, "ch"    # Lorg/xml/sax/ext/LexicalHandler;
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1225
    invoke-virtual {p0, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1226
    .local v0, "comment":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-interface {p1, v1, v2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    #@c
    .line 1221
    return-void
.end method

.method public sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V
    .locals 8
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 982
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@2
    ushr-int v1, p2, v6

    #@4
    .line 983
    .local v1, "startChunk":I
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@6
    and-int v2, p2, v6

    #@8
    .line 984
    .local v2, "startColumn":I
    add-int v6, v2, p3

    #@a
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@c
    if-ge v6, v7, :cond_0

    #@e
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@10
    if-nez v6, :cond_0

    #@12
    .line 985
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@14
    aget-object v6, v6, v1

    #@16
    invoke-interface {p1, v6, v2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@19
    .line 986
    return-void

    #@1a
    .line 989
    :cond_0
    add-int v3, p2, p3

    #@1c
    .line 990
    .local v3, "stop":I
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@1e
    ushr-int v4, v3, v6

    #@20
    .line 991
    .local v4, "stopChunk":I
    iget v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@22
    and-int v5, v3, v6

    #@24
    .line 993
    .local v5, "stopColumn":I
    move v0, v1

    #@25
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    #@27
    .line 995
    if-nez v0, :cond_1

    #@29
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@2b
    if-eqz v6, :cond_1

    #@2d
    .line 996
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@2f
    .line 997
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@31
    sub-int/2addr v7, v2

    #@32
    .line 996
    invoke-virtual {v6, p1, v2, v7}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    #@35
    .line 1001
    :goto_1
    const/4 v2, 0x0

    #@36
    .line 993
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 999
    :cond_1
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@3b
    aget-object v6, v6, v0

    #@3d
    iget v7, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@3f
    sub-int/2addr v7, v2

    #@40
    invoke-interface {p1, v6, v2, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@43
    goto :goto_1

    #@44
    .line 1005
    :cond_2
    if-nez v4, :cond_4

    #@46
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@48
    if-eqz v6, :cond_4

    #@4a
    .line 1006
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@4c
    sub-int v7, v5, v2

    #@4e
    invoke-virtual {v6, p1, v2, v7}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    #@51
    .line 979
    :cond_3
    :goto_2
    return-void

    #@52
    .line 1007
    :cond_4
    if-le v5, v2, :cond_3

    #@54
    .line 1009
    iget-object v6, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_array:[[C

    #@56
    aget-object v6, v6, v4

    #@58
    .line 1010
    sub-int v7, v5, v2

    #@5a
    .line 1009
    invoke-interface {p1, v6, v2, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@5d
    goto :goto_2
.end method

.method public final setLength(I)V
    .locals 1
    .param p1, "l"    # I

    #@0
    .prologue
    .line 326
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@2
    ushr-int v0, p1, v0

    #@4
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@6
    .line 328
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@8
    if-nez v0, :cond_1

    #@a
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 331
    iget-object v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_innerFSB:Lorg/apache/xml/utils/FastStringBuffer;

    #@10
    invoke-direct {v0, p1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(ILorg/apache/xml/utils/FastStringBuffer;)V

    #@13
    .line 324
    :cond_0
    :goto_0
    return-void

    #@14
    .line 335
    :cond_1
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkMask:I

    #@16
    and-int/2addr v0, p1

    #@17
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@19
    .line 342
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@1b
    if-nez v0, :cond_0

    #@1d
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@1f
    if-lez v0, :cond_0

    #@21
    .line 344
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@23
    add-int/lit8 v0, v0, -0x1

    #@25
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@27
    .line 345
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkSize:I

    #@29
    iput v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@2b
    goto :goto_0
.end method

.method public final size()I
    .locals 2

    #@0
    .prologue
    .line 270
    iget v0, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@2
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@4
    shl-int/2addr v0, v1

    #@5
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 401
    iget v1, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_lastChunk:I

    #@3
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_chunkBits:I

    #@5
    shl-int/2addr v1, v2

    #@6
    iget v2, p0, Lorg/apache/xml/utils/FastStringBuffer;->m_firstFree:I

    #@8
    add-int v0, v1, v2

    #@a
    .line 403
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuffer;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    #@f
    invoke-virtual {p0, v1, v3, v3, v0}, Lorg/apache/xml/utils/FastStringBuffer;->getString(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method
