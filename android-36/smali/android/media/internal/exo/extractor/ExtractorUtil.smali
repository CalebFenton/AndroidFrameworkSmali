.class public final Landroid/media/internal/exo/extractor/ExtractorUtil;
.super Ljava/lang/Object;
.source "ExtractorUtil.java"


# direct methods
.method public static blacklist checkContainerInput(ZLjava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    if-eqz p0, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 36
    invoke-static {p1, p0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist peekFullyQuietly(Landroid/media/internal/exo/extractor/ExtractorInput;[BIIZ)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/media/internal/exo/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p0
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    if-eqz p4, :cond_a

    const/4 p0, 0x0

    return p0

    .line 118
    :cond_a
    throw p0
.end method

.method public static blacklist peekToLength(Landroid/media/internal/exo/extractor/ExtractorInput;[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_11

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 57
    invoke-interface {p0, p1, v1, v2}, Landroid/media/internal/exo/extractor/ExtractorInput;->peek([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    goto :goto_11

    :cond_f
    add-int/2addr v0, v1

    goto :goto_1

    :cond_11
    :goto_11
    return v0
.end method

.method public static blacklist readFullyQuietly(Landroid/media/internal/exo/extractor/ExtractorInput;[BII)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/ExtractorInput;->readFully([BII)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist skipFullyQuietly(Landroid/media/internal/exo/extractor/ExtractorInput;I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/internal/exo/extractor/ExtractorInput;->skipFully(I)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method
