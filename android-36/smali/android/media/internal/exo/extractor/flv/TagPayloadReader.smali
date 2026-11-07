.class abstract Landroid/media/internal/exo/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field protected final blacklist output:Landroid/media/internal/exo/extractor/TrackOutput;


# direct methods
.method protected constructor blacklist <init>(Landroid/media/internal/exo/extractor/TrackOutput;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->output:Landroid/media/internal/exo/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public final blacklist consume(Landroid/media/internal/exo/util/ParsableByteArray;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->parseHeader(Landroid/media/internal/exo/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/flv/TagPayloadReader;->parsePayload(Landroid/media/internal/exo/util/ParsableByteArray;J)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method protected abstract blacklist parseHeader(Landroid/media/internal/exo/util/ParsableByteArray;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation
.end method

.method protected abstract blacklist parsePayload(Landroid/media/internal/exo/util/ParsableByteArray;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation
.end method
