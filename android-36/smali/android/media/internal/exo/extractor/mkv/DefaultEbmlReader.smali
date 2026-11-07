.class final Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/mkv/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;
    }
.end annotation


# instance fields
.field private blacklist elementContentSize:J

.field private blacklist elementId:I

.field private blacklist elementState:I

.field private final blacklist masterElementsStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist processor:Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;

.field private final blacklist scratch:[B

.field private final blacklist varintReader:Landroid/media/internal/exo/extractor/mkv/VarintReader;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 61
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->scratch:[B

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    .line 63
    new-instance v0, Landroid/media/internal/exo/extractor/mkv/VarintReader;

    invoke-direct {v0}, Landroid/media/internal/exo/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->varintReader:Landroid/media/internal/exo/extractor/mkv/VarintReader;

    return-void
.end method

.method private blacklist maybeResyncToNextLevel1Element(Landroid/media/internal/exo/extractor/ExtractorInput;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->resetPeekPosition()V

    .line 169
    :goto_3
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BII)V

    .line 170
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Landroid/media/internal/exo/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2b

    if-gt v0, v2, :cond_2b

    .line 172
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-static {v2, v0, v1}, Landroid/media/internal/exo/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 173
    iget-object v2, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->processor:Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;

    invoke-interface {v2, v1}, Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;->isLevel1Element(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 174
    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    int-to-long p0, v1

    return-wide p0

    :cond_2b
    const/4 v0, 0x1

    .line 178
    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_3
.end method

.method private blacklist readFloat(Landroid/media/internal/exo/extractor/ExtractorInput;I)D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1, p2}, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->readInteger(Landroid/media/internal/exo/extractor/ExtractorInput;I)J

    move-result-wide p0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_e

    long-to-int p0, p0

    .line 211
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    .line 213
    :cond_e
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist readInteger(Landroid/media/internal/exo/extractor/ExtractorInput;I)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    const-wide/16 v2, 0x0

    :goto_8
    if-ge v1, p2, :cond_18

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 194
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-wide v2
.end method

.method private static blacklist readString(Landroid/media/internal/exo/extractor/ExtractorInput;I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_5

    .line 229
    const-string p0, ""

    return-object p0

    .line 231
    :cond_5
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 232
    invoke-interface {p0, v0, v1, p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V

    :goto_b
    if-lez p1, :cond_16

    add-int/lit8 p0, p1, -0x1

    .line 235
    aget-byte p0, v0, p0

    if-nez p0, :cond_16

    add-int/lit8 p1, p1, -0x1

    goto :goto_b

    .line 238
    :cond_16
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ljava/lang/String;-><init>([BII)V

    return-object p0
.end method


# virtual methods
.method public blacklist init(Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;)V
    .registers 2

    .line 68
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->processor:Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;

    return-void
.end method

.method public blacklist read(Landroid/media/internal/exo/extractor/ExtractorInput;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->processor:Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :goto_5
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;

    const/4 v1, 0x1

    if-eqz v0, :cond_2e

    .line 83
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    # getter for: Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J
    invoke-static {v0}, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;->access$000(Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2e

    .line 84
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->processor:Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;

    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;

    # getter for: Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I
    invoke-static {p0}, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;->access$100(Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;->endMasterElement(I)V

    return v1

    .line 88
    :cond_2e
    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementState:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_50

    .line 89
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->varintReader:Landroid/media/internal/exo/extractor/mkv/VarintReader;

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/media/internal/exo/extractor/mkv/VarintReader;->readUnsignedVarint(Landroid/media/internal/exo/extractor/ExtractorInput;ZZI)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_44

    .line 91
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->maybeResyncToNextLevel1Element(Landroid/media/internal/exo/extractor/ExtractorInput;)J

    move-result-wide v4

    :cond_44
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4b

    return v3

    :cond_4b
    long-to-int v0, v4

    .line 97
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementId:I

    .line 98
    iput v1, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 101
    :cond_50
    iget v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementState:I

    const/4 v4, 0x2

    if-ne v0, v1, :cond_61

    .line 102
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->varintReader:Landroid/media/internal/exo/extractor/mkv/VarintReader;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v3, v1, v5}, Landroid/media/internal/exo/extractor/mkv/VarintReader;->readUnsignedVarint(Landroid/media/internal/exo/extractor/ExtractorInput;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    .line 103
    iput v4, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 106
    :cond_61
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->processor:Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;

    iget v5, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-interface {v0, v5}, Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;->getElementType(I)I

    move-result v0

    if-eqz v0, :cond_14d

    const/4 v5, 0x0

    if-eq v0, v1, :cond_12e

    const-wide/16 v6, 0x8

    if-eq v0, v4, :cond_101

    const/4 v4, 0x3

    if-eq v0, v4, :cond_d1

    if-eq v0, v2, :cond_c4

    const/4 v2, 0x5

    if-ne v0, v2, :cond_ae

    .line 124
    iget-wide v8, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v10, 0x4

    cmp-long v0, v8, v10

    if-eqz v0, :cond_9f

    cmp-long v0, v8, v6

    if-nez v0, :cond_87

    goto :goto_9f

    .line 126
    :cond_87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid float size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 129
    :cond_9f
    :goto_9f
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->processor:Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;

    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v4, v8

    invoke-direct {p0, p1, v4}, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->readFloat(Landroid/media/internal/exo/extractor/ExtractorInput;I)D

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;->floatElement(ID)V

    .line 130
    iput v3, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v1

    .line 149
    :cond_ae
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid element type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 141
    :cond_c4
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->processor:Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;

    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-interface {v0, v2, v4, p1}, Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;->binaryElement(IILandroid/media/internal/exo/extractor/ExtractorInput;)V

    .line 142
    iput v3, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v1

    .line 133
    :cond_d1
    iget-wide v6, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v6, v8

    if-gtz v0, :cond_e9

    .line 137
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->processor:Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;

    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v4, v6

    invoke-static {p1, v4}, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->readString(Landroid/media/internal/exo/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;->stringElement(ILjava/lang/String;)V

    .line 138
    iput v3, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v1

    .line 134
    :cond_e9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "String element size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 116
    :cond_101
    iget-wide v8, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v8, v6

    if-gtz v0, :cond_116

    .line 120
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->processor:Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;

    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v4, v8

    invoke-direct {p0, p1, v4}, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->readInteger(Landroid/media/internal/exo/extractor/ExtractorInput;I)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;->integerElement(IJ)V

    .line 121
    iput v3, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v1

    .line 117
    :cond_116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid integer size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 109
    :cond_12e
    invoke-interface {p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    .line 110
    iget-wide v8, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long/2addr v8, v6

    .line 111
    iget-object p1, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    new-instance v0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v2, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-direct {v0, v2, v8, v9, v5}, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJLandroid/media/internal/exo/extractor/mkv/DefaultEbmlReader$1;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 112
    iget-object v4, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->processor:Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;

    iget v5, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v8, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-interface/range {v4 .. v9}, Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;->startMasterElement(IJJ)V

    .line 113
    iput v3, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementState:I

    return v1

    .line 145
    :cond_14d
    iget-wide v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V

    .line 146
    iput v3, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_5
.end method

.method public blacklist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 74
    iget-object v0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 75
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/DefaultEbmlReader;->varintReader:Landroid/media/internal/exo/extractor/mkv/VarintReader;

    invoke-virtual {p0}, Landroid/media/internal/exo/extractor/mkv/VarintReader;->reset()V

    return-void
.end method
