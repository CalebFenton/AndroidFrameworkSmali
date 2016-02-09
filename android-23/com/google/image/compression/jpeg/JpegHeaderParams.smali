.class public Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;
.super Ljava/lang/Object;
.source "JpegHeaderParams.java"


# instance fields
.field private headerLength:I

.field private height:I

.field private quality:I

.field private qualityAlgorithm:I

.field private variant:I

.field private width:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 3
    .param p1, "variant"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "quality"    # I
    .param p5, "qualityAlgorithm"    # I
    .param p6, "headerLength"    # I

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    if-nez p5, :cond_1

    #@5
    .line 72
    :cond_0
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->variant:I

    #@7
    .line 73
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->width:I

    #@9
    .line 74
    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->height:I

    #@b
    .line 75
    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->quality:I

    #@d
    .line 76
    iput p5, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->qualityAlgorithm:I

    #@f
    .line 77
    iput p6, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->headerLength:I

    #@11
    .line 78
    return-void

    #@12
    :cond_1
    const/4 v0, 0x1

    #@13
    .line 67
    if-eq p5, v0, :cond_0

    #@15
    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "qualityAlgorithm = "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 98
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->height:I

    #@2
    return v0
.end method

.method public getQuality()I
    .locals 1

    #@0
    .prologue
    .line 105
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->quality:I

    #@2
    return v0
.end method

.method public getQualityAlgorithm()I
    .locals 1

    #@0
    .prologue
    .line 112
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->qualityAlgorithm:I

    #@2
    return v0
.end method

.method public getVariant()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->variant:I

    #@2
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 91
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->width:I

    #@2
    return v0
.end method
