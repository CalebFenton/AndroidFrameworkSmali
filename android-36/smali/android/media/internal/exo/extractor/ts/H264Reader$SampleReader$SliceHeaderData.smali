.class final Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SliceHeaderData"
.end annotation


# instance fields
.field private blacklist bottomFieldFlag:Z

.field private blacklist bottomFieldFlagPresent:Z

.field private blacklist deltaPicOrderCnt0:I

.field private blacklist deltaPicOrderCnt1:I

.field private blacklist deltaPicOrderCntBottom:I

.field private blacklist fieldPicFlag:Z

.field private blacklist frameNum:I

.field private blacklist hasSliceType:Z

.field private blacklist idrPicFlag:Z

.field private blacklist idrPicId:I

.field private blacklist isComplete:Z

.field private blacklist nalRefIdc:I

.field private blacklist picOrderCntLsb:I

.field private blacklist picParameterSetId:I

.field private blacklist sliceType:I

.field private blacklist spsData:Landroid/media/internal/exo/util/NalUnitUtil$SpsData;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/internal/exo/extractor/ts/H264Reader$1;)V
    .registers 2

    .line 510
    invoke-direct {p0}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z
    .registers 2

    .line 510
    invoke-direct {p0, p1}, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isFirstVclNalUnitOfPicture(Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result p0

    return p0
.end method

.method private blacklist isFirstVclNalUnitOfPicture(Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z
    .registers 8

    .line 581
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 584
    :cond_6
    iget-boolean v0, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    const/4 v2, 0x1

    if-nez v0, :cond_c

    return v2

    .line 588
    :cond_c
    iget-object v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroid/media/internal/exo/util/NalUnitUtil$SpsData;

    invoke-static {v0}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;

    .line 589
    iget-object v3, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroid/media/internal/exo/util/NalUnitUtil$SpsData;

    invoke-static {v3}, Landroid/media/internal/exo/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;

    .line 590
    iget v4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    iget v5, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    if-ne v4, v5, :cond_7c

    iget v4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    iget v5, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    if-ne v4, v5, :cond_7c

    iget-boolean v4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    iget-boolean v5, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    if-ne v4, v5, :cond_7c

    iget-boolean v4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v4, :cond_3c

    iget-boolean v4, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v4, :cond_3c

    iget-boolean v4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    iget-boolean v5, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    if-ne v4, v5, :cond_7c

    :cond_3c
    iget v4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    iget v5, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    if-eq v4, v5, :cond_46

    if-eqz v4, :cond_7c

    if-eqz v5, :cond_7c

    :cond_46
    iget v0, v0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v0, :cond_5a

    iget v4, v3, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v4, :cond_5a

    iget v4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    iget v5, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    if-ne v4, v5, :cond_7c

    iget v4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    iget v5, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    if-ne v4, v5, :cond_7c

    :cond_5a
    if-ne v0, v2, :cond_6c

    iget v0, v3, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v0, v2, :cond_6c

    iget v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    iget v3, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    if-ne v0, v3, :cond_7c

    iget v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    iget v3, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    if-ne v0, v3, :cond_7c

    :cond_6c
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    iget-boolean v3, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    if-ne v0, v3, :cond_7c

    if-eqz v0, :cond_7b

    iget p0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    iget p1, p1, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    if-eq p0, p1, :cond_7b

    goto :goto_7c

    :cond_7b
    return v1

    :cond_7c
    :goto_7c
    return v2
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    const/4 v0, 0x0

    .line 534
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    .line 535
    iput-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    return-void
.end method

.method public blacklist isISlice()Z
    .registers 2

    .line 577
    iget-boolean v0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    if-eqz v0, :cond_e

    iget p0, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    const/4 v0, 0x7

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setAll(Landroid/media/internal/exo/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V
    .registers 15

    .line 558
    iput-object p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroid/media/internal/exo/util/NalUnitUtil$SpsData;

    .line 559
    iput p2, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    .line 560
    iput p3, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    .line 561
    iput p4, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    .line 562
    iput p5, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    .line 563
    iput-boolean p6, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    .line 564
    iput-boolean p7, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    .line 565
    iput-boolean p8, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    .line 566
    iput-boolean p9, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    .line 567
    iput p10, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    .line 568
    iput p11, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    .line 569
    iput p12, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    .line 570
    iput p13, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    .line 571
    iput p14, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    const/4 p1, 0x1

    .line 572
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    .line 573
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    return-void
.end method

.method public blacklist setSliceType(I)V
    .registers 2

    .line 539
    iput p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    const/4 p1, 0x1

    .line 540
    iput-boolean p1, p0, Landroid/media/internal/exo/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    return-void
.end method
