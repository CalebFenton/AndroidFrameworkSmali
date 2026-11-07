.class public final Landroid/window/PictureInPictureSurfaceTransaction;
.super Ljava/lang/Object;
.source "PictureInPictureSurfaceTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/PictureInPictureSurfaceTransaction$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/PictureInPictureSurfaceTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NOT_SET:F = -1.0f


# instance fields
.field public final blacklist mAlpha:F

.field public final blacklist mCornerRadius:F

.field public final blacklist mFloat9:[F

.field public final blacklist mPosition:Landroid/graphics/PointF;

.field public final blacklist mRotation:F

.field public final blacklist mShadowRadius:F

.field private blacklist mShouldDisableCanAffectSystemUiFlags:Z

.field private final blacklist mWindowCrop:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 200
    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction$1;

    invoke-direct {v0}, Landroid/window/PictureInPictureSurfaceTransaction$1;-><init>()V

    sput-object v0, Landroid/window/PictureInPictureSurfaceTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;)V
    .registers 10
    .param p1, "alpha"    # F
    .param p2, "position"    # Landroid/graphics/PointF;
    .param p3, "float9"    # [F
    .param p4, "rotation"    # F
    .param p5, "cornerRadius"    # F
    .param p6, "shadowRadius"    # F
    .param p7, "windowCrop"    # Landroid/graphics/Rect;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    .line 72
    iput-object p2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    .line 73
    const/16 v0, 0x9

    if-nez p3, :cond_1a

    .line 74
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    .line 75
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    goto :goto_22

    .line 78
    :cond_1a
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    .line 79
    iput p4, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    .line 81
    :goto_22
    iput p5, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    .line 82
    iput p6, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    .line 83
    if-nez p7, :cond_2a

    const/4 v0, 0x0

    goto :goto_2f

    :cond_2a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_2f
    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    .line 84
    return-void
.end method

.method synthetic constructor blacklist <init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;Landroid/window/PictureInPictureSurfaceTransaction-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    .line 58
    sget-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    .line 60
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    .line 64
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/PictureInPictureSurfaceTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/PictureInPictureSurfaceTransaction;)V
    .registers 10
    .param p1, "other"    # Landroid/window/PictureInPictureSurfaceTransaction;

    .line 87
    iget v1, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    iget-object v2, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget-object v3, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    iget v4, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    iget v5, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    iget v6, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    iget-object v7, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(FLandroid/graphics/PointF;[FFFFLandroid/graphics/Rect;)V

    .line 90
    iget-boolean v1, p1, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    iput-boolean v1, v0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    .line 91
    return-void
.end method

.method public static blacklist apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p0, "surfaceTransaction"    # Landroid/window/PictureInPictureSurfaceTransaction;
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "tx"    # Landroid/view/SurfaceControl$Transaction;

    .line 179
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 180
    .local v0, "matrix":Landroid/graphics/Matrix;
    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 181
    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    if-eqz v1, :cond_1a

    .line 182
    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 185
    :cond_1a
    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    if-eqz v1, :cond_23

    .line 186
    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 188
    :cond_23
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->hasCornerRadiusSet()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 189
    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 191
    :cond_2e
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->hasShadowRadiusSet()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 192
    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 194
    :cond_39
    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_46

    .line 195
    iget v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 197
    :cond_46
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 123
    :cond_4
    instance-of v1, p1, Landroid/window/PictureInPictureSurfaceTransaction;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 124
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/window/PictureInPictureSurfaceTransaction;

    .line 125
    .local v1, "that":Landroid/window/PictureInPictureSurfaceTransaction;
    iget v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget-object v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    .line 126
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    iget-object v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    .line 127
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    .line 128
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    .line 129
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    .line 130
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    .line 131
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-boolean v3, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    iget-boolean v4, v1, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    if-ne v3, v4, :cond_7a

    goto :goto_7b

    :cond_7a
    move v0, v2

    .line 125
    :goto_7b
    return v0
.end method

.method public blacklist getMatrix()Landroid/graphics/Matrix;
    .registers 3

    .line 95
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 96
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 97
    return-object v0
.end method

.method public blacklist getShouldDisableCanAffectSystemUiFlags()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    return v0
.end method

.method public blacklist hasCornerRadiusSet()Z
    .registers 3

    .line 102
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public blacklist hasShadowRadiusSet()Z
    .registers 3

    .line 107
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 138
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    .line 139
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    .line 140
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 138
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setShouldDisableCanAffectSystemUiFlags(Z)V
    .registers 2
    .param p1, "shouldDisable"    # Z

    .line 112
    iput-boolean p1, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    .line 113
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 162
    invoke-virtual {p0}, Landroid/window/PictureInPictureSurfaceTransaction;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 163
    .local v0, "matrix":Landroid/graphics/Matrix;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PictureInPictureSurfaceTransaction( alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " matrix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cornerRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shadowRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " crop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shouldDisableCanAffectSystemUiFlags"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 150
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 151
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 152
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mFloat9:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 153
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 154
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 155
    iget v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShadowRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 156
    iget-object v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 157
    iget-boolean v0, p0, Landroid/window/PictureInPictureSurfaceTransaction;->mShouldDisableCanAffectSystemUiFlags:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 158
    return-void
.end method
