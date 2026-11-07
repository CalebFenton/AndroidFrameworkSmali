.class public Landroid/graphics/pdf/logging/PdfEventLogger;
.super Ljava/lang/Object;
.source "PdfEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/logging/PdfEventLogger$ApiResponseTypes;,
        Landroid/graphics/pdf/logging/PdfEventLogger$ApiTypes;,
        Landroid/graphics/pdf/logging/PdfEventLogger$PdfLoadResults;,
        Landroid/graphics/pdf/logging/PdfEventLogger$LinearizationTypes;
    }
.end annotation


# instance fields
.field private final blacklist mDocId:J

.field private final blacklist mProcessId:I


# direct methods
.method public constructor blacklist <init>(IJ)V
    .registers 4
    .param p1, "processId"    # I
    .param p2, "docId"    # J

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroid/graphics/pdf/logging/PdfEventLogger;->mProcessId:I

    .line 43
    iput-wide p2, p0, Landroid/graphics/pdf/logging/PdfEventLogger;->mDocId:J

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist logPdfApiUsageReportedEvent(II)V
    .registers 9
    .param p1, "apiType"    # I
        .annotation runtime Landroid/graphics/pdf/logging/PdfEventLogger$ApiTypes$ApiType;
        .end annotation
    .end param
    .param p2, "apiResponse"    # I
        .annotation runtime Landroid/graphics/pdf/logging/PdfEventLogger$ApiResponseTypes$ApiResponseType;
        .end annotation
    .end param

    .line 98
    iget v1, p0, Landroid/graphics/pdf/logging/PdfEventLogger;->mProcessId:I

    iget-wide v2, p0, Landroid/graphics/pdf/logging/PdfEventLogger;->mDocId:J

    const/16 v0, 0x35c

    move v4, p1

    move v5, p2

    .end local p1    # "apiType":I
    .end local p2    # "apiResponse":I
    .local v4, "apiType":I
    .local v5, "apiResponse":I
    invoke-static/range {v0 .. v5}, Landroid/graphics/pdf/PdfStatsLog;->write(IIJII)V

    .line 100
    return-void
.end method

.method public blacklist logPdfLoadReportedEvent(JFIII)V
    .registers 17
    .param p1, "loadDurationMillis"    # J
    .param p3, "pdfSizeInKb"    # F
    .param p4, "pdfLoadResult"    # I
        .annotation runtime Landroid/graphics/pdf/logging/PdfEventLogger$PdfLoadResults$PdfLoadResult;
        .end annotation
    .end param
    .param p5, "linearizationType"    # I
        .annotation runtime Landroid/graphics/pdf/logging/PdfEventLogger$LinearizationTypes$LinearizationType;
        .end annotation
    .end param
    .param p6, "numPages"    # I

    .line 84
    iget v1, p0, Landroid/graphics/pdf/logging/PdfEventLogger;->mProcessId:I

    iget-wide v8, p0, Landroid/graphics/pdf/logging/PdfEventLogger;->mDocId:J

    const/16 v0, 0x35b

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-static/range {v0 .. v9}, Landroid/graphics/pdf/PdfStatsLog;->write(IIJFIIIJ)V

    .line 86
    return-void
.end method

.method public blacklist logSearchReportedEvent(JIIIII)V
    .registers 19
    .param p1, "loadDurationMillis"    # J
    .param p3, "queryLength"    # I
    .param p4, "queryPageNumber"    # I
    .param p5, "apiResponse"    # I
        .annotation runtime Landroid/graphics/pdf/logging/PdfEventLogger$ApiResponseTypes$ApiResponseType;
        .end annotation
    .end param
    .param p6, "numPages"    # I
    .param p7, "matchCount"    # I

    .line 64
    iget v1, p0, Landroid/graphics/pdf/logging/PdfEventLogger;->mProcessId:I

    iget-wide v7, p0, Landroid/graphics/pdf/logging/PdfEventLogger;->mDocId:J

    const/16 v0, 0x35d

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Landroid/graphics/pdf/PdfStatsLog;->write(IIJIIIJII)V

    .line 66
    return-void
.end method
