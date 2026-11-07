.class public final Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265SpsData"
.end annotation


# instance fields
.field public final blacklist constraintBytes:[I

.field public final blacklist generalLevelIdc:I

.field public final blacklist generalProfileCompatibilityFlags:I

.field public final blacklist generalProfileIdc:I

.field public final blacklist generalProfileSpace:I

.field public final blacklist generalTierFlag:Z

.field public final blacklist height:I

.field public final blacklist pixelWidthHeightRatio:F

.field public final blacklist seqParameterSetId:I

.field public final blacklist width:I


# direct methods
.method public constructor blacklist <init>(IZII[IIIIIF)V
    .registers 11

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    .line 102
    iput-boolean p2, p0, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    .line 103
    iput p3, p0, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    .line 104
    iput p4, p0, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    .line 105
    iput-object p5, p0, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->constraintBytes:[I

    .line 106
    iput p6, p0, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    .line 107
    iput p7, p0, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->seqParameterSetId:I

    .line 108
    iput p8, p0, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->width:I

    .line 109
    iput p9, p0, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->height:I

    .line 110
    iput p10, p0, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    return-void
.end method
