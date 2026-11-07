.class public final Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/ts/TsPayloadReader$Factory;


# instance fields
.field private final blacklist closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/internal/exo/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist flags:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3

    .line 113
    invoke-static {}, Landroid/media/internal/guava_common/collect/ImmutableList;->of()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/Format;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 128
    iput-object p2, p0, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-void
.end method

.method private blacklist buildSeiReader(Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;)Landroid/media/internal/exo/extractor/ts/SeiReader;
    .registers 3

    .line 203
    new-instance v0, Landroid/media/internal/exo/extractor/ts/SeiReader;

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/media/internal/exo/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private blacklist buildUserDataReader(Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;)Landroid/media/internal/exo/extractor/ts/UserDataReader;
    .registers 3

    .line 216
    new-instance v0, Landroid/media/internal/exo/extractor/ts/UserDataReader;

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/media/internal/exo/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private blacklist getClosedCaptionFormats(Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/Format;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 229
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 230
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-object p0

    .line 232
    :cond_b
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    iget-object p1, p1, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    invoke-direct {v0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([B)V

    .line 233
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 234
    :goto_14
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-lez p1, :cond_8e

    .line 235
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 236
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 237
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int/2addr v2, v1

    const/16 v1, 0x86

    if-ne p1, v1, :cond_8a

    .line 240
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x0

    move v3, v1

    :goto_38
    if-ge v3, p1, :cond_8a

    const/4 v4, 0x3

    .line 243
    invoke-virtual {v0, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit16 v6, v5, 0x80

    const/4 v7, 0x1

    if-eqz v6, :cond_4a

    move v6, v7

    goto :goto_4b

    :cond_4a
    move v6, v1

    :goto_4b
    if-eqz v6, :cond_52

    and-int/lit8 v5, v5, 0x3f

    .line 250
    const-string v8, "application/cea-708"

    goto :goto_55

    .line 253
    :cond_52
    const-string v8, "application/cea-608"

    move v5, v7

    .line 257
    :goto_55
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    int-to-byte v9, v9

    .line 259
    invoke-virtual {v0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    if-eqz v6, :cond_6a

    and-int/lit8 v6, v9, 0x40

    if-eqz v6, :cond_64

    goto :goto_65

    :cond_64
    move v7, v1

    .line 266
    :goto_65
    invoke-static {v7}, Landroid/media/internal/exo/util/CodecSpecificDataUtil;->buildCea708InitializationData(Z)Ljava/util/List;

    move-result-object v6

    goto :goto_6b

    :cond_6a
    const/4 v6, 0x0

    .line 269
    :goto_6b
    new-instance v7, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v7}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 271
    invoke-virtual {v7, v8}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v7

    .line 272
    invoke-virtual {v7, v4}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    .line 273
    invoke-virtual {v4, v5}, Landroid/media/internal/exo/Format$Builder;->setAccessibilityChannel(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    .line 274
    invoke-virtual {v4, v6}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    .line 275
    invoke-virtual {v4}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v4

    .line 269
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 280
    :cond_8a
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    goto :goto_14

    :cond_8e
    return-object p0
.end method

.method private blacklist isSet(I)Z
    .registers 2

    .line 287
    iget p0, p0, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist createInitialPayloadReaders()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/media/internal/exo/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method

.method public blacklist createPayloadReader(ILandroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;)Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
    .registers 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_115

    const/4 v1, 0x3

    if-eq p1, v1, :cond_108

    const/4 v1, 0x4

    if-eq p1, v1, :cond_108

    const/16 v2, 0x15

    if-eq p1, v2, :cond_fd

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_dc

    const/16 v1, 0x24

    if-eq p1, v1, :cond_cd

    const/16 v1, 0x59

    if-eq p1, v1, :cond_c0

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_b3

    const/16 v1, 0xac

    if-eq p1, v1, :cond_a6

    const/16 v1, 0x101

    if-eq p1, v1, :cond_99

    const/16 v1, 0x86

    if-eq p1, v1, :cond_83

    const/16 v1, 0x87

    if-eq p1, v1, :cond_76

    packed-switch p1, :pswitch_data_124

    packed-switch p1, :pswitch_data_12e

    return-object v3

    :pswitch_35
    const/16 p1, 0x40

    .line 157
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    if-nez p0, :cond_b3

    return-object v3

    .line 148
    :pswitch_3e
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_45

    return-object v3

    .line 150
    :cond_45
    new-instance p0, Landroid/media/internal/exo/extractor/ts/PesReader;

    new-instance p1, Landroid/media/internal/exo/extractor/ts/LatmReader;

    iget-object p2, p2, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/media/internal/exo/extractor/ts/LatmReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/PesReader;-><init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 167
    :pswitch_52
    new-instance p1, Landroid/media/internal/exo/extractor/ts/PesReader;

    new-instance v0, Landroid/media/internal/exo/extractor/ts/H263Reader;

    invoke-direct {p0, p2}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;)Landroid/media/internal/exo/extractor/ts/UserDataReader;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/media/internal/exo/extractor/ts/H263Reader;-><init>(Landroid/media/internal/exo/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Landroid/media/internal/exo/extractor/ts/PesReader;-><init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 144
    :pswitch_61
    invoke-direct {p0, v0}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_68

    return-object v3

    .line 146
    :cond_68
    new-instance p0, Landroid/media/internal/exo/extractor/ts/PesReader;

    new-instance p1, Landroid/media/internal/exo/extractor/ts/AdtsReader;

    const/4 v0, 0x0

    iget-object p2, p2, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Landroid/media/internal/exo/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/PesReader;-><init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 153
    :cond_76
    :pswitch_76
    new-instance p0, Landroid/media/internal/exo/extractor/ts/PesReader;

    new-instance p1, Landroid/media/internal/exo/extractor/ts/Ac3Reader;

    iget-object p2, p2, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/media/internal/exo/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/PesReader;-><init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    :cond_83
    const/16 p1, 0x10

    .line 179
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_8c

    return-object v3

    .line 181
    :cond_8c
    new-instance p0, Landroid/media/internal/exo/extractor/ts/SectionReader;

    new-instance p1, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;

    const-string p2, "application/x-scte35"

    invoke-direct {p1, p2}, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/SectionReader;-><init>(Landroid/media/internal/exo/extractor/ts/SectionPayloadReader;)V

    return-object p0

    .line 187
    :cond_99
    new-instance p0, Landroid/media/internal/exo/extractor/ts/SectionReader;

    new-instance p1, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;

    const-string p2, "application/vnd.dvb.ait"

    invoke-direct {p1, p2}, Landroid/media/internal/exo/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/SectionReader;-><init>(Landroid/media/internal/exo/extractor/ts/SectionPayloadReader;)V

    return-object p0

    .line 155
    :cond_a6
    new-instance p0, Landroid/media/internal/exo/extractor/ts/PesReader;

    new-instance p1, Landroid/media/internal/exo/extractor/ts/Ac4Reader;

    iget-object p2, p2, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/media/internal/exo/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/PesReader;-><init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 162
    :cond_b3
    new-instance p0, Landroid/media/internal/exo/extractor/ts/PesReader;

    new-instance p1, Landroid/media/internal/exo/extractor/ts/DtsReader;

    iget-object p2, p2, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/media/internal/exo/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/PesReader;-><init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 185
    :cond_c0
    new-instance p0, Landroid/media/internal/exo/extractor/ts/PesReader;

    new-instance p1, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;

    iget-object p2, p2, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {p1, p2}, Landroid/media/internal/exo/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/PesReader;-><init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 177
    :cond_cd
    new-instance p1, Landroid/media/internal/exo/extractor/ts/PesReader;

    new-instance v0, Landroid/media/internal/exo/extractor/ts/H265Reader;

    invoke-direct {p0, p2}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;)Landroid/media/internal/exo/extractor/ts/SeiReader;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/media/internal/exo/extractor/ts/H265Reader;-><init>(Landroid/media/internal/exo/extractor/ts/SeiReader;)V

    invoke-direct {p1, v0}, Landroid/media/internal/exo/extractor/ts/PesReader;-><init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 169
    :cond_dc
    invoke-direct {p0, v1}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_e3

    return-object v3

    .line 171
    :cond_e3
    new-instance p1, Landroid/media/internal/exo/extractor/ts/PesReader;

    new-instance v0, Landroid/media/internal/exo/extractor/ts/H264Reader;

    .line 173
    invoke-direct {p0, p2}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;)Landroid/media/internal/exo/extractor/ts/SeiReader;

    move-result-object p2

    const/4 v1, 0x1

    .line 174
    invoke-direct {p0, v1}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    const/16 v2, 0x8

    .line 175
    invoke-direct {p0, v2}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p0

    invoke-direct {v0, p2, v1, p0}, Landroid/media/internal/exo/extractor/ts/H264Reader;-><init>(Landroid/media/internal/exo/extractor/ts/SeiReader;ZZ)V

    invoke-direct {p1, v0}, Landroid/media/internal/exo/extractor/ts/PesReader;-><init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 183
    :cond_fd
    new-instance p0, Landroid/media/internal/exo/extractor/ts/PesReader;

    new-instance p1, Landroid/media/internal/exo/extractor/ts/Id3Reader;

    invoke-direct {p1}, Landroid/media/internal/exo/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/PesReader;-><init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 142
    :cond_108
    new-instance p0, Landroid/media/internal/exo/extractor/ts/PesReader;

    new-instance p1, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;

    iget-object p2, p2, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/media/internal/exo/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/PesReader;-><init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;)V

    return-object p0

    .line 165
    :cond_115
    :pswitch_115
    new-instance p1, Landroid/media/internal/exo/extractor/ts/PesReader;

    new-instance v0, Landroid/media/internal/exo/extractor/ts/H262Reader;

    invoke-direct {p0, p2}, Landroid/media/internal/exo/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Landroid/media/internal/exo/extractor/ts/TsPayloadReader$EsInfo;)Landroid/media/internal/exo/extractor/ts/UserDataReader;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/media/internal/exo/extractor/ts/H262Reader;-><init>(Landroid/media/internal/exo/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Landroid/media/internal/exo/extractor/ts/PesReader;-><init>(Landroid/media/internal/exo/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    :pswitch_data_124
    .packed-switch 0xf
        :pswitch_61
        :pswitch_52
        :pswitch_3e
    .end packed-switch

    :pswitch_data_12e
    .packed-switch 0x80
        :pswitch_115
        :pswitch_76
        :pswitch_35
    .end packed-switch
.end method
