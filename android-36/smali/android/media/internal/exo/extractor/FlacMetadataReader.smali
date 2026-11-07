.class public final Landroid/media/internal/exo/extractor/FlacMetadataReader;
.super Ljava/lang/Object;
.source "FlacMetadataReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/FlacMetadataReader$FlacStreamMetadataHolder;
    }
.end annotation


# direct methods
.method public static blacklist checkAndPeekStreamMarker(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 82
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 83
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v4, 0x664c6143

    cmp-long p0, v0, v4

    if-nez p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v3
.end method

.method public static blacklist getFrameStartMarker(Landroid/media/internal/exo/extractor/ExtractorInput;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 231
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 232
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 234
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    shr-int/lit8 v1, v0, 0x2

    const/16 v2, 0x3ffe

    if-ne v1, v2, :cond_1f

    .line 242
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    return v0

    .line 237
    :cond_1f
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 238
    const-string p0, "First frame does not start with sync code."

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist peekId3Metadata(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Landroid/media/internal/exo/metadata/Metadata;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move-object p1, v0

    goto :goto_7

    .line 67
    :cond_5
    sget-object p1, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;

    .line 68
    :goto_7
    new-instance v1, Landroid/media/internal/exo/extractor/Id3Peeker;

    invoke-direct {v1}, Landroid/media/internal/exo/extractor/Id3Peeker;-><init>()V

    invoke-virtual {v1, p0, p1}, Landroid/media/internal/exo/extractor/Id3Peeker;->peekId3Data(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 69
    invoke-virtual {p0}, Landroid/media/internal/exo/metadata/Metadata;->length()I

    move-result p1

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    return-object p0

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static blacklist readId3Metadata(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Landroid/media/internal/exo/metadata/Metadata;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 103
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    .line 104
    invoke-static {p0, p1}, Landroid/media/internal/exo/extractor/FlacMetadataReader;->peekId3Metadata(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object p1

    .line 105
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 106
    invoke-interface {p0, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    return-object p1
.end method

.method public static blacklist readMetadataBlock(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/FlacMetadataReader$FlacStreamMetadataHolder;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-interface {p0}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 150
    new-instance v0, Landroid/media/internal/exo/util/ParsableBitArray;

    const/4 v1, 0x4

    new-array v2, v1, [B

    invoke-direct {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    .line 151
    iget-object v2, v0, Landroid/media/internal/exo/util/ParsableBitArray;->data:[B

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 153
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v2

    const/4 v3, 0x7

    .line 154
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v4, 0x18

    .line 155
    invoke-virtual {v0, v4}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/2addr v0, v1

    if-nez v3, :cond_2a

    .line 157
    invoke-static {p0}, Landroid/media/internal/exo/extractor/FlacMetadataReader;->readStreamInfoBlock(Landroid/media/internal/exo/extractor/ExtractorInput;)Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    move-result-object p0

    iput-object p0, p1, Landroid/media/internal/exo/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    return v2

    .line 159
    :cond_2a
    iget-object v4, p1, Landroid/media/internal/exo/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    if-eqz v4, :cond_5f

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3c

    .line 164
    invoke-static {p0, v0}, Landroid/media/internal/exo/extractor/FlacMetadataReader;->readSeekTableMetadataBlock(Landroid/media/internal/exo/extractor/ExtractorInput;I)Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

    move-result-object p0

    .line 165
    invoke-virtual {v4, p0}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->copyWithSeekTable(Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;)Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    move-result-object p0

    iput-object p0, p1, Landroid/media/internal/exo/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    return v2

    :cond_3c
    if-ne v3, v1, :cond_49

    .line 167
    invoke-static {p0, v0}, Landroid/media/internal/exo/extractor/FlacMetadataReader;->readVorbisCommentMetadataBlock(Landroid/media/internal/exo/extractor/ExtractorInput;I)Ljava/util/List;

    move-result-object p0

    .line 169
    invoke-virtual {v4, p0}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->copyWithVorbisComments(Ljava/util/List;)Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    move-result-object p0

    iput-object p0, p1, Landroid/media/internal/exo/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    return v2

    :cond_49
    const/4 v1, 0x6

    if-ne v3, v1, :cond_5b

    .line 171
    invoke-static {p0, v0}, Landroid/media/internal/exo/extractor/FlacMetadataReader;->readPictureMetadataBlock(Landroid/media/internal/exo/extractor/ExtractorInput;I)Landroid/media/internal/exo/metadata/flac/PictureFrame;

    move-result-object p0

    .line 173
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;->copyWithPictureFrames(Ljava/util/List;)Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    move-result-object p0

    iput-object p0, p1, Landroid/media/internal/exo/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    return v2

    .line 175
    :cond_5b
    invoke-interface {p0, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    return v2

    .line 161
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static blacklist readPictureMetadataBlock(Landroid/media/internal/exo/extractor/ExtractorInput;I)Landroid/media/internal/exo/metadata/flac/PictureFrame;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 274
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    const/4 p0, 0x4

    .line 275
    invoke-virtual {v0, p0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 277
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 278
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 279
    sget-object p1, Landroid/media/internal/guava_common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 280
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 281
    invoke-virtual {v0, p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 283
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 284
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 285
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 286
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 287
    new-array v11, p0, [B

    .line 288
    invoke-virtual {v0, v11, v2, p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 290
    new-instance v3, Landroid/media/internal/exo/metadata/flac/PictureFrame;

    invoke-direct/range {v3 .. v11}, Landroid/media/internal/exo/metadata/flac/PictureFrame;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    return-object v3
.end method

.method private static blacklist readSeekTableMetadataBlock(Landroid/media/internal/exo/extractor/ExtractorInput;I)Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 256
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 257
    invoke-static {v0}, Landroid/media/internal/exo/extractor/FlacMetadataReader;->readSeekTableMetadataBlock(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist readSeekTableMetadataBlock(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;
    .registers 11

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 194
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    .line 196
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 197
    div-int/lit8 v0, v0, 0x12

    .line 198
    new-array v3, v0, [J

    .line 199
    new-array v4, v0, [J

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v0, :cond_3a

    .line 203
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_2b

    .line 205
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 206
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    goto :goto_3a

    .line 209
    :cond_2b
    aput-wide v6, v3, v5

    .line 210
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    const/4 v6, 0x2

    .line 211
    invoke-virtual {p0, v6}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 214
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    int-to-long v5, v0

    sub-long/2addr v1, v5

    long-to-int v0, v1

    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 215
    new-instance p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;

    invoke-direct {p0, v3, v4}, Landroid/media/internal/exo/extractor/FlacStreamMetadata$SeekTable;-><init>([J[J)V

    return-object p0
.end method

.method private static blacklist readStreamInfoBlock(Landroid/media/internal/exo/extractor/ExtractorInput;)Landroid/media/internal/exo/extractor/FlacStreamMetadata;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x26

    .line 247
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 248
    invoke-interface {p0, v1, v2, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 249
    new-instance p0, Landroid/media/internal/exo/extractor/FlacStreamMetadata;

    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Landroid/media/internal/exo/extractor/FlacStreamMetadata;-><init>([BI)V

    return-object p0
.end method

.method public static blacklist readStreamMarker(Landroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 121
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 122
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x664c6143

    cmp-long p0, v0, v2

    if-nez p0, :cond_1a

    return-void

    .line 123
    :cond_1a
    const-string p0, "Failed to read FLAC stream marker."

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist readVorbisCommentMetadataBlock(Landroid/media/internal/exo/extractor/ExtractorInput;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/extractor/ExtractorInput;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 263
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    const/4 p0, 0x4

    .line 264
    invoke-virtual {v0, p0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 266
    invoke-static {v0, v2, v2}, Landroid/media/internal/exo/extractor/VorbisUtil;->readVorbisCommentHeader(Landroid/media/internal/exo/util/ParsableByteArray;ZZ)Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;

    move-result-object p0

    .line 268
    iget-object p0, p0, Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
