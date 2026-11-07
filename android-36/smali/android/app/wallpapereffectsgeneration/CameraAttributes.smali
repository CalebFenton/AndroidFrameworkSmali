.class public final Landroid/app/wallpapereffectsgeneration/CameraAttributes;
.super Ljava/lang/Object;
.source "CameraAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/wallpapereffectsgeneration/CameraAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAnchorPointInOutputUvSpace:[F

.field private blacklist mAnchorPointInWorldSpace:[F

.field private blacklist mCameraOrbitPitchDegrees:F

.field private blacklist mCameraOrbitYawDegrees:F

.field private blacklist mDollyDistanceInWorldSpace:F

.field private blacklist mFrustumFarInWorldSpace:F

.field private blacklist mFrustumNearInWorldSpace:F

.field private blacklist mVerticalFovDegrees:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 166
    new-instance v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$1;

    invoke-direct {v0}, Landroid/app/wallpapereffectsgeneration/CameraAttributes$1;-><init>()V

    sput-object v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitYawDegrees:F

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitPitchDegrees:F

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mDollyDistanceInWorldSpace:F

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mVerticalFovDegrees:F

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumNearInWorldSpace:F

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumFarInWorldSpace:F

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInWorldSpace:[F

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInOutputUvSpace:[F

    .line 84
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/wallpapereffectsgeneration/CameraAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/wallpapereffectsgeneration/CameraAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([F[FFFFFFF)V
    .registers 9
    .param p1, "anchorPointInWorldSpace"    # [F
    .param p2, "anchorPointInOutputUvSpace"    # [F
    .param p3, "cameraOrbitYawDegrees"    # F
    .param p4, "cameraOrbitPitchDegrees"    # F
    .param p5, "dollyDistanceInWorldSpace"    # F
    .param p6, "verticalFovDegrees"    # F
    .param p7, "frustumNearInWorldSpace"    # F
    .param p8, "frustumFarInWorldSpace"    # F

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInWorldSpace:[F

    .line 91
    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInOutputUvSpace:[F

    .line 92
    iput p3, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitYawDegrees:F

    .line 93
    iput p4, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitPitchDegrees:F

    .line 94
    iput p5, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mDollyDistanceInWorldSpace:F

    .line 95
    iput p6, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mVerticalFovDegrees:F

    .line 96
    iput p7, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumNearInWorldSpace:F

    .line 97
    iput p8, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumFarInWorldSpace:F

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>([F[FFFFFFFLandroid/app/wallpapereffectsgeneration/CameraAttributes-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/app/wallpapereffectsgeneration/CameraAttributes;-><init>([F[FFFFFFF)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAnchorPointInOutputUvSpace()[F
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInOutputUvSpace:[F

    return-object v0
.end method

.method public whitelist getAnchorPointInWorldSpace()[F
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInWorldSpace:[F

    return-object v0
.end method

.method public whitelist getCameraOrbitPitchDegrees()F
    .registers 2

    .line 131
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitPitchDegrees:F

    return v0
.end method

.method public whitelist getCameraOrbitYawDegrees()F
    .registers 2

    .line 123
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitYawDegrees:F

    return v0
.end method

.method public whitelist getDollyDistanceInWorldSpace()F
    .registers 2

    .line 138
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mDollyDistanceInWorldSpace:F

    return v0
.end method

.method public whitelist getFrustumFarInWorldSpace()F
    .registers 2

    .line 162
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumFarInWorldSpace:F

    return v0
.end method

.method public whitelist getFrustumNearInWorldSpace()F
    .registers 2

    .line 154
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumNearInWorldSpace:F

    return v0
.end method

.method public whitelist getVerticalFovDegrees()F
    .registers 2

    .line 146
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mVerticalFovDegrees:F

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 180
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitYawDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 181
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitPitchDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 182
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mDollyDistanceInWorldSpace:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 183
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mVerticalFovDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 184
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumNearInWorldSpace:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 185
    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumFarInWorldSpace:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 186
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInWorldSpace:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 187
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInOutputUvSpace:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 188
    return-void
.end method
