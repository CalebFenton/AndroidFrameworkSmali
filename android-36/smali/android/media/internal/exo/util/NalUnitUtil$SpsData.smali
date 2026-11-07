.class public final Landroid/media/internal/exo/util/NalUnitUtil$SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpsData"
.end annotation


# instance fields
.field public final blacklist constraintsFlagsAndReservedZero2Bits:I

.field public final blacklist deltaPicOrderAlwaysZeroFlag:Z

.field public final blacklist frameMbsOnlyFlag:Z

.field public final blacklist frameNumLength:I

.field public final blacklist height:I

.field public final blacklist levelIdc:I

.field public final blacklist picOrderCntLsbLength:I

.field public final blacklist picOrderCountType:I

.field public final blacklist pixelWidthHeightRatio:F

.field public final blacklist profileIdc:I

.field public final blacklist separateColorPlaneFlag:Z

.field public final blacklist seqParameterSetId:I

.field public final blacklist width:I


# direct methods
.method public constructor blacklist <init>(IIIIIIFZZIIIZ)V
    .registers 14

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->profileIdc:I

    .line 61
    iput p2, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    .line 62
    iput p3, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->levelIdc:I

    .line 63
    iput p4, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    .line 64
    iput p5, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->width:I

    .line 65
    iput p6, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->height:I

    .line 66
    iput p7, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    .line 67
    iput-boolean p8, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    .line 68
    iput-boolean p9, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    .line 69
    iput p10, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->frameNumLength:I

    .line 70
    iput p11, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->picOrderCountType:I

    .line 71
    iput p12, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    .line 72
    iput-boolean p13, p0, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    return-void
.end method
