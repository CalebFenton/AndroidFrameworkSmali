.class public final Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackIdGenerator"
.end annotation


# instance fields
.field private final blacklist firstTrackId:I

.field private blacklist formatId:Ljava/lang/String;

.field private final blacklist formatIdPrefix:Ljava/lang/String;

.field private blacklist trackId:I

.field private final blacklist trackIdIncrement:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 4

    const/high16 v0, -0x80000000

    .line 123
    invoke-direct {p0, v0, p1, p2}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 7

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string v0, ""

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    move-object p1, v0

    :goto_1c
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatIdPrefix:Ljava/lang/String;

    .line 128
    iput p2, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->firstTrackId:I

    .line 129
    iput p3, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackIdIncrement:I

    .line 130
    iput v1, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    .line 131
    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    return-void
.end method

.method private blacklist maybeThrowUninitializedError()V
    .registers 2

    .line 168
    iget p0, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_7

    return-void

    .line 169
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "generateNewId() must be called before retrieving ids."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist generateNewId()V
    .registers 3

    .line 139
    iget v0, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->firstTrackId:I

    goto :goto_c

    :cond_9
    iget v1, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackIdIncrement:I

    add-int/2addr v0, v1

    :goto_c
    iput v0, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatIdPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    return-void
.end method

.method public blacklist getFormatId()Ljava/lang/String;
    .registers 1

    .line 163
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    .line 164
    iget-object p0, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getTrackId()I
    .registers 1

    .line 150
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    .line 151
    iget p0, p0, Landroid/media/internal/exo/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    return p0
.end method
