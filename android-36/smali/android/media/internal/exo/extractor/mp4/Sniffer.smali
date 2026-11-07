.class final Landroid/media/internal/exo/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final blacklist COMPATIBLE_BRANDS:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x1d

    .line 37
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/media/internal/exo/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void

    :array_a
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method private static blacklist isCompatibleBrand(IZ)Z
    .registers 7

    ushr-int/lit8 v0, p0, 0x8

    const v1, 0x336770

    const/4 v2, 0x1

    if-ne v0, v1, :cond_9

    return v2

    :cond_9
    const v0, 0x68656963

    if-ne p0, v0, :cond_11

    if-eqz p1, :cond_11

    return v2

    .line 218
    :cond_11
    sget-object p1, Landroid/media/internal/exo/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v3, v1

    :goto_16
    if-ge v3, v0, :cond_20

    aget v4, p1, v3

    if-ne v4, p0, :cond_1d

    return v2

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_20
    return v1
.end method

.method public static blacklist sniffFragmented(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Landroid/media/internal/exo/extractor/mp4/Sniffer;->sniffInternal(Landroid/media/internal/exo/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method

.method private static blacklist sniffInternal(Landroid/media/internal/exo/extractor/ExtractorInput;ZZ)Z
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 110
    invoke-interface {v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x1000

    if-eqz v5, :cond_14

    cmp-long v8, v1, v6

    if-lez v8, :cond_13

    goto :goto_14

    :cond_13
    move-wide v6, v1

    :cond_14
    :goto_14
    long-to-int v6, v6

    .line 117
    new-instance v7, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_1f
    const/4 v11, 0x1

    if-ge v9, v6, :cond_f8

    const/16 v12, 0x8

    .line 124
    invoke-virtual {v7, v12}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 126
    invoke-virtual {v7}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v13

    invoke-interface {v0, v13, v8, v12, v11}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v13

    if-nez v13, :cond_33

    goto/16 :goto_f8

    .line 131
    :cond_33
    invoke-virtual {v7}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    .line 132
    invoke-virtual {v7}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v15

    const-wide/16 v16, 0x1

    cmp-long v16, v13, v16

    if-nez v16, :cond_58

    .line 137
    invoke-virtual {v7}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v13

    .line 136
    invoke-interface {v0, v13, v12, v12}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    const/16 v13, 0x10

    .line 138
    invoke-virtual {v7, v13}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 139
    invoke-virtual {v7}, Landroid/media/internal/exo/util/ParsableByteArray;->readLong()J

    move-result-wide v16

    move v4, v8

    move/from16 v18, v9

    move v3, v13

    move-wide/from16 v13, v16

    goto :goto_73

    :cond_58
    const-wide/16 v16, 0x0

    cmp-long v16, v13, v16

    if-nez v16, :cond_6f

    .line 142
    invoke-interface {v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v16

    cmp-long v18, v16, v3

    if-eqz v18, :cond_6f

    .line 144
    invoke-interface {v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v13

    sub-long v16, v16, v13

    int-to-long v13, v12

    add-long v13, v16, v13

    :cond_6f
    move v4, v8

    move/from16 v18, v9

    move v3, v12

    :goto_73
    int-to-long v8, v3

    cmp-long v19, v13, v8

    if-gez v19, :cond_79

    return v4

    :cond_79
    add-int v3, v18, v3

    move/from16 v18, v4

    const v4, 0x6d6f6f76

    if-ne v15, v4, :cond_92

    long-to-int v4, v13

    add-int/2addr v6, v4

    if-eqz v5, :cond_8c

    int-to-long v8, v6

    cmp-long v4, v8, v1

    if-lez v4, :cond_8c

    long-to-int v6, v1

    :cond_8c
    move v9, v3

    move/from16 v8, v18

    const-wide/16 v3, -0x1

    goto :goto_1f

    :cond_92
    const v4, 0x6d6f6f66

    if-eq v15, v4, :cond_f6

    const v4, 0x6d766578

    if-ne v15, v4, :cond_9d

    goto :goto_f6

    :cond_9d
    int-to-long v11, v3

    add-long/2addr v11, v13

    sub-long/2addr v11, v8

    move/from16 v20, v5

    int-to-long v4, v6

    cmp-long v4, v11, v4

    if-ltz v4, :cond_a8

    goto :goto_f8

    :cond_a8
    sub-long/2addr v13, v8

    long-to-int v5, v13

    add-int v9, v3, v5

    const v3, 0x66747970

    if-ne v15, v3, :cond_e8

    const/16 v4, 0x8

    if-ge v5, v4, :cond_b6

    return v18

    .line 184
    :cond_b6
    invoke-virtual {v7, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 185
    invoke-virtual {v7}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v3

    move/from16 v4, v18

    invoke-interface {v0, v3, v4, v5}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 186
    div-int/lit8 v5, v5, 0x4

    const/4 v3, 0x0

    :goto_c5
    if-ge v3, v5, :cond_e2

    const/4 v8, 0x1

    if-ne v3, v8, :cond_d1

    const/4 v8, 0x4

    .line 190
    invoke-virtual {v7, v8}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    move/from16 v11, p2

    goto :goto_df

    .line 191
    :cond_d1
    invoke-virtual {v7}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v8

    move/from16 v11, p2

    invoke-static {v8, v11}, Landroid/media/internal/exo/extractor/mp4/Sniffer;->isCompatibleBrand(IZ)Z

    move-result v8

    if-eqz v8, :cond_df

    const/4 v10, 0x1

    goto :goto_e4

    :cond_df
    :goto_df
    add-int/lit8 v3, v3, 0x1

    goto :goto_c5

    :cond_e2
    move/from16 v11, p2

    :goto_e4
    if-nez v10, :cond_ef

    const/4 v4, 0x0

    return v4

    :cond_e8
    move/from16 v11, p2

    if-eqz v5, :cond_ef

    .line 202
    invoke-interface {v0, v5}, Landroid/media/internal/exo/extractor/ExtractorInput;->advancePeekPosition(I)V

    :cond_ef
    move/from16 v5, v20

    const-wide/16 v3, -0x1

    const/4 v8, 0x0

    goto/16 :goto_1f

    :cond_f6
    :goto_f6
    const/4 v0, 0x1

    goto :goto_f9

    :cond_f8
    :goto_f8
    const/4 v0, 0x0

    :goto_f9
    if-eqz v10, :cond_102

    move/from16 v1, p1

    if-ne v1, v0, :cond_102

    const/16 v19, 0x1

    return v19

    :cond_102
    const/4 v4, 0x0

    return v4
.end method

.method public static blacklist sniffUnfragmented(Landroid/media/internal/exo/extractor/ExtractorInput;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0, p1}, Landroid/media/internal/exo/extractor/mp4/Sniffer;->sniffInternal(Landroid/media/internal/exo/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method
