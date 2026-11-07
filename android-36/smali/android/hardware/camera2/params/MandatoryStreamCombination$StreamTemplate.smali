.class final Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;
.super Ljava/lang/Object;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamTemplate"
.end annotation


# instance fields
.field public blacklist mFormat:I

.field public blacklist mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

.field public blacklist mStreamUseCase:J


# direct methods
.method public constructor blacklist <init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V
    .registers 5
    .param p1, "format"    # I
    .param p2, "sizeThreshold"    # Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    .line 478
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    .line 479
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V
    .registers 5
    .param p1, "format"    # I
    .param p2, "sizeThreshold"    # Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;
    .param p3, "streamUseCase"    # J

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput p1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mFormat:I

    .line 483
    iput-object p2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mSizeThreshold:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    .line 484
    iput-wide p3, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;->mStreamUseCase:J

    .line 485
    return-void
.end method
