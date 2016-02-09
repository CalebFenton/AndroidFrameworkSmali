.class public final Landroid/telecom/VideoProfile$CameraCapabilities;
.super Ljava/lang/Object;
.source "VideoProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoProfile$CameraCapabilities$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/VideoProfile$CameraCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHeight:I

.field private final mMaxZoom:F

.field private final mWidth:I

.field private final mZoomSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 367
    new-instance v0, Landroid/telecom/VideoProfile$CameraCapabilities$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/VideoProfile$CameraCapabilities$1;-><init>()V

    #@5
    .line 366
    sput-object v0, Landroid/telecom/VideoProfile$CameraCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 314
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 343
    const/4 v0, 0x0

    #@1
    const/high16 v1, 0x3f800000    # 1.0f

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    #@6
    .line 342
    return-void
.end method

.method public constructor <init>(IIZF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "zoomSupported"    # Z
    .param p4, "maxZoom"    # F

    #@0
    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 357
    iput p1, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mWidth:I

    #@5
    .line 358
    iput p2, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mHeight:I

    #@7
    .line 359
    iput-boolean p3, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mZoomSupported:Z

    #@9
    .line 360
    iput p4, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mMaxZoom:F

    #@b
    .line 356
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 399
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 428
    iget v0, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mHeight:I

    #@2
    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    #@0
    .prologue
    .line 444
    iget v0, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mMaxZoom:F

    #@2
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 421
    iget v0, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mWidth:I

    #@2
    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    #@0
    .prologue
    .line 436
    iget-boolean v0, p0, Landroid/telecom/VideoProfile$CameraCapabilities;->mZoomSupported:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/telecom/VideoProfile$CameraCapabilities;->getWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 412
    invoke-virtual {p0}, Landroid/telecom/VideoProfile$CameraCapabilities;->getHeight()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 413
    invoke-virtual {p0}, Landroid/telecom/VideoProfile$CameraCapabilities;->isZoomSupported()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    const/4 v0, 0x1

    #@15
    :goto_0
    int-to-byte v0, v0

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@19
    .line 414
    invoke-virtual {p0}, Landroid/telecom/VideoProfile$CameraCapabilities;->getMaxZoom()F

    #@1c
    move-result v0

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@20
    .line 410
    return-void

    #@21
    .line 413
    :cond_0
    const/4 v0, 0x0

    #@22
    goto :goto_0
.end method
