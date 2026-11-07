.class final Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Landroid/media/internal/exo/extractor/mkv/EbmlProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerEbmlProcessor"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;


# direct methods
.method private constructor blacklist <init>(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1863
    iput-object p1, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$1;)V
    .registers 3

    .line 1863
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;)V

    return-void
.end method


# virtual methods
.method public blacklist binaryElement(IILandroid/media/internal/exo/extractor/ExtractorInput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1904
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->binaryElement(IILandroid/media/internal/exo/extractor/ExtractorInput;)V

    return-void
.end method

.method public blacklist endMasterElement(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 1884
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->endMasterElement(I)V

    return-void
.end method

.method public blacklist floatElement(ID)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 1894
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->floatElement(ID)V

    return-void
.end method

.method public blacklist getElementType(I)I
    .registers 2

    .line 1868
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->getElementType(I)I

    move-result p0

    return p0
.end method

.method public blacklist integerElement(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 1889
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->integerElement(IJ)V

    return-void
.end method

.method public blacklist isLevel1Element(I)Z
    .registers 2

    .line 1873
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->isLevel1Element(I)Z

    move-result p0

    return p0
.end method

.method public blacklist startMasterElement(IJJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 1879
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;

    invoke-virtual/range {p0 .. p5}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->startMasterElement(IJJ)V

    return-void
.end method

.method public blacklist stringElement(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 1899
    iget-object p0, p0, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/exo/extractor/mkv/MatroskaExtractor;->stringElement(ILjava/lang/String;)V

    return-void
.end method
