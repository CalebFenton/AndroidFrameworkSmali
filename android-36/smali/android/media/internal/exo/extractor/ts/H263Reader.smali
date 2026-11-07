.class public final Landroid/media/internal/exo/extractor/ts/H263Reader;
.super Ljava/lang/Object;
.source "H263Reader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;,
        Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final blacklist PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F


# instance fields
.field private final blacklist csdBuffer:Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;

.field private blacklist formatId:Ljava/lang/String;

.field private blacklist hasOutputFormat:Z

.field private blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;

.field private blacklist pesTimeUs:J

.field private final blacklist prefixFlags:[Z

.field private blacklist sampleReader:Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;

.field private blacklist totalBytesWritten:J

.field private final blacklist userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

.field private final blacklist userDataParsable:Landroid/media/internal/exo/util/ParsableByteArray;

.field private final blacklist userDataReader:Landroid/media/internal/exo/extractor/ts/UserDataReader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x7

    .line 57
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Landroid/media/internal/exo/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor blacklist <init>(Landroid/media/internal/exo/extractor/ts/UserDataReader;)V
    .registers 6

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userDataReader:Landroid/media/internal/exo/extractor/ts/UserDataReader;

    const/4 v0, 0x4

    .line 88
    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->prefixFlags:[Z

    .line 89
    new-instance v0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->csdBuffer:Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 90
    iput-wide v2, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->pesTimeUs:J

    if-eqz p1, :cond_2d

    .line 92
    new-instance p1, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    .line 93
    new-instance p1, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userDataParsable:Landroid/media/internal/exo/util/ParsableByteArray;

    return-void

    :cond_2d
    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    .line 96
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userDataParsable:Landroid/media/internal/exo/util/ParsableByteArray;

    return-void
.end method

.method private static blacklist parseCsdBuffer(Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;ILjava/lang/String;)Landroid/media/internal/exo/Format;
    .registers 11

    .line 228
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->data:[B

    iget p0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->length:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 229
    new-instance v0, Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    .line 230
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBytes(I)V

    const/4 p1, 0x4

    .line 233
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBytes(I)V

    .line 234
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    const/16 v1, 0x8

    .line 235
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 236
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_29

    .line 237
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 238
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 241
    :cond_29
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 242
    const-string v4, "Invalid aspect ratio"

    const-string v5, "H263Reader"

    const/16 v6, 0xf

    if-ne p1, v6, :cond_4a

    .line 243
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 244
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-nez v1, :cond_45

    .line 246
    invoke-static {v5, v4}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_45
    int-to-float p1, p1

    int-to-float v1, v1

    div-float v2, p1, v1

    goto :goto_55

    .line 251
    :cond_4a
    sget-object v1, Landroid/media/internal/exo/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    array-length v7, v1

    if-ge p1, v7, :cond_52

    .line 252
    aget v2, v1, p1

    goto :goto_55

    .line 254
    :cond_52
    invoke-static {v5, v4}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_55
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_8c

    .line 258
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    const/4 p1, 0x1

    .line 259
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 260
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 261
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 262
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    .line 263
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 264
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    .line 265
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 266
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    .line 267
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    const/16 p1, 0xb

    .line 268
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 269
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    .line 270
    invoke-virtual {v0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 271
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    .line 274
    :cond_8c
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p1

    if-eqz p1, :cond_97

    .line 276
    const-string p1, "Unhandled video object layer shape"

    invoke-static {v5, p1}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_97
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    const/16 p1, 0x10

    .line 279
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 280
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    .line 281
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_be

    if-nez p1, :cond_b1

    .line 283
    const-string p1, "Invalid vop_increment_time_resolution"

    invoke-static {v5, p1}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    :cond_b1
    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    :goto_b4
    if-lez p1, :cond_bb

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_b4

    .line 291
    :cond_bb
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 294
    :cond_be
    :goto_be
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    const/16 p1, 0xd

    .line 295
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 296
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    .line 297
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 298
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    .line 299
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBit()V

    .line 300
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 301
    invoke-virtual {v0, p2}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p2

    const-string v0, "video/mp4v-es"

    .line 302
    invoke-virtual {p2, v0}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p2

    .line 303
    invoke-virtual {p2, v1}, Landroid/media/internal/exo/Format$Builder;->setWidth(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p2

    .line 304
    invoke-virtual {p2, p1}, Landroid/media/internal/exo/Format$Builder;->setHeight(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 305
    invoke-virtual {p1, v2}, Landroid/media/internal/exo/Format$Builder;->setPixelWidthHeightRatio(F)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 306
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 15

    .line 136
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 139
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    .line 140
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 143
    iget-wide v3, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->totalBytesWritten:J

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->totalBytesWritten:J

    .line 144
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-interface {v3, p1, v4}, Landroid/media/internal/exo/extractor/TrackOutput;->sampleData(Landroid/media/internal/exo/util/ParsableByteArray;I)V

    .line 147
    :goto_29
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->prefixFlags:[Z

    invoke-static {v2, v0, v1, v3}, Landroid/media/internal/exo/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v3

    if-ne v3, v1, :cond_47

    .line 151
    iget-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->hasOutputFormat:Z

    if-nez p1, :cond_3a

    .line 152
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->csdBuffer:Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {p1, v2, v0, v1}, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    .line 154
    :cond_3a
    iget-object p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {p1, v2, v0, v1}, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->onData([BII)V

    .line 155
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    if-eqz p0, :cond_46

    .line 156
    invoke-virtual {p0, v2, v0, v1}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    :cond_46
    return-void

    .line 162
    :cond_47
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    add-int/lit8 v5, v3, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sub-int v6, v3, v0

    .line 167
    iget-boolean v7, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->hasOutputFormat:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_84

    if-lez v6, :cond_60

    .line 169
    iget-object v7, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->csdBuffer:Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {v7, v2, v0, v3}, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    :cond_60
    if-gez v6, :cond_64

    neg-int v7, v6

    goto :goto_65

    :cond_64
    move v7, v9

    .line 174
    :goto_65
    iget-object v10, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->csdBuffer:Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {v10, v4, v7}, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->onStartCode(II)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 176
    iget-object v7, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    iget-object v10, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->csdBuffer:Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;

    iget v11, v10, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    iget-object v12, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    .line 177
    invoke-static {v12}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v10, v11, v12}, Landroid/media/internal/exo/extractor/ts/H263Reader;->parseCsdBuffer(Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;ILjava/lang/String;)Landroid/media/internal/exo/Format;

    move-result-object v10

    .line 176
    invoke-interface {v7, v10}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 178
    iput-boolean v8, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->hasOutputFormat:Z

    .line 182
    :cond_84
    iget-object v7, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v7, v2, v0, v3}, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->onData([BII)V

    .line 184
    iget-object v7, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    if-eqz v7, :cond_d7

    if-lez v6, :cond_93

    .line 187
    invoke-virtual {v7, v2, v0, v3}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_94

    :cond_93
    neg-int v9, v6

    .line 192
    :goto_94
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, v9}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 193
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v6, v0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v0, v0, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v6, v0}, Landroid/media/internal/exo/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    .line 194
    iget-object v6, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userDataParsable:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-static {v6}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object v7, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    iget-object v7, v7, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v6, v7, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->reset([BI)V

    .line 195
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userDataReader:Landroid/media/internal/exo/extractor/ts/UserDataReader;

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/ts/UserDataReader;

    iget-wide v6, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->pesTimeUs:J

    iget-object v9, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userDataParsable:Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-virtual {v0, v6, v7, v9}, Landroid/media/internal/exo/extractor/ts/UserDataReader;->consume(JLandroid/media/internal/exo/util/ParsableByteArray;)V

    :cond_c4
    const/16 v0, 0xb2

    if-ne v4, v0, :cond_d7

    .line 199
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    add-int/lit8 v6, v3, 0x2

    aget-byte v0, v0, v6

    if-ne v0, v8, :cond_d7

    .line 200
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, v4}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_d7
    sub-int v0, v1, v3

    .line 205
    iget-wide v6, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->totalBytesWritten:J

    int-to-long v8, v0

    sub-long/2addr v6, v8

    .line 206
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;

    iget-boolean v8, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->hasOutputFormat:Z

    invoke-virtual {v3, v6, v7, v0, v8}, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->onDataEnd(JIZ)V

    .line 208
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;

    iget-wide v6, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->pesTimeUs:J

    invoke-virtual {v0, v4, v6, v7}, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->onStartCode(IJ)V

    move v0, v5

    goto/16 :goto_29
.end method

.method public blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 116
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 117
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    .line 118
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    .line 119
    new-instance v1, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;

    invoke-direct {v1, v0}, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;-><init>(Landroid/media/internal/exo/extractor/TrackOutput;)V

    iput-object v1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;

    .line 120
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userDataReader:Landroid/media/internal/exo/extractor/ts/UserDataReader;

    if-eqz p0, :cond_22

    .line 121
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/extractor/ts/UserDataReader;->createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    :cond_22
    return-void
.end method

.method public blacklist packetFinished()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist packetStarted(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    .line 129
    iput-wide p1, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->pesTimeUs:J

    :cond_b
    return-void
.end method

.method public blacklist seek()V
    .registers 3

    .line 102
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroid/media/internal/exo/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 103
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->csdBuffer:Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;

    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/H263Reader$CsdBuffer;->reset()V

    .line 104
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->sampleReader:Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;

    if-eqz v0, :cond_11

    .line 105
    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/H263Reader$SampleReader;->reset()V

    .line 107
    :cond_11
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->userData:Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_18

    .line 108
    invoke-virtual {v0}, Landroid/media/internal/exo/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_18
    const-wide/16 v0, 0x0

    .line 110
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->totalBytesWritten:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 111
    iput-wide v0, p0, Landroid/media/internal/exo/extractor/ts/H263Reader;->pesTimeUs:J

    return-void
.end method
