.class final Landroid/media/internal/exo/extractor/mp4/SefReader;
.super Ljava/lang/Object;
.source "SefReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/mp4/SefReader$DataReference;
    }
.end annotation


# static fields
.field private static final blacklist ASTERISK_SPLITTER:Landroid/media/internal/guava_common/base/Splitter;

.field private static final blacklist COLON_SPLITTER:Landroid/media/internal/guava_common/base/Splitter;


# instance fields
.field private final blacklist dataReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/internal/exo/extractor/mp4/SefReader$DataReference;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist readerState:I

.field private blacklist tailLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x3a

    .line 92
    invoke-static {v0}, Landroid/media/internal/guava_common/base/Splitter;->on(C)Landroid/media/internal/guava_common/base/Splitter;

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/extractor/mp4/SefReader;->COLON_SPLITTER:Landroid/media/internal/guava_common/base/Splitter;

    const/16 v0, 0x2a

    .line 93
    invoke-static {v0}, Landroid/media/internal/guava_common/base/Splitter;->on(C)Landroid/media/internal/guava_common/base/Splitter;

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Landroid/media/internal/guava_common/base/Splitter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->readerState:I

    return-void
.end method

.method private blacklist checkForSefData(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance v0, Landroid/media/internal/exo/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 143
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 144
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->tailLength:I

    .line 145
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    const v1, 0x53454654

    if-eq v0, v1, :cond_24

    const-wide/16 p0, 0x0

    .line 146
    iput-wide p0, p2, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    return-void

    .line 152
    :cond_24
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget p1, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 p1, p1, -0xc

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p2, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    const/4 p1, 0x2

    .line 153
    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->readerState:I

    return-void
.end method

.method private static blacklist nameToDataType(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5c

    goto :goto_42

    :sswitch_c
    const-string v1, "Super_SlowMotion_BGM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_42

    :cond_15
    const/4 v0, 0x4

    goto :goto_42

    :sswitch_17
    const-string v1, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_42

    :cond_20
    const/4 v0, 0x3

    goto :goto_42

    :sswitch_22
    const-string v1, "Super_SlowMotion_Data"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v0, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v1, "Super_SlowMotion_Edit_Data"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_42

    :cond_36
    const/4 v0, 0x1

    goto :goto_42

    :sswitch_38
    const-string v1, "SlowMotion_Data"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    packed-switch v0, :pswitch_data_72

    .line 263
    const-string p0, "Invalid SEF name"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :pswitch_4d
    const/16 p0, 0xb01

    return p0

    :pswitch_50
    const/16 p0, 0xb04

    return p0

    :pswitch_53
    const/16 p0, 0xb00

    return p0

    :pswitch_56
    const/16 p0, 0xb03

    return p0

    :pswitch_59
    const/16 p0, 0x890

    return p0

    :sswitch_data_5c
    .sparse-switch
        -0x6604662e -> :sswitch_38
        -0x4f6659e5 -> :sswitch_2d
        -0x4a96a712 -> :sswitch_22
        -0x3182f331 -> :sswitch_17
        0x68f2d704 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
    .end packed-switch
.end method

.method private blacklist readSdrs(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    .line 158
    iget v2, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v2, v2, -0x14

    .line 159
    new-instance v3, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v3, v2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 160
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    move p1, v5

    .line 162
    :goto_16
    div-int/lit8 v4, v2, 0xc

    if-ge p1, v4, :cond_58

    const/4 v4, 0x2

    .line 163
    invoke-virtual {v3, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 164
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v4

    const/16 v6, 0x890

    if-eq v4, v6, :cond_3c

    const/16 v6, 0xb00

    if-eq v4, v6, :cond_3c

    const/16 v6, 0xb01

    if-eq v4, v6, :cond_3c

    const/16 v6, 0xb03

    if-eq v4, v6, :cond_3c

    const/16 v6, 0xb04

    if-eq v4, v6, :cond_3c

    const/16 v4, 0x8

    .line 178
    invoke-virtual {v3, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_55

    .line 173
    :cond_3c
    iget v6, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->tailLength:I

    int-to-long v6, v6

    sub-long v6, v0, v6

    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    .line 174
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    .line 175
    iget-object v9, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    new-instance v10, Landroid/media/internal/exo/extractor/mp4/SefReader$DataReference;

    invoke-direct {v10, v4, v6, v7, v8}, Landroid/media/internal/exo/extractor/mp4/SefReader$DataReference;-><init>(IJI)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_55
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    .line 182
    :cond_58
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_65

    const-wide/16 p0, 0x0

    .line 183
    iput-wide p0, p2, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    return-void

    :cond_65
    const/4 p1, 0x3

    .line 187
    iput p1, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->readerState:I

    .line 188
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/exo/extractor/mp4/SefReader$DataReference;

    iget-wide p0, p0, Landroid/media/internal/exo/extractor/mp4/SefReader$DataReference;->startOffset:J

    iput-wide p0, p2, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    return-void
.end method

.method private blacklist readSefData(Landroid/media/internal/exo/extractor/ExtractorInput;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/extractor/ExtractorInput;",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 194
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget v4, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->tailLength:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 195
    new-instance v3, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v3, v2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>(I)V

    .line 196
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    .line 198
    :goto_1f
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_70

    .line 199
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/internal/exo/extractor/mp4/SefReader$DataReference;

    .line 200
    iget-wide v6, p1, Landroid/media/internal/exo/extractor/mp4/SefReader$DataReference;->startOffset:J

    sub-long/2addr v6, v0

    long-to-int v2, v6

    .line 201
    invoke-virtual {v3, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const/4 v2, 0x4

    .line 205
    invoke-virtual {v3, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 206
    invoke-virtual {v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    .line 207
    invoke-virtual {v3, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-static {v4}, Landroid/media/internal/exo/extractor/mp4/SefReader;->nameToDataType(Ljava/lang/String;)I

    move-result v4

    .line 210
    iget p1, p1, Landroid/media/internal/exo/extractor/mp4/SefReader$DataReference;->size:I

    add-int/lit8 v2, v2, 0x8

    sub-int/2addr p1, v2

    const/16 v2, 0x890

    if-eq v4, v2, :cond_66

    const/16 p1, 0xb00

    if-eq v4, p1, :cond_6d

    const/16 p1, 0xb01

    if-eq v4, p1, :cond_6d

    const/16 p1, 0xb03

    if-eq v4, p1, :cond_6d

    const/16 p1, 0xb04

    if-ne v4, p1, :cond_60

    goto :goto_6d

    .line 221
    :cond_60
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 213
    :cond_66
    invoke-static {v3, p1}, Landroid/media/internal/exo/extractor/mp4/SefReader;->readSlowMotionData(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/mp4/SlowMotionData;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6d
    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_70
    return-void
.end method

.method private static blacklist readSlowMotionData(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/mp4/SlowMotionData;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p0

    .line 230
    sget-object p1, Landroid/media/internal/exo/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Landroid/media/internal/guava_common/base/Splitter;

    invoke-virtual {p1, p0}, Landroid/media/internal/guava_common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    move v1, p1

    .line 231
    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_65

    .line 232
    sget-object v2, Landroid/media/internal/exo/extractor/mp4/SefReader;->COLON_SPLITTER:Landroid/media/internal/guava_common/base/Splitter;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/media/internal/guava_common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    .line 233
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_60

    .line 237
    :try_start_2b
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v3, 0x1

    .line 238
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v4, 0x2

    .line 239
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v3

    shl-int v11, v3, v2

    .line 241
    new-instance v6, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;

    invoke-direct/range {v6 .. v11}, Landroid/media/internal/exo/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_56} :catch_59

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :catch_59
    move-exception v0

    move-object p0, v0

    .line 243
    invoke-static {v5, p0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 234
    :cond_60
    invoke-static {v5, v5}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 246
    :cond_65
    new-instance p0, Landroid/media/internal/exo/metadata/mp4/SlowMotionData;

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/mp4/SlowMotionData;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/exo/extractor/ExtractorInput;",
            "Landroid/media/internal/exo/extractor/PositionHolder;",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/metadata/Metadata$Entry;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget v0, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->readerState:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_23

    if-eq v0, v3, :cond_1f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1b

    const/4 v4, 0x3

    if-ne v0, v4, :cond_15

    .line 131
    invoke-direct {p0, p1, p3}, Landroid/media/internal/exo/extractor/mp4/SefReader;->readSefData(Landroid/media/internal/exo/extractor/ExtractorInput;Ljava/util/List;)V

    .line 132
    iput-wide v1, p2, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    goto :goto_3a

    .line 135
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 128
    :cond_1b
    invoke-direct {p0, p1, p2}, Landroid/media/internal/exo/extractor/mp4/SefReader;->readSdrs(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)V

    goto :goto_3a

    .line 125
    :cond_1f
    invoke-direct {p0, p1, p2}, Landroid/media/internal/exo/extractor/mp4/SefReader;->checkForSefData(Landroid/media/internal/exo/extractor/ExtractorInput;Landroid/media/internal/exo/extractor/PositionHolder;)V

    goto :goto_3a

    .line 117
    :cond_23
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_36

    const-wide/16 v6, 0x8

    cmp-long p1, v4, v6

    if-gez p1, :cond_34

    goto :goto_36

    :cond_34
    sub-long v1, v4, v6

    .line 121
    :cond_36
    :goto_36
    iput-wide v1, p2, Landroid/media/internal/exo/extractor/PositionHolder;->position:J

    .line 122
    iput v3, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->readerState:I

    :goto_3a
    return v3
.end method

.method public blacklist reset()V
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->dataReferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Landroid/media/internal/exo/extractor/mp4/SefReader;->readerState:I

    return-void
.end method
