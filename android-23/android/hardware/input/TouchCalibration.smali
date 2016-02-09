.class public Landroid/hardware/input/TouchCalibration;
.super Ljava/lang/Object;
.source "TouchCalibration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/TouchCalibration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/input/TouchCalibration;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDENTITY:Landroid/hardware/input/TouchCalibration;


# instance fields
.field private final mXOffset:F

.field private final mXScale:F

.field private final mXYMix:F

.field private final mYOffset:F

.field private final mYScale:F

.field private final mYXMix:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 29
    new-instance v0, Landroid/hardware/input/TouchCalibration;

    #@2
    invoke-direct {v0}, Landroid/hardware/input/TouchCalibration;-><init>()V

    #@5
    sput-object v0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    #@7
    .line 32
    new-instance v0, Landroid/hardware/input/TouchCalibration$1;

    #@9
    invoke-direct {v0}, Landroid/hardware/input/TouchCalibration$1;-><init>()V

    #@c
    .line 31
    sput-object v0, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    #@0
    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    const/4 v2, 0x0

    #@3
    move-object v0, p0

    #@4
    move v3, v2

    #@5
    move v4, v2

    #@6
    move v5, v1

    #@7
    move v6, v2

    #@8
    .line 49
    invoke-direct/range {v0 .. v6}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    #@b
    .line 48
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "xScale"    # F
    .param p2, "xyMix"    # F
    .param p3, "xOffset"    # F
    .param p4, "yxMix"    # F
    .param p5, "yScale"    # F
    .param p6, "yOffset"    # F

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput p1, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    #@5
    .line 64
    iput p2, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    #@7
    .line 65
    iput p3, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    #@9
    .line 66
    iput p4, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    #@b
    .line 67
    iput p5, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    #@d
    .line 68
    iput p6, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    #@f
    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    #@9
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    #@f
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    #@15
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    #@1b
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    #@21
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    #@27
    .line 71
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 92
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 101
    if-ne p1, p0, :cond_0

    #@4
    .line 102
    return v1

    #@5
    .line 103
    :cond_0
    instance-of v3, p1, Landroid/hardware/input/TouchCalibration;

    #@7
    if-eqz v3, :cond_3

    #@9
    move-object v0, p1

    #@a
    .line 104
    check-cast v0, Landroid/hardware/input/TouchCalibration;

    #@c
    .line 106
    .local v0, "cal":Landroid/hardware/input/TouchCalibration;
    iget v3, v0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    #@e
    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    #@10
    cmpl-float v3, v3, v4

    #@12
    if-nez v3, :cond_2

    #@14
    .line 107
    iget v3, v0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    #@16
    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    #@18
    cmpl-float v3, v3, v4

    #@1a
    if-nez v3, :cond_2

    #@1c
    .line 108
    iget v3, v0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    #@1e
    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    #@20
    cmpl-float v3, v3, v4

    #@22
    if-nez v3, :cond_2

    #@24
    .line 109
    iget v3, v0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    #@26
    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    #@28
    cmpl-float v3, v3, v4

    #@2a
    if-nez v3, :cond_2

    #@2c
    .line 110
    iget v3, v0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    #@2e
    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    #@30
    cmpl-float v3, v3, v4

    #@32
    if-nez v3, :cond_2

    #@34
    .line 111
    iget v3, v0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    #@36
    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    #@38
    cmpl-float v3, v3, v4

    #@3a
    if-nez v3, :cond_1

    #@3c
    .line 106
    :goto_0
    return v1

    #@3d
    :cond_1
    move v1, v2

    #@3e
    .line 111
    goto :goto_0

    #@3f
    :cond_2
    move v1, v2

    #@40
    .line 106
    goto :goto_0

    #@41
    .line 113
    .end local v0    # "cal":Landroid/hardware/input/TouchCalibration;
    :cond_3
    return v2
.end method

.method public getAffineTransform()[F
    .locals 3

    #@0
    .prologue
    .line 96
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [F

    #@3
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    #@5
    const/4 v2, 0x0

    #@6
    aput v1, v0, v2

    #@8
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    #@a
    const/4 v2, 0x1

    #@b
    aput v1, v0, v2

    #@d
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    #@f
    const/4 v2, 0x2

    #@10
    aput v1, v0, v2

    #@12
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    #@14
    const/4 v2, 0x3

    #@15
    aput v1, v0, v2

    #@17
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    #@19
    const/4 v2, 0x4

    #@1a
    aput v1, v0, v2

    #@1c
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    #@1e
    const/4 v2, 0x5

    #@1f
    aput v1, v0, v2

    #@21
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 119
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@5
    move-result v0

    #@6
    .line 120
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    #@8
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@b
    move-result v1

    #@c
    .line 119
    xor-int/2addr v0, v1

    #@d
    .line 121
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    #@f
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@12
    move-result v1

    #@13
    .line 119
    xor-int/2addr v0, v1

    #@14
    .line 122
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    #@16
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@19
    move-result v1

    #@1a
    .line 119
    xor-int/2addr v0, v1

    #@1b
    .line 123
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    #@1d
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@20
    move-result v1

    #@21
    .line 119
    xor-int/2addr v0, v1

    #@22
    .line 124
    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    #@24
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@27
    move-result v1

    #@28
    .line 119
    xor-int/2addr v0, v1

    #@29
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 82
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@5
    .line 83
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@a
    .line 84
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@f
    .line 85
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@14
    .line 86
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@19
    .line 87
    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@1e
    .line 81
    return-void
.end method
