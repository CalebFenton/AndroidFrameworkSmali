.class final Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;
.super Ljava/lang/Object;
.source "CameraExtensionJpegProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JpegParameters"
.end annotation


# instance fields
.field public blacklist mQuality:I

.field public blacklist mRotation:I

.field public blacklist mTimeStamps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mTimeStamps:Ljava/util/HashSet;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mRotation:I

    .line 72
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mQuality:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;-><init>()V

    return-void
.end method
