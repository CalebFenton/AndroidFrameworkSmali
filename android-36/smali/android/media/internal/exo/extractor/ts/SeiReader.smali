.class public final Landroid/media/internal/exo/extractor/ts/SeiReader;
.super Ljava/lang/Object;
.source "SeiReader.java"


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

.field private final blacklist outputs:[Landroid/media/internal/exo/extractor/TrackOutput;


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/internal/exo/Format;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/SeiReader;->closedCaptionFormats:Ljava/util/List;

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/media/internal/exo/extractor/TrackOutput;

    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/SeiReader;->outputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public blacklist consume(JLandroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 4

    .line 67
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/SeiReader;->outputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    invoke-static {p1, p2, p3, p0}, Landroid/media/internal/exo/extractor/CeaUtil;->consume(JLandroid/media/internal/exo/util/ParsableByteArray;[Landroid/media/internal/exo/extractor/TrackOutput;)V

    return-void
.end method

.method public blacklist createTracks(Landroid/media/internal/exo/extractor/ExtractorOutput;Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    .line 43
    :goto_2
    iget-object v2, p0, Landroid/media/internal/exo/extractor/ts/SeiReader;->outputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    array-length v2, v2

    if-ge v1, v2, :cond_81

    .line 44
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 45
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Landroid/media/internal/exo/extractor/ExtractorOutput;->track(II)Landroid/media/internal/exo/extractor/TrackOutput;

    move-result-object v2

    .line 46
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/SeiReader;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/internal/exo/Format;

    .line 47
    iget-object v4, v3, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    .line 48
    const-string v5, "application/cea-608"

    .line 49
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    const-string v5, "application/cea-708"

    .line 50
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    goto :goto_30

    :cond_2e
    move v5, v0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v5, 0x1

    :goto_31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid closed caption mime type provided: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-static {v5, v6}, Landroid/media/internal/exo/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 52
    iget-object v5, v3, Landroid/media/internal/exo/Format;->id:Ljava/lang/String;

    if-eqz v5, :cond_4a

    goto :goto_4e

    :cond_4a
    invoke-virtual {p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v5

    .line 53
    :goto_4e
    new-instance v6, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v6}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 55
    invoke-virtual {v6, v5}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v5

    .line 56
    invoke-virtual {v5, v4}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    iget v5, v3, Landroid/media/internal/exo/Format;->selectionFlags:I

    .line 57
    invoke-virtual {v4, v5}, Landroid/media/internal/exo/Format$Builder;->setSelectionFlags(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    iget-object v5, v3, Landroid/media/internal/exo/Format;->language:Ljava/lang/String;

    .line 58
    invoke-virtual {v4, v5}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    iget v5, v3, Landroid/media/internal/exo/Format;->accessibilityChannel:I

    .line 59
    invoke-virtual {v4, v5}, Landroid/media/internal/exo/Format$Builder;->setAccessibilityChannel(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object v4

    iget-object v3, v3, Landroid/media/internal/exo/Format;->initializationData:Ljava/util/List;

    .line 60
    invoke-virtual {v4, v3}, Landroid/media/internal/exo/Format$Builder;->setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v3

    .line 53
    invoke-interface {v2, v3}, Landroid/media/internal/exo/extractor/TrackOutput;->format(Landroid/media/internal/exo/Format;)V

    .line 62
    iget-object v3, p0, Landroid/media/internal/exo/extractor/ts/SeiReader;->outputs:[Landroid/media/internal/exo/extractor/TrackOutput;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_81
    return-void
.end method
